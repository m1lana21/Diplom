using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Clens.Droid;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Xamarin.Forms;
[assembly: Dependency(typeof(MainActivityProvider))]
namespace Clens.Droid
{
   public class MainActivityProvider : IMainActivityProvider
    {
        public object GetMainActivity() => MainActivity.Instance;
    }
}