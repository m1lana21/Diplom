using Android.App;
using Android.Content;
using Android.OS;
using Plugin.LocalNotification;
using System;
using System.Globalization;
using System.Threading;
using System.Threading.Tasks;
using Xamarin.Essentials;

namespace Clens.Droid
{
    [Service]
    public class LensCheckService : Service
    {
        private const int NotificationId = 1234;
        private const int CheckIntervalSeconds = 15;
        private CancellationTokenSource _cts;

        public override StartCommandResult OnStartCommand(Intent intent, StartCommandFlags flags, int startId)
        {
            _cts = new CancellationTokenSource();
            Task.Run(() => RunAsync(_cts.Token), _cts.Token);
            StartForeground(1001, CreateForegroundNotification("Clens отслеживает срок линз"));
            return StartCommandResult.Sticky;
        }

        private async Task RunAsync(CancellationToken token)
        {
            try
            {
                while (!token.IsCancellationRequested)
                {
                    await Task.Delay(TimeSpan.FromSeconds(CheckIntervalSeconds), token);

                    var prefs = Application.Context.GetSharedPreferences("LensPrefs", FileCreationMode.Private);
                    string startDateStr = prefs.GetString("StartDateKeyForPush", null);
                    var type = Preferences.Get("TypeKey", null);

                    System.Diagnostics.Debug.WriteLine($"Проверка линз. Дата: {startDateStr}, Тип: {type}");

                    if (string.IsNullOrEmpty(startDateStr) || string.IsNullOrEmpty(type))
                    {
                        System.Diagnostics.Debug.WriteLine("Данные о линзах не найдены");
                        continue;
                    }

                    if (!DateTime.TryParse(startDateStr, null, DateTimeStyles.RoundtripKind, out var startDate))
                    {
                        System.Diagnostics.Debug.WriteLine("Не удалось распарсить дату");
                        continue;
                    }

                    var expectedEnd = CalculateEndDate(startDate, type);
                    var daysLeft = (expectedEnd - DateTime.Now.Date).Days;

                    System.Diagnostics.Debug.WriteLine($"Дней осталось: {daysLeft}");

                    if (daysLeft <= 3 && ShouldCreateNotification(daysLeft))
                    {
                        CreateNotification(daysLeft);
                        MarkNotificationShown();
                    }
                }
            }
            catch (System.OperationCanceledException)
            {
                System.Diagnostics.Debug.WriteLine("Сервис остановлен");
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Ошибка в сервисе: {ex}");
            }
        }

        private bool ShouldCreateNotification(int daysLeft)
        {
            if (IsServiceRestarted())
            {
                Preferences.Set("ServiceRestarted", "false");
                return true;
            }

            var lastNotificationDate = Preferences.Get("LastNotificationDate", DateTime.MinValue);
            return daysLeft <= 3 && DateTime.Today > lastNotificationDate;
        }

        private bool IsServiceRestarted()
        {
            return bool.Parse(Preferences.Get("ServiceRestarted", "false"));
        }

        private void MarkNotificationShown()
        {
            Preferences.Set("LastNotificationDate", DateTime.Today);
        }

        private void CreateNotification(int daysLeft)
        {
            var message = daysLeft <= 0
                ? "Пора сменить линзы! Срок носки истёк."
                : $"До замены линз осталось {daysLeft} дней";

            NotificationCenter.Current.Show(new NotificationRequest
            {
                NotificationId = NotificationId,
                Title = "Напоминание о линзах",
                Description = message,
                Android =
                {
                    Priority = Plugin.LocalNotification.NotificationPriority.High,
                    Ongoing = false,
                    AutoCancel = true
                }
            });

            System.Diagnostics.Debug.WriteLine($"Показано уведомление: {message}");
        }

        private DateTime CalculateEndDate(DateTime startDate, string type)
        {
            return type switch
            {
                "Однодневные" => startDate.AddDays(1),
                "Двухнедельные" => startDate.AddDays(14),
                "Одномесячные" => startDate.AddMonths(1),
                "Полугодовые" => startDate.AddMonths(6),
                "Годовые" => startDate.AddYears(1),
                _ => startDate
            };
        }

        private Notification CreateForegroundNotification(string text)
        {
            string channelId = "lens_channel";

            if (Build.VERSION.SdkInt >= BuildVersionCodes.O)
            {
                var channel = new NotificationChannel(
                    channelId,
                    "LensCheck Channel",
                    NotificationImportance.Low);

                var manager = (NotificationManager)GetSystemService(NotificationService);
                manager.CreateNotificationChannel(channel);
            }

            return new Notification.Builder(this, channelId)
                .SetContentTitle("Clens")
                .SetContentText(text)
                .SetSmallIcon(Resource.Drawable.lens)
                .Build();
        }

        public override void OnDestroy()
        {
            Preferences.Set("ServiceRestarted", "true");
            _cts?.Cancel();
            NotificationCenter.Current.Cancel(NotificationId);
            base.OnDestroy();
        }

        public override IBinder OnBind(Intent intent) => null;
    }
}