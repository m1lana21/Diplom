using System;
using System.Collections.Generic;
using System.Linq;
using Firebase.Database;
using Rg.Plugins.Popup.Pages;
using Rg.Plugins.Popup.Services;
using Xamarin.Forms.Xaml;
using Firebase.Database.Query;
using static Clens.HistoryPage;
using Xamarin.Forms;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Threading.Tasks;

namespace Clens
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class EditPage : PopupPage
    {
        private HistoryItem selectedItem;
        private FirebaseClient _firebaseClient;
        private readonly ObservableCollection<string> _allFirms = new ObservableCollection<string>();
        public event Action ItemEdited;

        public EditPage(HistoryItem item)
        {
            InitializeComponent();
            selectedItem = item;
            _firebaseClient = new FirebaseClient("https://clensdatabase-default-rtdb.firebaseio.com/");

            // Инициализация пикера типа линз
            lensTypePicker.SelectedItem = selectedItem.Type;

            // Инициализация дат
            startDate.Date = selectedItem.StartDateParsed ?? DateTime.Now;
            endDate.Date = selectedItem.EndDateParsed ?? DateTime.Now;

            // Загрузка фирм линз
            LoadFirms().ConfigureAwait(false);
        }

        private async Task LoadFirms()
        {
            try
            {
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
                    lensFirmPicker.ItemsSource = _allFirms;

                    // Теперь устанавливаем выбранное значение ПОСЛЕ загрузки данных
                    if (!string.IsNullOrEmpty(selectedItem.LensesFirm))
                    {
                        lensFirmPicker.SelectedItem = selectedItem.LensesFirm;
                    }
                    else
                    {
                        lensFirmPicker.SelectedItem = "Без фирмы";
                    }
                });
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Ошибка загрузки фирм: {ex.Message}");
            }
        }

        private async void saveButton_Clicked(object sender, EventArgs e)
        {
            try
            {
                var itemKey = selectedItem.Id;
                var firebaseService = new FirebaseService();
                string userUid = await firebaseService.GetUserUidAsync();

                selectedItem.Type = lensTypePicker.SelectedItem?.ToString();

                selectedItem.LensesFirm = lensFirmPicker.SelectedItem?.ToString() == "Без фирмы"
                    ? null
                    : lensFirmPicker.SelectedItem?.ToString();

                selectedItem.StartDate = startDate.Date.ToString("dd MMMM yyyy");
                selectedItem.EndDate = endDate.Date.ToString("dd MMMM yyyy");

                if (startDate.Date > endDate.Date)
                {
                    await DisplayAlert("Ошибка", "Начальная дата не должна превышать дату окончания", "Ок");
                    return;
                }

                var itemToSave = new
                {
                    Type = selectedItem.Type,
                    StartDate = selectedItem.StartDate,
                    EndDate = selectedItem.EndDate,
                    LensesFirm = selectedItem.LensesFirm
                };

                await _firebaseClient
                    .Child("Users")
                    .Child(userUid)
                    .Child("History")
                    .Child(itemKey)
                    .PutAsync(itemToSave);

                ItemEdited?.Invoke();
                await PopupNavigation.Instance.PopAsync(true);
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", $"Не удалось сохранить изменения: {ex.Message}", "Ок");
            }
        }

        private async void cancelLabel_Tapped(object sender, EventArgs e)
        {
            await PopupNavigation.Instance.PopAsync(true);
        }
    }
}