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
    public partial class LensesFirmListPopup : PopupPage
    {
        public event EventHandler<string> FirmSelected;
        public event EventHandler<string> FirmDeleted;
        public event EventHandler FirmSelectionCleared;

        private readonly List<string> _firms;
        private readonly string _currentSelection;

        public LensesFirmListPopup(List<string> firms, string currentSelection)
        {
            InitializeComponent();
            _firms = new List<string> { "Отменить выбор" };
            _firms.AddRange(firms);

            _currentSelection = currentSelection;
            firmsListView.ItemsSource = _firms;

            if (!string.IsNullOrEmpty(_currentSelection))
            {
                firmsListView.SelectedItem = _currentSelection;
            }
        }

        private async void OnItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem is string selectedItem)
            {
                if (selectedItem == "Отменить выбор")
                {
                    FirmSelectionCleared?.Invoke(this, EventArgs.Empty);
                }
                else
                {
                    FirmSelected?.Invoke(this, selectedItem);
                }
                await SafeClosePopupAsync();
            }
        }

        private async void OnCustomFirmClicked(object sender, EventArgs e)
        {
            FirmSelected?.Invoke(this, "Свой вариант");
            await SafeClosePopupAsync();
        }

        private async void OnCancelClicked(object sender, EventArgs e)
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

        private async void OnDeleteClicked(object sender, EventArgs e)
        {
            if (sender is ImageButton button && button.CommandParameter is string firmToDelete)
            {
                var result = await DisplayAlert("Подтверждение",
                    $"Удалить фирму '{firmToDelete}'?", "Да", "Нет");

                if (result)
                {
                    FirmDeleted?.Invoke(this, firmToDelete);

                    if (firmsListView.ItemsSource is List<string> firms)
                    {
                        firms.Remove(firmToDelete);
                        firmsListView.ItemsSource = null;
                        firmsListView.ItemsSource = firms;
                    }
                }
            }
        }
    }
}