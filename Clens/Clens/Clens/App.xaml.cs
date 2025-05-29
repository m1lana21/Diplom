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
using Clens;
namespace Clens
{
    public partial class App : Application
    {

        public App()
        {
            InitializeComponent();

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


            Thread.CurrentThread.CurrentCulture = new CultureInfo("ru-RU");
            UserAppTheme = OSAppTheme.Light;
            

            
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
