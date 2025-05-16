using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Rg.Plugins.Popup.Services;
using System.Globalization;
using System.Threading;
using Xamarin.Essentials;
using Plugin.LocalNotification;

namespace Clens
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            Thread.CurrentThread.CurrentCulture = new CultureInfo("ru-RU");
            UserAppTheme = OSAppTheme.Light;
            // Получаем состояние без дефолтного true
            bool isRemembered = Preferences.Get("IsRemembered", false);
            var authToken = SecureStorage.GetAsync("UserToken").Result;

            NavigationPage navigationPage;

            // Строгая проверка - только если И флажок И токен
            if (isRemembered && !string.IsNullOrEmpty(authToken))
            {
                navigationPage = new NavigationPage(new SecondPage());
            }
            else
            {
                // Принудительно сбрасываем если флажок выключен
                if (!isRemembered)
                {
                    SecureStorage.Remove("UserToken");
                }
                navigationPage = new NavigationPage(new MainPage());
            }

            navigationPage.BarBackgroundColor = Color.FromHex("#B5DDA4");
            navigationPage.BarTextColor = Color.Black;
            MainPage = navigationPage;
        }

       

        protected override void OnStart()
        {
            //NotificationCenter.Current.NotificationTapped += (e) =>
            //{
            //    Device.BeginInvokeOnMainThread(async () =>
            //    {
            //        await MainPage.DisplayAlert("Уведомление", "Нажато на уведомление", "OK");
            //    });
            //};
        }

        protected override void OnSleep()
        {
            //NotificationCenter.Current.NotificationTapped += (e) =>
            //{
            //    Device.BeginInvokeOnMainThread(async () =>
            //    {
            //        await MainPage.DisplayAlert("Уведомление", "Нажато на уведомление", "OK");
            //    });
            //};
        }

        protected override void OnResume()
        {
            //NotificationCenter.Current.NotificationTapped += (e) =>
            //{
            //    Device.BeginInvokeOnMainThread(async () =>
            //    {
            //        await MainPage.DisplayAlert("Уведомление", "Нажато на уведомление", "OK");
            //    });
            //};
        }

        
    }
}
