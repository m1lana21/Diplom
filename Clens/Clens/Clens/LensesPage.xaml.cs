using Firebase.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.PlatformConfiguration.iOSSpecific;
using Xamarin.Forms.Xaml;
using Firebase.Auth;
using Firebase.Auth.Providers;
using Firebase.Database.Query;

namespace Clens
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class LensesPage : ContentPage
	{
        private DateTime selectedDate;

        public LensesPage ()
		{
			InitializeComponent ();
		}

        private void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            startDate.IsVisible = true;
        }

        private async void TapGestureRecognizer_Tapped_1(object sender, EventArgs e)
        {
            selectedDate = startDate.Date;
            await DisplayAlert("Дата выбрана", $"Вы выбрали {selectedDate.ToShortDateString()}", "OK");
        }

        private async Task SaveUserData(string startDate, string lensType, string endDate)
        {
            var userData = new { StartDate = startDate, TypeOfLenses = lensType, EndDate = endDate };
            var firebase = new FirebaseClient("https://clensdatabase-default-rtdb.firebaseio.com/");
            await firebase
                .Child("lensesHistory")
                .PostAsync(userData);
        }


    }

}