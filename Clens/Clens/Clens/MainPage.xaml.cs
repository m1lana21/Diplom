using Newtonsoft.Json;
using System;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using static Clens.AuthPage;

namespace Clens
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
        }

        private async void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            var authPage = new AuthPage();

            await Navigation.PushAsync(authPage);
        }

        public async Task<FirebaseResponse> LoginUser(string email, string password)
        {
            var client = new HttpClient();
            var requestUri = $"https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyBNpyK0Xw_ycD_o8ns7aTkNT6WNXKHUY8s";

            var content = new StringContent(JsonConvert.SerializeObject(new
            {
                email,
                password,
                returnSecureToken = true
            }), Encoding.UTF8, "application/json");

            var response = await client.PostAsync(requestUri, content);
            var responseString = await response.Content.ReadAsStringAsync();

            if (response.IsSuccessStatusCode)
            {
                var firebaseResponse = JsonConvert.DeserializeObject<FirebaseResponse>(responseString);
                return firebaseResponse;
            }
            else
            {
                return null;
            }
        }



        private async void Button_Clicked(object sender, EventArgs e)
        {
            var email = ((Entry)FindByName("EmailEntry")).Text;
            var password = ((Entry)FindByName("PasswordEntry")).Text;

            try
            {
                var loginResult = await LoginUser(email, password);
                if (loginResult != null && !string.IsNullOrEmpty(loginResult.IdToken))
                {
                    var secPage = new SecondPage();
                    await Navigation.PushAsync(secPage);
                }
                else
                {
                    await DisplayAlert("Ошибка", "Неверный логин или пароль", "OK");
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", ex.Message, "OK");
            }
        }
    }
}
