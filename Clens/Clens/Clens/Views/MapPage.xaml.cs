using Plugin.LocalNotification;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Clens
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class MapPage : ContentPage
	{
		public MapPage ()
		{
			InitializeComponent ();
            NotificationCenter.Current.NotificationReceived += Current_NotificationReceived;

            NotificationCenter.Current.NotificationTapped += Current_NotificationTapped;
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
        }

        private void Current_NotificationTapped(NotificationTappedEventArgs e)
        {
            Device.BeginInvokeOnMainThread(() =>
            {
                DisplayAlert("Notification tapped", e.Data, "OK");
            });
        }

        private void Current_NotificationReceived(NotificationReceivedEventArgs e)
        {
            if (Device.RuntimePlatform == Device.iOS)
            {
                Device.BeginInvokeOnMainThread(() =>
                {
                    DisplayAlert(e.Title, e.Description, "OK");
                });
            }
        }

        private void Button_Clicked(object sender, EventArgs e)
        {
            var notification = new NotificationRequest
            {
                BadgeNumber = 1,
                Description = "test",
                Title = "test",
                ReturningData = "Dummy Data",
                NotificationId = 1337,
                NotifyTime = DateTime.Now.AddSeconds(5)
            };
            NotificationCenter.Current.Show(notification);
        }
    }
}