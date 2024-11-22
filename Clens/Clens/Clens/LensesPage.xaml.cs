using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.PlatformConfiguration.iOSSpecific;
using Xamarin.Forms.Xaml;

namespace Clens
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class LensesPage : ContentPage
	{
        private DateTime selectedDate;
        private readonly object args;

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

       
    }

}