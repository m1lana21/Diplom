using Firebase.Auth;
using Firebase.Auth.Providers;
using Firebase.Database;
using Firebase.Database.Query;
using Newtonsoft.Json;
using Rg.Plugins.Popup.Pages;
using Rg.Plugins.Popup.Services;
using System;
using System.Collections.Generic;
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
    public partial class LensesFirmListPopup : PopupPage
    {
        public event EventHandler<string> FirmSelected;
        private readonly List<string> _firms;
        private readonly string _currentSelection;

        public LensesFirmListPopup(List<string> firms)
        {
            InitializeComponent();
            _firms = firms;
            //_currentSelection = currentSelection;
            firmsListView.ItemsSource = _firms;

            if (!string.IsNullOrEmpty(_currentSelection))
            {
                firmsListView.SelectedItem = _currentSelection;
            }
        }

        private void OnItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem is string selectedFirm)
            {
                FirmSelected?.Invoke(this, selectedFirm);
                PopupNavigation.Instance.PopAsync();
            }
        }

        private async void OnCustomFirmClicked(object sender, EventArgs e)
        {
            var customFirm = await DisplayPromptAsync("Свой вариант", "Введите название фирмы:", "OK", "Отмена");

            if (!string.IsNullOrWhiteSpace(customFirm))
            {
                FirmSelected?.Invoke(this, customFirm.Trim());
                await PopupNavigation.Instance.PopAsync();
            }
        }

        private async void OnCancelClicked(object sender, EventArgs e)
        {
            await PopupNavigation.Instance.PopAsync();
        }

        private void Button_Clicked(object sender, EventArgs e)
        {

        }

        private void Button_Clicked_1(object sender, EventArgs e)
        {

        }
    }
}