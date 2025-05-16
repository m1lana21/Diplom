using System;
using System.Text;
using System.Threading.Tasks;
using System.Text.RegularExpressions;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Firebase.Database;
using Firebase.Database.Query;
using Newtonsoft.Json;
using System.Net.Http;
using Xamarin.Essentials;
using static Clens.HistoryPage;
using System.Collections.Generic;

namespace Clens
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class AuthPage : ContentPage
	{
        private const string FirebaseAPIKey = "AIzaSyBNpyK0Xw_ycD_o8ns7aTkNT6WNXKHUY8s";
        public AuthPage ()
		{
			InitializeComponent ();
            DeleteSpace(loginEntry);
            DeleteSpace(emailEntry);
            DeleteSpace(passwordEntry);
            DeleteSpace(passwordConfirmEntry);

        }

        private async void loginButton_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new MainPage());
            Navigation.RemovePage(this);
        }

        private async void registerButton_Clicked(object sender, EventArgs e)
        {
            string email = emailEntry.Text;
            string login = loginEntry.Text;
            string password = passwordEntry.Text;
            string confirmPassword = passwordConfirmEntry.Text;
            if (ValidateInputs(email, login, password, confirmPassword))
            {
                await RegisterUser(login, email, password);
                await Navigation.PushAsync(new SecondPage());
                Navigation.RemovePage(this);
            }
            
        }

        private bool ValidateInputs(string email, string login, string password, string confirmPassword)
        {
            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(login) ||
                string.IsNullOrEmpty(password) || string.IsNullOrEmpty(confirmPassword))
            {
                DisplayAlert("Ошибка", "Пожалуйста, заполните все поля.", "OK");
                return false;
            }

            if (password != confirmPassword)
            {
                DisplayAlert("Ошибка", "Пароли не совпадают.", "OK");
                return false;
            }

            if (!IsValidPassword(password))
            {
                DisplayAlert("Ошибка", "Пароль должен содержать от 8 до 32 символов, " +
                    "включать заглавные, строчные буквы и цифры", "OK");
                return false;
            }

            return true;
        }

        private bool IsValidPassword(string password)
        {
            var passwordRequirement = new Regex(@"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d]{8,24}$");

            return passwordRequirement.IsMatch(password);
        }

        

        public class FirebaseResponse
        {
            public string IdToken { get; set; }
            public bool Registered { get; set; }
        }

        public async Task<FirebaseResponse> RegisterUser(string login, string email, string password)
        {
            var client = new HttpClient();
            var requestUri = $"https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyBNpyK0Xw_ycD_o8ns7aTkNT6WNXKHUY8s";

            var content = new StringContent(JsonConvert.SerializeObject(new
            {
                email,
                login,
                password,
                returnSecureToken = true
            }), Encoding.UTF8, "application/json");

            var response = await client.PostAsync(requestUri, content);
            var responseString = await response.Content.ReadAsStringAsync();

            if (response.IsSuccessStatusCode)
            {
                var firebaseResponse = JsonConvert.DeserializeObject<FirebaseResponse>(responseString);

                // Сохраняем токен в SecureStorage
                await SecureStorage.SetAsync("UserToken", firebaseResponse.IdToken);

                var firebaseService = new FirebaseService();
                string userUid = await firebaseService.GetUserUidAsync();

                var firebase = new FirebaseClient("https://clensdatabase-default-rtdb.firebaseio.com/");
                await firebase.Child("Users").Child(userUid).PatchAsync(new Dictionary<string, object>
                {
                    ["Login"] = login,
                    ["Password"] = password,
                    ["Email"] = email
                });

                await DisplayAlert("Успех!", "Регистрация прошла успешно.", "ОК");
                return firebaseResponse;
            }
            else
            {
                await DisplayAlert("Ошибка", "Укажите действительный email!", "OK");
                return null;
            }

        }

        private void DeleteSpace(Entry entry)
        {
            entry.TextChanged += (sender, args) =>
            {
                if (args.NewTextValue?.Contains(" ") ?? false)
                {
                    ((Entry)sender).Text = args.OldTextValue; // Убираем пробел
                }
            };
        }

    }
}