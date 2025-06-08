using Acr.UserDialogs.Infrastructure;
using Clens;
using CloudinaryDotNet;
using CloudinaryDotNet.Actions;
using dotenv.net;
using Firebase.Auth;
using Firebase.Database;
using Firebase.Database.Query;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Plugin.FirebaseAuth;
using Rg.Plugins.Popup.Services;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.PlatformConfiguration;
using Xamarin.Forms.Xaml;
using static Clens.HistoryPage;
using static CloudinaryService;

namespace Clens
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class AccountPage : ContentPage
    {
        private ObservableCollection<CloudinaryFile> _files = new ObservableCollection<CloudinaryFile>();
        private readonly CloudinaryService _cloudinaryService = new CloudinaryService();
        private string _currentUserId;
        public string Email { get; set; }
        public string Password { get; set; }


        public AccountPage()
        {
            InitializeComponent();
            GetUsername();
            GetEmail();
            FilesListView.ItemsSource = _files;
            LoadFiles();
        }



        protected override void OnAppearing()
        {
            base.OnAppearing();
        }

        private async void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            var confirmExit = await DisplayAlert("Выход", "Вы действительно хотите выйти?", "Да", "Нет");

            if (confirmExit)
            {
                SecureStorage.Remove("UserToken");
                Preferences.Set("IsRemembered", false);

                Application.Current.MainPage = new NavigationPage(new MainPage())
                {
                    BarBackgroundColor = Color.FromHex("#B5DDA4"),
                    BarTextColor = Color.Black
                };
            }
        }


        private async void GetUsername()
        {
            var firebase = new FirebaseClient("https://clensdatabase-default-rtdb.firebaseio.com/");
            var firebaseService = new FirebaseService();
            string userUid = await firebaseService.GetUserUidAsync();
            var login = await firebase
                .Child("Users")
                .Child(userUid)
                .Child("Login")
                .OnceSingleAsync<string>();
            LoginLabel.Text = login;
        }
        private async void GetEmail()
        {
            var firebase = new FirebaseClient("https://clensdatabase-default-rtdb.firebaseio.com/");
            var firebaseService = new FirebaseService();
            string userUid = await firebaseService.GetUserUidAsync();
            var email = await firebase
                .Child("Users")
                .Child(userUid)
                .Child("Email")
                .OnceSingleAsync<string>();
            EmailLabel.Text = email;
        }


        public async Task<string> UserUIDAsync()
        {
            var firebaseService = new FirebaseService();
            string userId = await firebaseService.GetUserUidAsync();
            return userId;
        }

        private async void AddButton_Clicked(object sender, EventArgs e)
        {
            try
            {
                var status = await Permissions.CheckStatusAsync<Permissions.StorageRead>();
                if (status != PermissionStatus.Granted)
                {
                    status = await Permissions.RequestAsync<Permissions.StorageRead>();
                    if (status != PermissionStatus.Granted)
                    {
                        await DisplayAlert("Ошибка", "Требуется разрешение на чтение файлов", "OK");
                        return;
                    }
                }

                var fileResult = await FilePicker.PickAsync(PickOptions.Default);

                if (fileResult == null) return;

                var ext = Path.GetExtension(fileResult.FileName)?.ToLower();
                if (ext != ".jpg" && ext != ".jpeg" && ext != ".png" && ext != ".pdf")
                {
                    await DisplayAlert("Ошибка", "Можно загружать только JPG, PNG и PDF файлы", "OK");
                    return;
                }

                string userId = await UserUIDAsync();
                string folderPath = $"users/{userId}";

                using (var stream = await fileResult.OpenReadAsync())
                {
                    bool isImage = ext == ".jpg" || ext == ".jpeg" || ext == ".png";

                    var uploadResult = isImage
                        ? await UploadImageAsync(stream, fileResult.FileName, folderPath)
                        : await UploadFileAsync(stream, fileResult.FileName, folderPath);

                    if (uploadResult.Error == null)
                    {
                        await DisplayAlert("Успех", "Файл загружен!", "OK");
                        LoadFiles();
                    }
                    else
                    {
                        await DisplayAlert("Ошибка", uploadResult.Error.Message, "OK");
                    }
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", ex.Message, "OK");
            }
        }


        private async Task<ImageUploadResult> UploadImageAsync(Stream stream, string fileName, string folderPath)
        {
            var uploadParams = new ImageUploadParams
            {
                File = new FileDescription(fileName, stream),
                PublicId = $"{folderPath}/{Path.GetFileNameWithoutExtension(fileName)}_{Guid.NewGuid()}",
                Folder = folderPath,
                Overwrite = false,
                QualityAnalysis = true
            };

            return await CloudinaryService.Instance.UploadAsync(uploadParams);
        }

        private async Task<RawUploadResult> UploadFileAsync(Stream stream, string fileName, string folderPath)
        {
            var uploadParams = new RawUploadParams
            {
                File = new FileDescription(fileName, stream),
                PublicId = $"{folderPath}/{Path.GetFileNameWithoutExtension(fileName)}_{Guid.NewGuid()}",
                Folder = folderPath,
            };

            return await CloudinaryService.Instance.UploadAsync(uploadParams);
        }

        private async void LoadFiles()
        {
            Debug.WriteLine("LoadFiles вызван");
            try
            {
                IsBusy = true;
                _currentUserId = await UserUIDAsync();
                Debug.WriteLine($"ЮЗЕР АЙДИ: {_currentUserId}");
                var files = await _cloudinaryService.GetUserFilesAsync(_currentUserId);
                Debug.WriteLine($"Загружено файлов: {files.Count()}");
                foreach (var f in files)
                {
                    Debug.WriteLine($"Файл: {f.Filename}, URL: {f.Url}, PublicId: {f.PublicId}");
                }
                _files.Clear();
                foreach (var file in files)
                {
                    _files.Add(file);
                }

            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", ex.Message, "OK");
            }
            finally
            {
                IsBusy = false;
            }
        }

        private async void DeleteButton_Clicked(object sender, EventArgs e)
        {
            _currentUserId = await UserUIDAsync();
            if (sender is ImageButton button && button.CommandParameter is string publicId)
            {
                bool confirm = await DisplayAlert("Подтверждение",
                    "Удалить этот файл?", "Да", "Нет");

                if (confirm)
                {
                    try
                    {
                        IsBusy = true;
                        await _cloudinaryService.DeleteFileAsync(publicId, _currentUserId);
                        LoadFiles();
                    }
                    catch (Exception ex)
                    {
                        await DisplayAlert("Ошибка", ex.Message, "OK");
                    }
                    finally
                    {
                        IsBusy = false;
                    }
                }
            }
        }

        private async void FilesListView_ItemTapped(object sender, ItemTappedEventArgs e)
        {
            if (e.Item is CloudinaryFile file)
            {
                try
                {
                    await Browser.OpenAsync(file.Url, BrowserLaunchMode.SystemPreferred);
                }
                catch (Exception ex)
                {
                    await DisplayAlert("Ошибка", $"Не удалось открыть файл: {ex.Message}", "OK");
                }
                ((ListView)sender).SelectedItem = null;
            }
        }

        private void ImageButton_Clicked(object sender, EventArgs e)
        {

        }
    }
}