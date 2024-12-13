using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Rg.Plugins.Popup.Services;
namespace Clens
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();
            MainPage = new NavigationPage(new SecondPage());
            NavigationPage navigationPage = new NavigationPage(new SecondPage())
            {
                BarBackgroundColor = Color.FromHex("#B5DDA4"),
                BarTextColor = Color.Black,
            };

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
