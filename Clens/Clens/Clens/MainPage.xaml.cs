using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace Clens
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
        }

        private async void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            var authPage = new AuthPage();

            await Navigation.PushAsync(authPage);
        }

        private async void Button_Clicked(object sender, EventArgs e)
        {
            var secPage = new SecondPage();
            await Navigation.PushAsync(secPage);
        }
    }
}
