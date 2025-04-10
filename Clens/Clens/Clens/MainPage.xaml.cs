using Newtonsoft.Json;
using System;
using System.Diagnostics;
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
            var email = EmailEntry.Text;
            var password = PasswordEntry.Text;

            try
            {
                var loginResult = await LoginUser(email, password);
                if (loginResult != null)
                {
                    await SecureStorage.SetAsync("UserToken", loginResult.IdToken);

                    if (isRememberedSwitch.IsToggled)
                    {
                        Preferences.Set("SavedEmail", email);
                        Preferences.Set("SavedPassword", password);
                    }

                    await Navigation.PushAsync(new SecondPage());
                    EmailEntry.Text = string.Empty;
                    PasswordEntry.Text = string.Empty;
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", ex.Message, "OK");
            }
        }

        private async Task<FirebaseResponse> LoginUser(string email, string password)
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
                throw new Exception("Неверный логин или пароль");
            }

            return JsonConvert.DeserializeObject<FirebaseResponse>(responseString);
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
        }
    }

    
}
