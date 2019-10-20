using Xamarin.Forms;

namespace FaultCodes
{
    public partial class Video : ContentPage
    {
        /*
         * Function:  Video
         * Extension: ContentPage
         * --------------------
         *  Plays tutorial video when button is clicked
         */
        public Video()
        {
            InitializeComponent();

            // Sets tutorial video player source to tutorial video link on curtis server 
            tutorial.Source = "https://cdn.curtisinstruments.com/videos/Curtis_Reading_Fault_Codes.mp4";
        }
    }
}
