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
        CancellationTokenSource _cts;
        const int CheckIntervalHours = 15;

        public override StartCommandResult OnStartCommand(Intent intent, StartCommandFlags flags, int startId)
        {
            Xamarin.Essentials.Platform.Init((Application)Application.Context);
            _cts = new CancellationTokenSource();
            Task.Run(() => RunAsync(_cts.Token), _cts.Token);

            StartForeground(1001, CreateForegroundNotification("Clens работает в фоне"));

            return StartCommandResult.Sticky;
        }

        private async Task RunAsync(CancellationToken token)
        {
            try
            {
                while (!token.IsCancellationRequested)
                {
                    await Task.Delay(TimeSpan.FromSeconds(CheckIntervalHours), token);
                    System.Diagnostics.Debug.WriteLine("ТАЙМЕР");

                    var prefs = Application.Context.GetSharedPreferences("LensPrefs", FileCreationMode.Private);
                    string startDateStr = prefs.GetString("StartDateKeyForPush", null);
                    string type = Preferences.Get("TypeKey", null);

                    System.Diagnostics.Debug.WriteLine($"Получено из Preferences:");
                    System.Diagnostics.Debug.WriteLine($"StartDateKeyForPush: {startDateStr}");
                    System.Diagnostics.Debug.WriteLine($"TypeKey: {type}");

                    if (string.IsNullOrEmpty(startDateStr))
                    {
                        System.Diagnostics.Debug.WriteLine($"StartDateKeyForPush null");
                        continue;
                    }

                    if (string.IsNullOrEmpty(type))
                    {
                        System.Diagnostics.Debug.WriteLine($"TypeKey null");
                        continue;
                    }

                    if (DateTime.TryParse(startDateStr, null, DateTimeStyles.RoundtripKind, out DateTime startDate))
                    {
                        DateTime expectedEnd = type switch
                        {
                            "Однодневные" => startDate.AddDays(1),
                            "Двухнедельные" => startDate.AddDays(14),
                            "Одномесячные" => startDate.AddMonths(1),
                            "Полугодовые" => startDate.AddMonths(6),
                            "Годовые" => startDate.AddYears(1),
                            _ => startDate
                        };

                        System.Diagnostics.Debug.WriteLine($"📆 StartDate: {startDate}, EndDate: {expectedEnd}");

                        if (DateTime.Now.Date >= expectedEnd.Date)
                        {
                            NotificationCenter.Current.Show(new NotificationRequest
                            {
                                NotificationId = 1234,
                                Title = "Пора сменить линзы!",
                                Description = $"Срок носки линз истёк",
                                Android = { Priority = Plugin.LocalNotification.NotificationPriority.High, Ongoing = true}
                            });

                            break;
                        }
                    }
                    else
                    {
                        System.Diagnostics.Debug.WriteLine($"Не удалось распарсить дату: {startDateStr}");
                    }
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"[Service] Ошибка: {ex}");
            }
        }


        private Notification CreateForegroundNotification(string text)
        {
            string channelId = "lens_channel";

            if (Build.VERSION.SdkInt >= BuildVersionCodes.O)
            {
                var channel = new NotificationChannel(channelId, "LensCheck Channel", NotificationImportance.Low);
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
            _cts?.Cancel();
            base.OnDestroy();
        }

        public override IBinder OnBind(Intent intent) => null;
    }
}
