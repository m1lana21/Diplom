using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Rg.Plugins.Popup.Services;
using System.Globalization;
using System.Threading;
using Xamarin.Essentials;
namespace Clens
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();
            Thread.CurrentThread.CurrentCulture = new CultureInfo("ru-RU");
            NavigationPage navigationPage;

            if (Preferences.Get("IsRemembered", false))
            {
                navigationPage = new NavigationPage(new SecondPage());
            }
            else
            {
                navigationPage = new NavigationPage(new MainPage());
            }

            navigationPage.BarBackgroundColor = Color.FromHex("#B5DDA4");
            navigationPage.BarTextColor = Color.Black;

            Application.Current.MainPage = navigationPage;


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
