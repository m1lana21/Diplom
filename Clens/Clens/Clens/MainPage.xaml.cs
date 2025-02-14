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
        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();

            // Проверяем, был ли установлен флажок "Запомнить меня"
            if (Preferences.Get("IsRemembered", false))
            {
                // Получаем сохранённый логин и пароль
                var savedEmail = Preferences.Get("SavedEmail", "");
                var savedPassword = Preferences.Get("SavedPassword", "");

                // Выполняем автоматический вход
                var loginResult = await LoginUser(savedEmail, savedPassword);
                if (loginResult != null && !string.IsNullOrEmpty(loginResult.IdToken))
                {
                    // Переходим на следующую страницу
                    var secPage = new SecondPage();
                    await Navigation.PushAsync(secPage);
                }
                else
                {
                    // Ошибка аутентификации, возможно, данные устарели
                    await DisplayAlert("Ошибка", "Не удалось войти автоматически. Попробуйте снова.", "ОК");
                }
            }
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

                // Если вход успешен, сохраняем данные пользователя
                Preferences.Set("IsRemembered", true);
                Preferences.Set("SavedEmail", email);
                Preferences.Set("SavedPassword", password);

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
                    EmailEntry.Text = null;
                    PasswordEntry.Text = null;
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

        private void Switch_Toggled(object sender, ToggledEventArgs e)
        {
            // Получаем текущее значение переключателя
            bool isChecked = e.Value;

            // Если переключатель включен, то сохраняем данные пользователя
            if (isChecked)
            {
                Preferences.Set("IsRemembered", true);  // Запоминаем, что пользователя нужно запомнить
                Preferences.Set("SavedEmail", EmailEntry.Text);  // Сохраняем логин
                Preferences.Set("SavedPassword", PasswordEntry.Text);  // Сохраняем пароль
            }
            else
            {
                // Если выключен, удаляем сохранённые данные
                Preferences.Remove("IsRemembered");
                Preferences.Remove("SavedEmail");
                Preferences.Remove("SavedPassword");
            }
        }
    }
}
