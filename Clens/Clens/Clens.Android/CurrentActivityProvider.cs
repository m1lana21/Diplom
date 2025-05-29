// В Android-проекте
using Android.App;
using Android.OS;
using Clens;
using Clens.Droid;
using Plugin.CurrentActivity;
using Xamarin.Forms;
// В Clens.Android
[assembly: Dependency(typeof(CurrentActivityProvider))]
public class CurrentActivityProvider : ICurrentActivityProvider
{
    public void InitActivity()
    {
        var activity = MainActivity.Instance;
        if (activity != null)
        {
            Xamarin.Essentials.Platform.Init(activity, new Android.OS.Bundle());
            CrossCurrentActivity.Current.Init(activity, new Android.OS.Bundle());
        }
    }

    public object GetCurrentActivity()
    {
        return Xamarin.Essentials.Platform.CurrentActivity ??
               CrossCurrentActivity.Current.Activity;
    }
}