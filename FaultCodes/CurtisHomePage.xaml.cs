using System;
using System.Collections.Generic;

using Xamarin.Forms;

namespace FaultCodes
{
    public partial class CurtisHomePage : ContentPage
    {
        /*
         * Function:  CurtisHomePage
         * --------------------
         *  opens web browser wtih curtis home page
         */
        public CurtisHomePage()
        {
            InitializeComponent();
            // set page source to curtis home page
            home.Source = "https://www.curtisinstruments.com/";
        }
    }
}
