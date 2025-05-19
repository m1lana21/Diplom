using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Rg.Plugins.Popup.Services;
using System.Globalization;
using System.Threading;
using Xamarin.Essentials;
using Plugin.LocalNotification;
using CloudinaryDotNet;
using CloudinaryDotNet.Actions;
namespace Clens
{
    public partial class App : Application
    {
        public static CloudinaryService CloudinaryService { get; private set; }

        public App()
        {
            InitializeComponent();
            CloudinaryService = new CloudinaryService();
            Thread.CurrentThread.CurrentCulture = new CultureInfo("ru-RU");
            UserAppTheme = OSAppTheme.Light;
            bool isRemembered = Preferences.Get("IsRemembered", false);
            var authToken = SecureStorage.GetAsync("UserToken").Result;

            NavigationPage navigationPage;

            if (isRemembered && !string.IsNullOrEmpty(authToken))
            {
                navigationPage = new NavigationPage(new SecondPage());
            }
            else
            {
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
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }

        
    }
}
