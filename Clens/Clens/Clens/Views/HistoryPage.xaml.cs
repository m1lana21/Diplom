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

namespace Clens
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class HistoryPage : ContentPage
    {
        private readonly FirebaseService _firebaseService;
        private ObservableCollection<HistoryItem> _allHistoryItems = new ObservableCollection<HistoryItem>();
        private ObservableCollection<HistoryItem> _filteredHistoryItems = new ObservableCollection<HistoryItem>();
        private DateTime? _selectedDate;
        private string _selectedType;

        public HistoryPage()
        {
            InitializeComponent();
            _firebaseService = new FirebaseService();

            HistoryListView.ItemsSource = _filteredHistoryItems;
            BindingContext = this;

            SearchTypePicker.SelectedIndex = -1; // Сброс выбора типа линз
            _ = LoadHistoryItems();

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

                ApplyFilters();
                UpdateVisibility();
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", ex.Message, "OK");
                UpdateVisibility();
            }
        }

        private void SearchDateButton_Clicked(object sender, EventArgs e)
        {
            try
            {
                hiddenDatePicker.Focus();


            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Ошибка: {ex.Message}");
            }
        }

        private void SearchTypePicker_SelectedIndexChanged(object sender, EventArgs e)
        {
            _selectedType = SearchTypePicker.SelectedIndex == -1 ? null : SearchTypePicker.SelectedItem.ToString();
            ApplyFilters();
        }

        private void ClearSearchButton_Clicked(object sender, EventArgs e)
        {
            _selectedDate = null;
            _selectedType = null;
            SearchTypePicker.SelectedIndex = -1;
            ApplyFilters();
        }

        private void ApplyFilters()
        {
            _filteredHistoryItems.Clear();

            var filtered = _allHistoryItems.AsEnumerable();

            if (_selectedDate.HasValue)
            {
                filtered = filtered.Where(item =>
                {
                    if (item.StartDateParsed.HasValue && item.EndDateParsed.HasValue)
                    {
                        return item.StartDateParsed.Value.Date == _selectedDate.Value.Date ||
                               item.EndDateParsed.Value.Date == _selectedDate.Value.Date;
                    }
                    return false;
                });
            }

            if (!string.IsNullOrEmpty(_selectedType))
            {
                filtered = filtered.Where(item => item.Type == _selectedType);
            }

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
            _selectedDate = e.NewDate;
            ApplyFilters();
            hiddenDatePicker.Unfocus();
        }
    }
}