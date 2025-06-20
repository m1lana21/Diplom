﻿using System;
using Xamarin.Forms;
using Android.App;
using Android.Content.PM;
using Android.Runtime;
using Android.OS;
using Plugin.LocalNotification;
using Android.Content;
using AndroidX.AppCompat.App;
using Plugin.FirebaseAuth;
using Firebase;
using Plugin.CurrentActivity;
using System.Globalization;

namespace Clens.Droid
{
    [Activity(Label = "Clens", Icon = "@drawable/lens", Theme = "@style/MainTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize )]
    public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsAppCompatActivity
    {
        internal static MainActivity Instance { get; private set; }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);

            Instance = this;

            

            base.OnCreate(savedInstanceState);


            AppCompatDelegate.DefaultNightMode = AppCompatDelegate.ModeNightNo;

            NotificationCenter.CreateNotificationChannel();

            typeof(Xamarin.Essentials.Platform)
    .GetProperty("CurrentActivity", System.Reflection.BindingFlags.Static | System.Reflection.BindingFlags.NonPublic)
    ?.SetValue(null, this);

            global::Xamarin.Forms.Forms.Init(this, savedInstanceState);
            Device.SetFlags(new[] { "Shell_TabBasedNavigation" });
            Rg.Plugins.Popup.Popup.Init(this);
            
            NotificationCenter.NotifyNotificationTapped(Intent);
            DependencyService.Get<Clens.ILensServiceStarter>()?.StartLensCheckService();
            LoadApplication(new App());
        }

        protected override void OnNewIntent(Intent intent)
        {
            NotificationCenter.NotifyNotificationTapped(intent);
            base.OnNewIntent(intent);
        }

        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults) 
        { 
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);
            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }

        protected override void OnResume()
        {
            base.OnResume();
            Xamarin.Essentials.Platform.OnResume(this);
        }
    }
}