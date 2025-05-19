using Android.App;
using Plugin.CurrentActivity;
using Clens;
using Xamarin.Forms;

[assembly: Dependency(typeof(Clens.Droid.CurrentActivityProvider))]
namespace Clens.Droid
{
    public class CurrentActivityProvider : ICurrentActivityProvider
    {
        public object GetCurrentActivity()
        {
            return CrossCurrentActivity.Current.Activity;
        }
    }
}
