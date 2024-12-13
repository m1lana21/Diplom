using System;
using Xamarin.Forms;
using Xamarin.Essentials;
using Firebase.Database;
using Firebase.Auth;
using Firebase.Database.Query;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Linq;

namespace Clens
{
    public partial class LensesPage : ContentPage
    {
        private const string LastSavedKey = "LastSaved";
        private bool isLoadedFromDb = false;

        public LensesPage()
        {
            InitializeComponent();

            if (!isLoadedFromDb && startDate.Date == null)
            {
                startDate.Date = DateTime.Now;
            }
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
        }

        private async void UpdateReplacementDate(object sender, EventArgs e)
        {
            var startDateValue = startDate.Date;

            var selectedLensType = lensTypePicker.SelectedItem?.ToString();

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

            DateTime realEndDate = DateTime.Today;

            string endDateString = realEndDate.ToString("dd MMMM yyyy");
            string startDateString = startDateValue.ToString("dd MMMM yyyy");
            endDate.Text = endDateString;

            countTimeLabel.Text = $"{expectedEndDateValue.Subtract(DateTime.Today).Days}";
            countTimeLabel.IsVisible = true;
            timeMeasurementLabel.IsVisible = true;
            nullDataLabel.IsVisible = false;
            resetLensesLabel.IsVisible = true;

            if (!Preferences.ContainsKey(LastSavedKey) || Preferences.Get(LastSavedKey, "") != startDateString)
            {
                await SaveLensesData(startDateString, selectedLensType, endDateString);
                Preferences.Set(LastSavedKey, startDateString);
            }
        }

        private async Task SaveLensesData(string startDate, string type, string endDate)
        {
            var lensesData = new { StartDate = startDate, Type = type, EndDate = endDate, };
            var firebase = new FirebaseClient("https://clensdatabase-default-rtdb.firebaseio.com/");
            await firebase
                .Child("History")
                .PostAsync(lensesData);
        }

        public void clearInfo()
        {
            startDate.Date = DateTime.Today;
            endDate.Text = null;
            lensTypePicker.SelectedItem = null;
            countTimeLabel.IsVisible = false;
            timeMeasurementLabel.IsVisible = false;
            nullDataLabel.IsVisible = true;
            resetLensesLabel.IsVisible = false;
        }

        private async void clearLabel_Tapped(object sender, EventArgs e)
        {
            bool answer = await DisplayAlert("Подтверждение", "Вы действительно хотите удалить данные о линзах?", "Да", "Нет");

            if (answer)
            {
                clearInfo();
            }
        }

        private async void removeButton_Clicked(object sender, EventArgs e)
        {
            if (lensTypePicker.SelectedItem != null)
            {
                UpdateReplacementDate(null, null);
                clearInfo();
            }
            else await DisplayAlert("Ошибка", "Укажите тип линз!", "OK");
        }

        private async void saveButton_Clicked_1(object sender, EventArgs e)
        {
            if (lensTypePicker.SelectedItem != null)
            {
                var startDateValue = startDate.Date;

                var selectedLensType = lensTypePicker.SelectedItem?.ToString();

                DateTime endDateValue;
                switch (selectedLensType)
                {
                    case "Однодневные":
                        endDateValue = startDateValue.AddDays(1);
                        break;
                    case "Двухнедельные":
                        endDateValue = startDateValue.AddDays(14);
                        break;
                    case "Одномесячные":
                        endDateValue = startDateValue.AddMonths(1);
                        break;
                    case "Полугодовые":
                        endDateValue = startDateValue.AddMonths(6);
                        break;
                    case "Годовые":
                        endDateValue = startDateValue.AddYears(1);
                        break;
                    default:
                        endDateValue = startDateValue;
                        break;
                }

                string endDateString = endDateValue.ToString("dd MMMM yyyy");
                string startDateString = startDateValue.ToString("dd MMMM yyyy");
                endDate.Text = endDateString;

                countTimeLabel.Text = $"{endDateValue.Subtract(DateTime.Today).Days}";
                countTimeLabel.IsVisible = true;
                timeMeasurementLabel.IsVisible = true;
                nullDataLabel.IsVisible = false;
                resetLensesLabel.IsVisible = true;
            }
            else
            {
                await DisplayAlert("Ошибка", "укажите тип линз!", "OK");
            }
        }
    }
}