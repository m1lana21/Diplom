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

namespace Clens
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class AuthPage : ContentPage
	{
        private const string FirebaseAPIKey = "AIzaSyBNpyK0Xw_ycD_o8ns7aTkNT6WNXKHUY8s";
        public AuthPage ()
		{
			InitializeComponent ();
		}

        private async void Button_Clicked(object sender, EventArgs e)
        {
            var mainPage = new MainPage();
            await Navigation.PushAsync(mainPage); //тут сделать возврат на предыдущую страницу
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
                DisplayAlert("Ошибка", "Пароль должен содержать не менее 8 символов, " +
                    "включать заглавные и строчные буквы, цифры и специальные символы.", "OK");
                return false;
            }

            return true;
        }

        private bool IsValidPassword(string password)
        {
            var passwordRequirement = new Regex(@"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$");
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
                await DisplayAlert("Успех!", "Регистрация прошла успешно.", "ОК");
                return firebaseResponse;
            }
            else
            {
                await DisplayAlert("Ошибка", "Укажите действительный email!", "OK");
                return null;
            }
        }
    }
}