using Acr.UserDialogs.Infrastructure;
using Firebase.Database;
using Firebase.Database.Query;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Plugin.FirebaseAuth;
using Rg.Plugins.Popup.Services;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using static Clens.HistoryPage;

namespace Clens
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class AccountPage : ContentPage
    {
        public string Email { get; set; }
        public string Password { get; set; }
        public AccountPage()
        {
            InitializeComponent();
            GetUsername();
            GetEmail();
            GetPassword();
        }
        

        protected override void OnAppearing()
        {
            base.OnAppearing();
        }

        private async void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            var confirmExit = await DisplayAlert("Выход", "Вы действительно хотите выйти?", "Да", "Нет");

            if (confirmExit)
            {
                // Очищаем только авторизационные данные
                SecureStorage.Remove("UserToken");
                Preferences.Set("IsRemembered", false);

                // Создаем новую навигационную цепочку
                Application.Current.MainPage = new NavigationPage(new MainPage())
                {
                    BarBackgroundColor = Color.FromHex("#B5DDA4"),
                    BarTextColor = Color.Black
                };
            }
        }

        private async void PasswordButton_Clicked(object sender, EventArgs e)
        {
            var button = sender as ImageButton;
            var historyItem = button?.BindingContext as HistoryItem;
            var myPopup = new PasswordEditPage();
            await PopupNavigation.Instance.PushAsync(myPopup);
        }

        private async void GetUsername()
        {
            var firebase = new FirebaseClient("https://clensdatabase-default-rtdb.firebaseio.com/");
            var firebaseService = new FirebaseService();
            string userUid = await firebaseService.GetUserUidAsync();
            var login = await firebase
                .Child("Users")
                .Child(userUid)
                .Child("Login")
                .OnceSingleAsync<string>();
            LoginLabel.Text = login;
        }
        private async void GetPassword()
        {
            var firebase = new FirebaseClient("https://clensdatabase-default-rtdb.firebaseio.com/");
            var firebaseService = new FirebaseService();
            string userUid = await firebaseService.GetUserUidAsync();
            var password = await firebase
                .Child("Users")
                .Child(userUid)
                .Child("Password")
                .OnceSingleAsync<string>();
            PasswordEntry.Text = password;
        }
        private async void GetEmail()
        {
            var firebase = new FirebaseClient("https://clensdatabase-default-rtdb.firebaseio.com/");
            var firebaseService = new FirebaseService();
            string userUid = await firebaseService.GetUserUidAsync();
            var email = await firebase
                .Child("Users")
                .Child(userUid)
                .Child("Email")
                .OnceSingleAsync<string>();
            EmailLabel.Text = email;
        }
    }
}