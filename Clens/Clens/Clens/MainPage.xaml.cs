using Firebase.Database;
using Newtonsoft.Json;
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
using static Clens.AuthPage;

namespace Clens
{

    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
            isRememberedSwitch.IsToggled = Preferences.Get("IsRemembered", false);
            DeleteSpace(EmailEntry);
            DeleteSpace(PasswordEntry);
        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();

            try
            {
                if (Preferences.Get("IsRemembered", false))
                {
                    var token = await SecureStorage.GetAsync("UserToken");
                    if (!string.IsNullOrEmpty(token))
                    {
                        await Navigation.PushAsync(new SecondPage());
                        return;
                    }
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Auto-login error: {ex.Message}");
            }
        }

        private async void loginButton_Clicked(object sender, EventArgs e)
        {
            var userInput = EmailEntry?.Text?.Trim(); 
            var password = PasswordEntry?.Text;      

            if (string.IsNullOrEmpty(userInput) || string.IsNullOrEmpty(password))
            {
                await DisplayAlert("Ошибка", "Необходимо заполнить поля логина и пароля", "OK");
                return;
            }

            try
            {
                bool isEmail = !string.IsNullOrEmpty(userInput) &&
                              userInput.Contains("@") &&
                              userInput.Contains(".") &&
                              userInput.Length > 12; 

                FirebaseResponse loginResult = null;

                if (isEmail)
                {
                    loginResult = await LoginUser(userInput, password);
                }
                else
                {
                    loginResult = await LoginWithUsername(userInput, password);
                }

                if (loginResult?.IdToken != null) 
                {
                    await SecureStorage.SetAsync("UserToken", loginResult.IdToken);

                    if (isRememberedSwitch?.IsToggled == true)
                    {
                        Preferences.Set("SavedEmail", userInput);
                        Preferences.Set("SavedPassword", password);
                    }

                    await Navigation?.PushAsync(new SecondPage());
                    EmailEntry.Text = string.Empty;
                    PasswordEntry.Text = string.Empty;
                    Navigation?.RemovePage(this);
                }
                else
                {
                    await DisplayAlert("Ошибка", "Не удалось войти в систему", "OK");
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", ex.Message, "OK");
            }
        }

        public async Task<FirebaseResponse> LoginWithUsername(string username, string password)
        {
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
                throw new ArgumentException("Логин и пароль не могут быть пустыми");

            var firebaseClient = new FirebaseClient("https://clensdatabase-default-rtdb.firebaseio.com/");

            var users = await firebaseClient
                .Child("Users")
                .OnceAsync<Dictionary<string, object>>();

            var user = users?.FirstOrDefault(u =>
                u?.Object?.ContainsKey("Login") == true &&
                u.Object["Login"]?.ToString() == username);

            if (user == null)
            {
                throw new Exception("Пользователь с таким логином не найден");
            }

            if (!user.Object.TryGetValue("Email", out var emailObj) || string.IsNullOrEmpty(emailObj?.ToString()))
            {
                throw new Exception("Для этого пользователя не указан email");
            }

            return await LoginUser(emailObj.ToString(), password);
        }

        private async Task<FirebaseResponse> LoginUser(string email, string password)
        {
            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
                throw new ArgumentException("Email и пароль не могут быть пустыми");

            try
            {
                var client = new HttpClient();
                var requestUri = "https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyBNpyK0Xw_ycD_o8ns7aTkNT6WNXKHUY8s";

                var content = new StringContent(JsonConvert.SerializeObject(new
                {
                    email,
                    password,
                    returnSecureToken = true
                }), Encoding.UTF8, "application/json");

                var response = await client.PostAsync(requestUri, content);
                var responseString = await response.Content.ReadAsStringAsync();

                if (!response.IsSuccessStatusCode)
                {
                    var errorResponse = JsonConvert.DeserializeObject<FirebaseErrorResponse>(responseString);
                    throw new Exception(errorResponse?.error?.message ?? "Неверный email или пароль");
                }

                return JsonConvert.DeserializeObject<FirebaseResponse>(responseString);
            }
            catch (Exception ex)
            {
                throw new Exception($"Ошибка при входе: неверный пароль");
            }
        }

        public class FirebaseErrorResponse
        {
            public FirebaseError error { get; set; }
        }

        public class FirebaseError
        {
            public string message { get; set; }
        }

        private void Switch_Toggled(object sender, ToggledEventArgs e)
        {
            bool isChecked = e.Value;
            Preferences.Set("IsRemembered", isChecked);

            if (!isChecked)
            {
                Preferences.Remove("SavedEmail");
                Preferences.Remove("SavedPassword");
            }
        }

        private async void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            var authPage = new AuthPage();

            await Navigation.PushAsync(authPage);
            Navigation.RemovePage(this);

        }

        private void DeleteSpace(Entry entry)
        {
            entry.TextChanged += (sender, args) =>
            {
                if (args.NewTextValue?.Contains(' ') ?? false)
                {
                    ((Entry)sender).Text = args.OldTextValue;
                }
            };
        }

        private async void TapGestureRecognizer_Tapped_1Async(object sender, EventArgs e)
        {
            var myPopup = new PasswordEditPage();
            await PopupNavigation.Instance.PushAsync(myPopup);
        }
    }

    
}
