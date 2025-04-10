using System;
using Firebase.Database;
using Rg.Plugins.Popup.Pages;
using Rg.Plugins.Popup.Services;
using Xamarin.Forms.Xaml;
using Firebase.Database.Query;
using static Clens.HistoryPage;

namespace Clens
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class EditPage : PopupPage
    {
        private HistoryItem selectedItem;
        private FirebaseClient _firebaseClient;
        public event Action ItemEdited;
        public EditPage(HistoryItem item)
        {
            InitializeComponent();
            selectedItem = item;
            lensTypePicker.SelectedItem = selectedItem.Type;
            startDate.Date = selectedItem.StartDateParsed ?? DateTime.Now;
            endDate.Date = selectedItem.EndDateParsed ?? DateTime.Now;
        }

        private async void saveButton_Clicked(object sender, EventArgs e)
        {
            _firebaseClient = new FirebaseClient("https://clensdatabase-default-rtdb.firebaseio.com/");
            var itemKey = selectedItem.Id;
            var firebaseService = new FirebaseService();
            string userUid = await firebaseService.GetUserUidAsync();

            selectedItem.Type = lensTypePicker.SelectedItem.ToString();
            selectedItem.StartDate = startDate.Date.ToString("dd MMMM yyyy");
            selectedItem.EndDate = endDate.Date.ToString("dd MMMM yyyy");

            if (startDate.Date > endDate.Date)
            {
                await DisplayAlert("Ошибка", "Начальная дата не должна превышать дату окончания", "Ок");
            }
            else
            {
                var itemToSave = new
                {
                    Type = selectedItem.Type,
                    StartDate = selectedItem.StartDate,
                    EndDate = selectedItem.EndDate
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
        }


        private async void cancelLabel_Tapped(object sender, EventArgs e)
        {
            await PopupNavigation.Instance.PopAsync(true);
        }
    }
}