using Android.Content;
using Xamarin.Forms;
using Clens.Droid;
using Clens;

[assembly: Dependency(typeof(PreferenceService))]
namespace Clens.Droid
{
    public class PreferenceService : IPreferenceService
    {
        private const string PrefName = "LensPrefs";
        private const string DateKey = "StartDateKeyForPush";

        public void SaveStartDate(string date)
        {
            var prefs = Android.App.Application.Context.GetSharedPreferences(PrefName, FileCreationMode.Private);
            var editor = prefs.Edit();
            editor.PutString(DateKey, date);
            editor.Apply();
        }

        public string GetStartDate()
        {
            var prefs = Android.App.Application.Context.GetSharedPreferences(PrefName, FileCreationMode.Private);
            return prefs.GetString(DateKey, null);
        }
    }
}
