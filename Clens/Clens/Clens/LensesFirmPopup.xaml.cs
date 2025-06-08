using Firebase.Auth;
using Firebase.Auth.Providers;
using Firebase.Database;
using Firebase.Database.Query;
using Newtonsoft.Json;
using Rg.Plugins.Popup.Pages;
using Rg.Plugins.Popup.Services;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using static Clens.AuthPage;
using static Clens.MainPage;

namespace Clens
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LensesFirmPopup : PopupPage
    {
        public event EventHandler<string> FirmSaved;

        public LensesFirmPopup()
        {
            InitializeComponent();
        }

        private async void saveButton_Clicked(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(FirmEntry.Text))
            {
                FirmSaved?.Invoke(this, FirmEntry.Text.Trim());
                await SafeClosePopupAsync();
            }
            else
            {
                await DisplayAlert("Ошибка", "Введите название фирмы", "OK");
            }
        }

        private async void cancelLabel_Tapped(object sender, EventArgs e)
        {
            await SafeClosePopupAsync();
        }

        private async Task SafeClosePopupAsync()
        {
            try
            {
                if (PopupNavigation.Instance.PopupStack.Contains(this))
                {
                    await PopupNavigation.Instance.RemovePageAsync(this);
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Ошибка при закрытии попапа: {ex.Message}");
            }
        }
    }



}