﻿using System;
using Xamarin.Forms;

namespace FaultCodes
{
    /*
     * Function:  pinOutZoom
     * --------------------
     *  Enables zoom on the pinOut
     */
    public static class DoubleExtensions
    {
        public static double Clamp(this double self, double min, double max)
        {
            return Math.Min(max, Math.Max(self, min));
        }
    }

}
