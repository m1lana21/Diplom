using Acr.UserDialogs.Infrastructure;
using Rg.Plugins.Popup.Services;
using System;
using System.Collections.Generic;
using System.Linq;
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
            EmailLabel.Text = Preferences.Get("SavedEmail", "");  // Получаем сохранённый email
            PasswordEntry.Text = Preferences.Get("SavedPassword", "");  // Получаем сохранённый логин
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
    }
}