using Firebase.Auth.Providers;
using Firebase.Database;
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

namespace Clens
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PasswordEditPage : PopupPage
    {
        private readonly FirebaseService _firebaseService;
        private readonly FirebaseClient _firebaseClient;
        private string truePassword;
        public PasswordEditPage()
        {
            InitializeComponent();
        }

        private async void cancelLabel_Tapped(object sender, EventArgs e)
        {
            await PopupNavigation.Instance.PopAsync();
        }

        private async void saveButton_Clicked(object sender, EventArgs e)
        {
            truePassword = Preferences.Get("SavedPassword", "");
            var oldPassword = OldPasswordEntry.Text;
            var newPassword = NewPasswordEntry.Text;
            var confirmPassword = ConfirmPasswordEntry.Text;
            if (oldPassword != truePassword)
            {
                await DisplayAlert("Ошибка", "Неверный старый пароль.", "ОК");
            }

            if (newPassword != confirmPassword)
            {
                await DisplayAlert("Ошибка", "Новые пароли не совпадают. Пожалуйста, проверьте ввод.", "ОК");
                return;
            }

            var idToken = Preferences.Get("IdToken", "");
            
            var client = new HttpClient();
            var requestUri = $"https://identitytoolkit.googleapis.com/v1/accounts:update?key=AIzaSyBNpyK0Xw_ycD_o8ns7aTkNT6WNXKHUY8s";

            var content = new StringContent(JsonConvert.SerializeObject(new
            {
                idToken,
                password = newPassword,
                returnSecureToken = true
            }), Encoding.UTF8, "application/json");

            var response = await client.PostAsync(requestUri, content);
            var responseString = await response.Content.ReadAsStringAsync();

            if (response.IsSuccessStatusCode)
            {
                var firebaseResponse = JsonConvert.DeserializeObject<FirebaseResponse>(responseString);
                await DisplayAlert("Успех!", "Пароль успешно изменен.", "ОК");
                await PopupNavigation.Instance.PopAsync();
            }
            else
            {
                await DisplayAlert("Ошибка", "Не удалось изменить пароль", "ОК");
            }
        }
    }
}