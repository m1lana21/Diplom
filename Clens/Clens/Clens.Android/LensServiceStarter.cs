using Android.Content;
using Xamarin.Forms;
using Clens.Droid;
using Application = Android.App.Application;

[assembly: Dependency(typeof(LensServiceStarter))]
namespace Clens.Droid
{
    public class LensServiceStarter : ILensServiceStarter
    {
        public void StartLensCheckService()
        {
            var intent = new Intent(Application.Context, typeof(LensCheckService));
            Application.Context.StartService(intent);
        }
    }
}
