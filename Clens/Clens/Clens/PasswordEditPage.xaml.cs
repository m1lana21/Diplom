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
using static Clens.MainPage;

namespace Clens
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PasswordEditPage : PopupPage
    {
        private readonly FirebaseService _firebaseService;
        private readonly FirebaseClient _firebaseClient;
        private const string FirebaseResetPasswordUrl = "https://identitytoolkit.googleapis.com/v1/accounts:sendOobCode?key=AIzaSyBNpyK0Xw_ycD_o8ns7aTkNT6WNXKHUY8s";
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
            string email = EmailEntry.Text?.Trim();

            if (string.IsNullOrWhiteSpace(email) || !email.Contains("@") || !email.Contains("."))
            {
                await DisplayAlert("Ошибка", "Введите корректный email", "OK");
                return;
            }

            try
            {
                using (var client = new HttpClient())
                {
                    var request = new
                    {
                        requestType = "PASSWORD_RESET",
                        email = email
                    };

                    var json = JsonConvert.SerializeObject(request);
                    var content = new StringContent(json, Encoding.UTF8, "application/json");

                    var response = await client.PostAsync(FirebaseResetPasswordUrl, content);
                    var responseString = await response.Content.ReadAsStringAsync();

                    if (response.IsSuccessStatusCode)
                    {
                        await DisplayAlert("Успешно", "Ссылка для сброса пароля отправлена на ваш email", "OK");
                        await PopupNavigation.Instance.PopAsync();
                    }
                    else
                    {
                        var error = JsonConvert.DeserializeObject<FirebaseError>(responseString);
                        await DisplayAlert("Ошибка", GetErrorMessage(error), "OK");
                    }
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", $"Произошла ошибка: {ex.Message}", "OK");
            }
        }

        private string GetErrorMessage(FirebaseError error)
        {
            if (error?.error?.message == "EMAIL_NOT_FOUND")
                return "Пользователь с таким email не найден";
            if (error?.error?.message == "INVALID_EMAIL")
                return "Неверный формат email";
            return error?.error?.message ?? "Неизвестная ошибка";
        }
    }

    public class FirebaseError
    {
        public ErrorDetails error { get; set; }
    }

    public class ErrorDetails
    {
        public int code { get; set; }
        public string message { get; set; }
    }
}