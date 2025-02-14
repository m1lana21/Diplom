using System;
using System.Diagnostics;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Firebase.Database;
using System.Globalization;
using Rg.Plugins.Popup.Services;
namespace Clens
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class HistoryPage : ContentPage
    {
        private readonly FirebaseService _firebaseService;
        private readonly FirebaseClient _firebaseClient;
        public HistoryPage()
        {
            InitializeComponent();
            _firebaseService = new FirebaseService();
            _ = LoadHistoryItems();
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
        }

        private async Task LoadHistoryItems()
        {
            try
            {
                var items = await _firebaseService.GetHistoryItems();
                HistoryListView.ItemsSource = items;
            }
            catch (Exception ex)
            {
                await DisplayAlert("Ошибка", ex.Message, "OK");
            }
        }

        public class HistoryItem
        {
            public string Id { get; set; }
            public string EndDate { get; set; }
            public string StartDate { get; set; }
            public string Type { get; set; }
            public DateTime? StartDateParsed
            {
                get
                {
                    DateTime parsedDate;
                    if (DateTime.TryParseExact(StartDate, "dd MMMM yyyy", CultureInfo.GetCultureInfo("ru-RU"), DateTimeStyles.None, out parsedDate))
                    {
                        return parsedDate;
                    }
                    else
                    {
                        return null;
                    }
                }
            }

            public DateTime? EndDateParsed
            {
                get
                {
                    DateTime parsedDate;
                    if (DateTime.TryParseExact(EndDate, "dd MMMM yyyy", CultureInfo.GetCultureInfo("ru-RU"), DateTimeStyles.None, out parsedDate))
                    {
                        return parsedDate;
                    }
                    else
                    {
                        return null;
                    }
                }
            }

            public string WearingDuration
            {
                get
                {
                    if (StartDateParsed.HasValue && EndDateParsed.HasValue)
                    {
                        return (EndDateParsed.Value - StartDateParsed.Value).Days.ToString();
                    }
                    return "Не высчитывается";
                }
            }
        }

        private async void editButton_Clicked(object sender, EventArgs e)
        {
            var button = sender as ImageButton;
            var historyItem = button?.BindingContext as HistoryItem;
            var myPopup = new EditPage(historyItem);
            myPopup.ItemEdited += async () =>
            {
                await LoadHistoryItems();
            };
            await PopupNavigation.Instance.PushAsync(myPopup);
        }

        private async void deleteButton_Clicked(object sender, EventArgs e)
        {
            var button = sender as ImageButton;
            var historyItem = button?.BindingContext as HistoryItem;

            if (historyItem != null)
            {
                bool confirm = await DisplayAlert("Подтверждение", "Вы уверены, что хотите удалить этот элемент?", "Да", "Нет");
                if (confirm)
                {
                    await _firebaseService.DeleteHistoryItem(historyItem);

                    await LoadHistoryItems();
                }
            }
            else
            {
                Debug.WriteLine("HistoryItem is null");
            }
        }
    }
}