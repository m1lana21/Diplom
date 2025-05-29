using Firebase.Auth;
using Firebase.Auth.Providers;
using Firebase.Database;
using Firebase.Database.Query;
using Newtonsoft.Json;
using Rg.Plugins.Popup.Pages;
using Rg.Plugins.Popup.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using static Clens.AuthPage;
using static Clens.MainPage;

namespace Clens
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LensesFirmPopup : PopupPage
    {
        public LensesFirmPopup()
        {
            InitializeComponent();
            LoadFirm();
        }

        private async void LoadFirm()
        {
            var firebaseService = new FirebaseService();
            string userUid = await firebaseService.GetUserUidAsync();

            FirmEntry.Text = await new FirebaseClient("https://clensdatabase-default-rtdb.firebaseio.com/")
                .Child("Users")
                .Child(userUid)
                .Child("LensesFirm")
                .OnceSingleAsync<string>();
        }



        private async void saveButton_Clicked(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(FirmEntry.Text))
            {
                var firebaseService = new FirebaseService();
                string userUid = await firebaseService.GetUserUidAsync();

                await new FirebaseClient("https://clensdatabase-default-rtdb.firebaseio.com/")
                    .Child("Users")
                    .Child(userUid)
                    .Child("LensesFirm")
                    .PutAsync(FirmEntry.Text.Trim());

                await PopupNavigation.Instance.PopAsync();
            }
            else
            {
                await DisplayAlert("Ошибка", "Введите название фирмы", "OK");
            }
        }

        private async void cancelLabel_Tapped(object sender, EventArgs e)
        {
            await PopupNavigation.Instance.PopAsync();
        }

        private async void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            var firebaseService = new FirebaseService();
            string userUid = await firebaseService.GetUserUidAsync();

            await new FirebaseClient("https://clensdatabase-default-rtdb.firebaseio.com/")
                .Child("Users")
                .Child(userUid)
                .Child("LensesFirm")
                .DeleteAsync();

            FirmEntry.Text = string.Empty;
        }
    }



}