using System;
using System.Collections.Generic;
using System.Linq;
using Newtonsoft.Json;
using Xamarin.Forms;

namespace FaultCodes
{
    public partial class FaultCodeList : ContentPage
    {
        // Globals
        string motCon;
        List<Faults> obj = new List<Faults>();
        List<string> faultCodes = new List<string>();

       /*
        * Function:  FaultCodeList
        * --------------------
        *  inputs: string moCo, List faultList
        *
        *  Takes list of faults from main and sorta each fault code for input controller
        *  Displays list of faults with fault code and fault name
        *
        *  Omitts fault action for AC Controller
        */
        public FaultCodeList(string moCo, List<Faults> faultList)
        {
            // make input controller availible globally 
            motCon = moCo;

            // declare new list to track list object
            // done with corresponding list of strings
            // strigs get displayed on list, corresponding listObject is used to make call when list item is clicked
            List<listObject> faults = new List<listObject>();

            // Iterate through list to find matches
            for (int i = 0; i < faultList.Count; i++)
            {
                // check for name matching moCo
                if(faultList[i].NAME == moCo)
                {
                    // if found, add to lists
                    obj.Add(faultList[i]); 
                    listObject temp = new listObject(); // temp list object to store value if found
                    temp.FAULT_CODE = faultList[i].FAULT_CODE;
                    temp.FAULT = faultList[i].FAULT;
                    faults.Add(temp);

                    // Omitt the action from AC controllers to keep name short
                    if(temp.FAULT.Contains("Action"))
                    {
                        temp.FAULT = temp.FAULT.Substring(0, temp.FAULT.IndexOf("<br/>"));
                    }

                    // Add tempp to string array
                    faultCodes.Add(temp.FAULT_CODE.ToString() + ": " + temp.FAULT.Replace("<br/>", "\n"));
                }
            }

           InitializeComponent();

            // Set source for list 
           fcList.ItemsSource = faultCodes;
        }

        /*
        * Function:  listClicked
        * --------------------
        *  inputs: object sender, ItemTappedEventArgs e
        *
        * onClick for item in list
        * on click, displays info on fault that is clicked
        */
        private void listClicked(object sender, ItemTappedEventArgs e)
        {
            // delare fault code as item clicked
            int faultCode = obj[e.ItemIndex].FAULT_CODE;

            // check for null 
            if (obj != null)
            {
                // declare list of faults to track the applicable faults
                List<Faults> fault = new List<Faults>();

               // Iterate through array to find faults
                for (int i = 0; i < obj.Count(); i++)
                {
                    // check for fault found
                    if (obj[i].FAULT_CODE == faultCode)
                    {
                        // add fault to array
                        fault.Add(obj[i]);
                    }
                }
                // open info page
                Navigation.PushAsync(new printInfo(fault));
            }
            else
            {
                // if null, error
                DisplayAlert("No Content", "Please connect to internet", "OK");
            }
        }
    }

    // listObject declaration
    // takes int and string
    // tracks fault in list
    public class listObject
    {
        public int FAULT_CODE { get; set; }
        public string FAULT { get; set; }
    }
}
