using System;
using Xamarin.Forms;
using Xamarin.Essentials;
using Firebase.Database;
using System.Threading.Tasks;
using System.Globalization;
using Firebase.Database.Query;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Diagnostics;
using Plugin.LocalNotification;
using System.Security.Cryptography;
using Xamarin.Forms.PlatformConfiguration;
using Acr.UserDialogs.Infrastructure;
using System.Collections.Generic;
using Rg.Plugins.Popup.Services;
using Xamarin.Forms.PlatformConfiguration.iOSSpecific;
using System.Collections.ObjectModel;
using Rg.Plugins.Popup.Pages;

namespace Clens
{
    public partial class LensesPage : ContentPage
    {
        private const string LastSavedKey = "LastSaved";
        private const string StartDateKey = "StartDate";
        private const string StartDateKeyForPush = "StartDateForPush";
        private const string EndDateKey = "EndDate";
        private const string TypeKey = "TypeKey";
        private readonly object firebase;
        private bool _notificationSent = false;

        public LensesPage()
        {
            InitializeComponent();
            LoadSavedData();

            if (startDate == null)
            {
                startDate.Date = DateTime.Now.Date;
            }
            else
            {
                lensTypePicker.SelectedItem = Preferences.Get(TypeKey, string.Empty);
            }

            

            
            UpdateRemoveButtonState();
        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();
            await LoadSelectedFirm();
            await LoadCustomFirms();
        }

        private void LoadSavedData()
        {
            if (Preferences.ContainsKey(StartDateKey))
            {
                string savedStartDate = Preferences.Get(StartDateKey, DateTime.Now.ToString());
                startDate.Date = DateTime.Parse(savedStartDate, new CultureInfo("ru-RU"));
            }
            else
            {
                startDate.Date = DateTime.Now;
            }

            if (Preferences.ContainsKey(EndDateKey))
            {
                string savedEndDate = Preferences.Get(EndDateKey, string.Empty);
                endDate.Text = savedEndDate;
            }
            else
            {
                endDate.Text = null;
                EndDateStackLayout.IsVisible = false; 
            }
        }


        private void UpdateEndDate(DateTime startDateValue, string selectedLensType)
        {
            DateTime expectedEndDateValue;

            switch (selectedLensType)
            {
                case "Однодневные":
                    expectedEndDateValue = startDateValue.AddDays(1);
                    break;
                case "Двухнедельные":
                    expectedEndDateValue = startDateValue.AddDays(14);
                    break;
                case "Одномесячные":
                    expectedEndDateValue = startDateValue.AddMonths(1);
                    break;
                case "Полугодовые":
                    expectedEndDateValue = startDateValue.AddMonths(6);
                    break;
                case "Годовые":
                    expectedEndDateValue = startDateValue.AddYears(1);
                    break;
                default:
                    expectedEndDateValue = startDateValue;
                    break;
            }

            string endDateString = expectedEndDateValue.ToString("dd MMMM yyyy", new CultureInfo("ru-RU"));
            endDate.Text = endDateString;

            countTimeLabel.Text = $"{(expectedEndDateValue - DateTime.Today).Days}";
            countTimeLabel.IsVisible = true;
            timeMeasurementLabel.IsVisible = true;
            nullDataLabel.IsVisible = false;
            resetLensesLabel.IsVisible = true;
            EndDateStackLayout.IsVisible = true;

            if (Convert.ToInt32(countTimeLabel.Text) <= 0)
            {
                nullDataLabel.Text = "Пора сменить линзы!";
                Debug.WriteLine($"Дней осталось: {countTimeLabel.Text}");
                nullDataLabel.FontSize = 24;
                nullDataLabel.IsVisible = true;
                countTimeLabel.IsVisible = false;
                timeMeasurementLabel.IsVisible = false;
                resetLensesLabel.IsVisible = false;

            }
            NotificationCenter.Current.Cancel(1234);
            StartLensCheckService();
            Preferences.Set(StartDateKey, startDateValue.ToString("dd MMMM yyyy", new CultureInfo("ru-RU")));
            DependencyService.Get<IPreferenceService>()?.SaveStartDate(startDateValue.ToString("o")); // ISO 8601
            Preferences.Set(EndDateKey, endDateString);
            Preferences.Set(TypeKey, selectedLensType);
            Debug.WriteLine($"StartDateKey {startDateValue.ToString("dd MMMM yyyy", new CultureInfo("ru-RU"))}, StartDateKeyForPush {startDateValue.ToString("o")}, TypeKey {selectedLensType}");
            
        }

        private async void UpdateReplacementDate(object sender, EventArgs e)
        {
            var startDateValue = startDate.Date;
            var selectedLensType = lensTypePicker.SelectedItem?.ToString();

            if (selectedLensType != null)
            {
                UpdateEndDate(startDateValue, selectedLensType);
                await SaveLensesData(startDateValue.ToString("dd MMMM yyyy", new CultureInfo("ru-RU")), selectedLensType);
            }
        }

        private async Task SaveLensesData(string startDate, string type)
        {
            try
            {
                var realEndDate = DateTime.Today.ToString("dd MMMM yyyy", new CultureInfo("ru-RU"));
                var lensesData = new
                {
                    StartDate = startDate,
                    Type = type,
                    // Если фирма не выбрана (текст по умолчанию), сохраняем null
                    LensesFirm = FirmLabel.Text == "Укажите фирму линз" ? null : FirmLabel.Text,
                    EndDate = realEndDate
                };

                var firebaseService = new FirebaseService();
                string userUid = await firebaseService.GetUserUidAsync();
                var firebase = new FirebaseClient("https://clensdatabase-default-rtdb.firebaseio.com/");
                await firebase.Child("Users").Child(userUid).Child("History").PostAsync(lensesData);
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", ex.Message, "OK");
            }


        }

        public async void ClearInfo()
        {
            var _firebaseClient = new FirebaseClient("https://clensdatabase-default-rtdb.firebaseio.com/");
            var firebaseService = new FirebaseService();
            string userUid = await firebaseService.GetUserUidAsync();
            startDate.Date = DateTime.Today;
            endDate.Text = null;  
            lensTypePicker.SelectedItem = null; 
            countTimeLabel.IsVisible = false;
            timeMeasurementLabel.IsVisible = false;
            nullDataLabel.IsVisible = true;
            resetLensesLabel.IsVisible = false;
            EndDateStackLayout.IsVisible = false;
            FirmLabel.Text = "Укажите фирму линз";
            await _firebaseClient.Child("Users").Child(userUid).Child("LensesFirm").DeleteAsync();
            Preferences.Remove("StartDateKey");
            Preferences.Remove("StartDateKeyForPush");
            Preferences.Remove(EndDateKey); 
            Preferences.Remove("TypeKey");

            #if ANDROID
            var prefs = Android.App.Application.Context.GetSharedPreferences("LensPrefs", Android.Content.FileCreationMode.Private);
            var editor = prefs.Edit();
            editor.Clear();
            editor.Apply();
            #endif

            nullDataLabel.Text = "Выберите дату начала носки и тип линз";

            UpdateRemoveButtonState();

            LoadSavedData();
            StopLensCheckService();
        }

        private async void clearLabel_Tapped(object sender, EventArgs e)
        {
            bool answer = await DisplayAlert("Подтверждение", "Вы действительно хотите удалить данные о линзах?", "Да", "Нет");
            if (answer)
            {
                ClearInfo();
                NotificationCenter.Current.Cancel(1234);
                Preferences.Remove("LastNotificationDate");
                StopLensCheckService();
                StartLensCheckService();
            }
        }

        private async void removeButton_Clicked(object sender, EventArgs e)
        {
            if (lensTypePicker.SelectedItem != null)
            {
                // Очищаем фирму линз, если была выбрана
                if (FirmLabel.Text != "Укажите фирму линз")
                {
                    FirmLabel.Text = "Укажите фирму линз";
                    await SaveFirmToFirebase(null);
                }

                UpdateReplacementDate(null, null);
                ClearInfo();
                NotificationCenter.Current.Cancel(1234);
                Preferences.Remove("LastNotificationDate");
                StopLensCheckService();
                StartLensCheckService();
            }
        }

        private void CalculateEndDate()
        {
            if (lensTypePicker.SelectedItem != null)
            {
                var startDateValue = startDate.Date;
                var selectedLensType = lensTypePicker.SelectedItem?.ToString();
                UpdateEndDate(startDateValue, selectedLensType);
            }
        }

        private void lensTypePicker_SelectedIndexChanged(object sender, EventArgs e)
        {
            CalculateEndDate();
            UpdateRemoveButtonState();
        }

        private void startDate_DateSelected(object sender, DateChangedEventArgs e)
        {
            if (lensTypePicker.SelectedItem != null) CalculateEndDate();
        }

        private void UpdateRemoveButtonState()
        {
            if (lensTypePicker.SelectedItem == null)
            {
                removeButton.IsEnabled = false;
                removeButton.BackgroundColor = Color.Gray;
            }
            else
            {
                removeButton.IsEnabled = true;
                removeButton.BackgroundColor = Color.FromHex("#B5DDA4");
            }
        }

        void StopLensCheckService()
        {
#if ANDROID
    NotificationCenter.Current.Cancel(1234);
    var context = Android.App.Application.Context;
    var intent = new Android.Content.Intent(context, typeof(Clens.Droid.LensCheckService));
    context.StopService(intent);
#endif
        }

        void StartLensCheckService()
        {
#if ANDROID
    var context = Android.App.Application.Context;
    var intent = new Android.Content.Intent(context, typeof(Clens.Droid.LensCheckService));
    context.StartForegroundService(intent);
#endif
        }

        private async void FirmLensPicker_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                var currentFirm = FirmLabel.Text;
                var popup = new LensesFirmListPopup(_standardFirms.ToList(), currentFirm);

                popup.FirmSelected += async (s, selectedFirm) =>
                {
                    if (selectedFirm == "Свой вариант")
                    {
                        // ... существующий код ...
                    }
                    else if (!string.IsNullOrEmpty(selectedFirm))
                    {
                        FirmLabel.Text = selectedFirm;
                        await SaveFirmToFirebase(selectedFirm);
                        await SafePopPopupAsync();
                    }
                };

                // Добавляем обработчик отмены выбора
                popup.FirmSelectionCleared += async (s, args) =>
                {
                    FirmLabel.Text = "Укажите фирму линз";
                    await SaveFirmToFirebase(null);
                    await SafePopPopupAsync();
                };

                popup.FirmDeleted += (s, firmToDelete) =>
                {
                    // ... существующий код ...
                };

                await SafePushPopupAsync(popup);
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Ошибка при открытии попапа: {ex.Message}");
            }
        }

        private async Task SafePushPopupAsync(PopupPage page)
        {
            try
            {
                if (PopupNavigation.Instance.PopupStack.All(p => p.GetType() != page.GetType()))
                {
                    await PopupNavigation.Instance.PushAsync(page);
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Ошибка при открытии попапа: {ex.Message}");
            }
        }

        private async Task SafePopPopupAsync()
        {
            try
            {
                if (PopupNavigation.Instance.PopupStack.Any())
                {
                    await PopupNavigation.Instance.PopAsync();
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Ошибка при закрытии попапа: {ex.Message}");
            }
        }

        public async Task<string> GetUserSelectedFirm()
        {
            try
            {
                var firebaseService = new FirebaseService();
                string userUid = await firebaseService.GetUserUidAsync();

                if (string.IsNullOrEmpty(userUid)) return null;

                var firebase = new FirebaseClient("https://clensdatabase-default-rtdb.firebaseio.com/");
                var snapshot = await firebase
                    .Child("Users")
                    .Child(userUid)
                    .Child("LensesFirm")
                    .OnceSingleAsync<string>();

                return snapshot;
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Ошибка при получении фирмы: {ex.Message}");
                return null;
            }
        }

        private async Task LoadSelectedFirm()
        {
            try
            {
                var firm = await GetUserSelectedFirm();
                if (!string.IsNullOrEmpty(firm))
                {
                    FirmLabel.Text = firm;
                    if (!_standardFirms.Contains(firm))
                    {
                        _standardFirms.Add(firm);
                    }
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Ошибка загрузки фирмы: {ex.Message}");
            }
        }

        private async Task SaveFirmToFirebase(string firm)
        {
            try
            {
                var userUid = await new FirebaseService().GetUserUidAsync();
                await new FirebaseClient("https://clensdatabase-default-rtdb.firebaseio.com/").Child("Users").Child(userUid).PatchAsync(new Dictionary<string, object>
                {
                    ["LensesFirm"] = firm
                });
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", $"Не удалось сохранить: {ex.Message}", "OK");
            }
        }

        private readonly ObservableCollection<string> _standardFirms = new ObservableCollection<string>
    {
        "ACUVUE", "Dailies", "Air Optix Aqua", "Biomedics",
        "Proclear", "PureVision", "Biotrue"
    };

        private async Task LoadCustomFirms()
        {
            try
            {
                var firebaseService = new FirebaseService();
                string userUid = await firebaseService.GetUserUidAsync();

                var firebase = new FirebaseClient("https://clensdatabase-default-rtdb.firebaseio.com/");
                var customFirms = await firebase
                    .Child("Users")
                    .Child(userUid)
                    .Child("CustomFirms")
                    .OnceSingleAsync<Dictionary<string, string>>();

                if (customFirms != null)
                {
                    Device.BeginInvokeOnMainThread(() =>
                    {
                        foreach (var firm in customFirms.Values)
                        {
                            if (!_standardFirms.Contains(firm))
                            {
                                _standardFirms.Add(firm);
                            }
                        }
                    });
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Ошибка загрузки пользовательских фирм: {ex.Message}");
            }
        }

        private bool IsStandardFirm(string firm)
        {
            var standardFirms = new List<string>
        {
            "ACUVUE", "Dailies", "Air Optix Aqua", "Biomedics",
            "Proclear", "PureVision", "Biotrue"
        };
            return standardFirms.Contains(firm);
        }

        private async Task SaveCustomFirmToFirebase(string firm)
        {
            try
            {
                var firebaseService = new FirebaseService();
                string userUid = await firebaseService.GetUserUidAsync();

                var firebase = new FirebaseClient("https://clensdatabase-default-rtdb.firebaseio.com/");

                // Получаем текущий список
                var currentFirms = await firebase
                    .Child("Users")
                    .Child(userUid)
                    .Child("CustomFirms")
                    .OnceSingleAsync<Dictionary<string, string>>() ?? new Dictionary<string, string>();

                // Добавляем новую фирму
                if (!currentFirms.ContainsValue(firm))
                {
                    string newKey = $"firm_{DateTime.Now.Ticks}";
                    currentFirms[newKey] = firm;

                    // Сохраняем обновленный список
                    await firebase
                        .Child("Users")
                        .Child(userUid)
                        .Child("CustomFirms")
                        .PutAsync(currentFirms);
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Ошибка сохранения фирмы: {ex.Message}");
            }
        }

        private async Task DeleteCustomFirmFromFirebase(string firm)
        {
            try
            {
                var firebaseService = new FirebaseService();
                string userUid = await firebaseService.GetUserUidAsync();

                var firebase = new FirebaseClient("https://clensdatabase-default-rtdb.firebaseio.com/");

                // Получаем текущий список
                var currentFirms = await firebase
                    .Child("Users")
                    .Child(userUid)
                    .Child("CustomFirms")
                    .OnceSingleAsync<Dictionary<string, string>>();

                if (currentFirms != null)
                {
                    // Находим и удаляем фирму
                    var itemToRemove = currentFirms.FirstOrDefault(x => x.Value == firm);
                    if (!string.IsNullOrEmpty(itemToRemove.Key))
                    {
                        currentFirms.Remove(itemToRemove.Key);

                        // Сохраняем обновленный список
                        await firebase
                            .Child("Users")
                            .Child(userUid)
                            .Child("CustomFirms")
                            .PutAsync(currentFirms);
                    }
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Ошибка удаления фирмы: {ex.Message}");
            }
        }

    }


}
