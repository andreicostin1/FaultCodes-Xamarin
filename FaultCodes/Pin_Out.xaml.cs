using System;
using System.Collections.Generic;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace FaultCodes
{

    public partial class Pin_Out : ContentPage
    {
        /*
         * Function:  Pin_Out
         * --------------------
         *  input: string pin
         */
        public Pin_Out(string pin)
        {
            InitializeComponent();
            // set pinout source to input
            pinOut.Source = pin;
        }

    }
}
