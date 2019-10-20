using System;
using System.Collections.Generic;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace FaultCodes
{
    /*
     * Function:  Manual
     * Extension: ContentPage
     * --------------------
     *  Manual
     */
    public partial class Manual : ContentPage
    {
        // Global variables manual, name
        string manual = "";
        string name = "";

       /*
        * Function:  Manual
        * --------------------
        *  input: string man, string moCo
        *  Manual
        */
        public Manual(string man, string moCo)
        {
            // Set inputs to global variables for use in other functions
            name = moCo;
            manual = man;

            // Initialize Component
            InitializeComponent();

            // On iOS, use native pdf viewer
            if (Device.RuntimePlatform == Device.iOS)
            {
                browser.Source = man;
            }
            else
            {
                // On Android, use google pdf viewer
                browser.Source = "https://docs.google.com/viewer?f&embedded=true&url=" + man;
            }
        }

        /*
         * Function:  shareMan_clickAsync
         * --------------------
         *  input: object sender, EventArgs e
         *  onClick for share button, share link to manual
         */
        private async void shareMan_clickAsync(object sender, EventArgs e)
        {
            if(manual.Contains("media/ac_man"))
            {
                await DisplayAlert("Sharing Not Availivle", "This manual is not availible for sharing", "OK");
            }
            else
            {
                // await share, set share attributes
                await Share.RequestAsync(new ShareTextRequest
                {
                    Title = "Link To Manual for Controller " + name + "\n",
                    Text = "Link To Manual for Controller " + name + ":\n",
                    Uri = manual
                });
            }
           
        }
    }
}
