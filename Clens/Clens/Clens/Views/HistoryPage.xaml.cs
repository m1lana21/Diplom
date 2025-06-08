using System;
using System.Diagnostics;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Firebase.Database;
using System.Globalization;
using Rg.Plugins.Popup.Services;
using Xamarin.Essentials;
using System.Collections.ObjectModel;
using System.Linq;
using System.Collections.Generic;
using Firebase.Database.Query;

namespace Clens
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class HistoryPage : ContentPage
    {
        private FirebaseClient _firebaseClient;
        private readonly ObservableCollection<string> _allFirms = new ObservableCollection<string>();
        private readonly FirebaseService _firebaseService;
        private ObservableCollection<HistoryItem> _allHistoryItems = new ObservableCollection<HistoryItem>();
        private ObservableCollection<HistoryItem> _filteredHistoryItems = new ObservableCollection<HistoryItem>();
        private DateTime? _selectedDate;
        private string _selectedType;
        private string _selectedFirm;
        private bool _dateWasSelected = false;

        public HistoryPage()
        {
            InitializeComponent();
            _firebaseService = new FirebaseService();

            HistoryListView.ItemsSource = _filteredHistoryItems;
            BindingContext = this;
            hiddenDatePicker.DateSelected += hiddenDatePicker_DateSelected;
            SearchTypePicker.SelectedIndex = -1;
            SearchFirmPicker.SelectedIndex = -1;
            dateEntry.Text = "Выберите дату";
            _ = LoadHistoryItems();
            LoadFirms().ConfigureAwait(false);
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            _ = LoadHistoryItems();
        }

        private async Task LoadHistoryItems()
        {
            try
            {
                var items = await _firebaseService.GetHistoryItems();

                _allHistoryItems.Clear();
                foreach (var item in items.OrderByDescending(i => i.StartDateParsed))
                {
                    _allHistoryItems.Add(item);
                }

                // Заполняем пикер фирм уникальными значениями
                var uniqueFirms = _allHistoryItems
                    .Where(i => !string.IsNullOrEmpty(i.LensesFirm))
                    .Select(i => i.LensesFirm)
                    .Distinct()
                    .OrderBy(f => f)
                    .ToList();

                ApplyFilters();
                UpdateVisibility();
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", ex.Message, "OK");
            }
        }

        private void SearchTypePicker_SelectedIndexChanged(object sender, EventArgs e)
        {
            _selectedType = SearchTypePicker.SelectedIndex == -1 ? null : SearchTypePicker.SelectedItem.ToString();
            ApplyFilters();
        }

        private void ClearSearchButton_Clicked(object sender, EventArgs e)
        {
            _dateWasSelected = false;
            _selectedDate = null;
            hiddenDatePicker.Date = DateTime.Today; // Сбрасываем на текущую дату (или можно сделать null, если поддерживается)
            _selectedType = null;
            dateEntry.Text = "Выберите дату"; // Очищаем Entry
            _selectedFirm = null;
            SearchTypePicker.SelectedIndex = -1;
            SearchFirmPicker.SelectedIndex = -1;
            ApplyFilters();
        }

        private void ApplyFilters()
        {
            _filteredHistoryItems.Clear();

            var filtered = _allHistoryItems.AsEnumerable();

            // Фильтрация по дате (если выбрана)
            if (_selectedDate.HasValue && dateEntry.Text != "Выберите дату" && _dateWasSelected)
            {
                filtered = filtered.Where(item =>
                    item.StartDateParsed.HasValue &&
                    item.EndDateParsed.HasValue &&
                    _selectedDate.Value.Date >= item.StartDateParsed.Value.Date &&
                    _selectedDate.Value.Date <= item.EndDateParsed.Value.Date
                );
            }

            // Фильтрация по типу линз (если выбран)
            if (!string.IsNullOrEmpty(_selectedType))
            {
                filtered = filtered.Where(item => item.Type == _selectedType);
            }

            // Фильтрация по фирме линз (если выбрана)
            if (!string.IsNullOrEmpty(_selectedFirm))
            {
                filtered = filtered.Where(item =>
                    _selectedFirm == "Без фирмы"
                        ? string.IsNullOrEmpty(item.LensesFirm)
                        : item.LensesFirm == _selectedFirm
                );
            }

            // Добавляем отфильтрованные элементы
            foreach (var item in filtered)
            {
                _filteredHistoryItems.Add(item);
            }

            UpdateVisibility();
        }

        private void UpdateVisibility()
        {
            bool hasItems = _filteredHistoryItems.Any();
            bool hasAllItems = _allHistoryItems.Any();

            Device.BeginInvokeOnMainThread(() =>
            {
                HistoryListView.IsVisible = hasItems;
                EmptyStateLayout.IsVisible = !hasItems;

                if (!hasItems && hasAllItems)
                {
                    EmptyStateLayout.Children[1] = new Label
                    {
                        Text = "Нет записей по выбранным критериям",
                        FontSize = 20,
                        TextColor = Color.Gray,
                        HorizontalOptions = LayoutOptions.Center,
                        VerticalOptions = LayoutOptions.Center,
                        HorizontalTextAlignment = TextAlignment.Center
                    };
                }
                else if (!hasItems)
                {
                    EmptyStateLayout.Children[1] = new Label
                    {
                        Text = "Ваша история носки линз пока пуста",
                        FontSize = 20,
                        TextColor = Color.Gray,
                        HorizontalOptions = LayoutOptions.Center,
                        VerticalOptions = LayoutOptions.Center,
                        HorizontalTextAlignment = TextAlignment.Center
                    };
                }
            });
        }

        public class HistoryItem
        {
            public string Id { get; set; }
            public string EndDate { get; set; }
            public string StartDate { get; set; }
            public string Type { get; set; }
            public string LensesFirm { get; set; }

            public DateTime? StartDateParsed => DateTime.TryParseExact(StartDate, "dd MMMM yyyy",
                CultureInfo.GetCultureInfo("ru-RU"), DateTimeStyles.None, out var parsedDate)
                ? parsedDate
                : (DateTime?)null;

            public DateTime? EndDateParsed => DateTime.TryParseExact(EndDate, "dd MMMM yyyy",
                CultureInfo.GetCultureInfo("ru-RU"), DateTimeStyles.None, out var parsedDate)
                ? parsedDate
                : (DateTime?)null;

            public string WearingDuration =>
                StartDateParsed.HasValue && EndDateParsed.HasValue
                    ? (EndDateParsed.Value - StartDateParsed.Value).Days.ToString()
                    : "Не высчитывается";
        }

        private async void editButton_Clicked(object sender, EventArgs e)
        {
            if (sender is ImageButton button && button.BindingContext is HistoryItem historyItem)
            {
                var myPopup = new EditPage(historyItem);
                myPopup.ItemEdited += async () => await LoadHistoryItems();
                await PopupNavigation.Instance.PushAsync(myPopup);
            }
        }

        private async void deleteButton_Clicked(object sender, EventArgs e)
        {
            if (sender is ImageButton button && button.BindingContext is HistoryItem historyItem)
            {
                bool confirm = await DisplayAlert("Подтверждение",
                    "Вы уверены, что хотите удалить этот элемент?", "Да", "Нет");

                if (confirm)
                {
                    await _firebaseService.DeleteHistoryItem(historyItem);
                    await LoadHistoryItems();
                }
            }
        }

        private void hiddenDatePicker_DateSelected(object sender, DateChangedEventArgs e)
        {
            Debug.WriteLine("DATE SELECTED");
            _dateWasSelected = true;
           
            if (!_selectedDate.HasValue || _selectedDate.Value.Date != e.NewDate.Date)
            {
                _selectedDate = e.NewDate;
                if (hiddenDatePicker.Date == DateTime.Today)
                {
                    _selectedDate = DateTime.Today;
                    dateEntry.Text = DateTime.Today.ToString("dd MMMM yyyy", CultureInfo.GetCultureInfo("ru-RU"));
                }
                    dateEntry.Text = e.NewDate.ToString("dd MMMM yyyy", CultureInfo.GetCultureInfo("ru-RU"));
                ApplyFilters();
            }
            hiddenDatePicker.Unfocus();
        }

        private void SearchFirmPicker_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (SearchFirmPicker.SelectedIndex == 0) // "Без фирмы"
            {
                _selectedFirm = "Без фирмы";
            }
            else if (SearchFirmPicker.SelectedIndex == -1) // Ничего не выбрано
            {
                _selectedFirm = null;
            }
            else // Выбрана конкретная фирма
            {
                _selectedFirm = SearchFirmPicker.SelectedItem?.ToString();
            }

            Debug.WriteLine($"Selected firm: {_selectedFirm ?? "null"}");
            ApplyFilters();
        }

        private void OnDateEntryTapped(object sender, EventArgs e)
        {
            _dateWasSelected = false;
            hiddenDatePicker.Focus();
        }

        private async Task LoadFirms()
        {

            try
            {
                _firebaseClient = new FirebaseClient("https://clensdatabase-default-rtdb.firebaseio.com/");

                _allFirms.Add("Без фирмы");

                // Стандартные фирмы
                var standardFirms = new List<string> { "ACUVUE", "Dailies", "Air Optix Aqua", "Biomedics", "Proclear", "PureVision", "Biotrue" };
                foreach (var firm in standardFirms) _allFirms.Add(firm);

                // Пользовательские фирмы
                var userUid = await new FirebaseService().GetUserUidAsync();
                var customFirms = await _firebaseClient
                    .Child("Users")
                    .Child(userUid)
                    .Child("CustomFirms")
                    .OnceSingleAsync<Dictionary<string, string>>();

                if (customFirms != null)
                {
                    foreach (var firm in customFirms.Values.Where(f => !_allFirms.Contains(f)))
                        _allFirms.Add(firm);
                }

                // Установка ItemsSource и SelectedItem
                Device.BeginInvokeOnMainThread(() =>
                {
                    SearchFirmPicker.ItemsSource = _allFirms;
                });
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Ошибка загрузки фирм: {ex.Message}");
            }
        }
    }
}