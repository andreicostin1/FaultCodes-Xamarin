using Android.Views;
using FaultCodes;
using FaultCodes.Droid;
using Xamarin.Forms;
using PickerRenderer = Xamarin.Forms.Platform.Android.AppCompat.PickerRenderer;
using static Java.Util.ResourceBundle;
using Xamarin.Forms.Platform.Android;

[assembly: ExportRenderer(typeof(CenterPicker), typeof(CenterPickerAndroid))]


namespace FaultCodes.Droid
{
    [System.Obsolete]
    public class CenterPickerAndroid : PickerRenderer
    {
        protected override void OnElementChanged(ElementChangedEventArgs<Picker> e)
        {
            base.OnElementChanged(e);

            if (Control != null)
            {
                Control.Gravity = GravityFlags.CenterHorizontal;
            }
        }
    }
}
