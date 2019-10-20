using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using Newtonsoft.Json;
using Plugin.Connectivity;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace FaultCodes
{
    public partial class printInfo : ContentPage
    {
        // globals for use across functions
        List<Faults> obj = new List<Faults>();

        // strings used for the share functions
        string shareFault = "";
        string shareCause = "";

        /*
         * Function:  printInfo
         * --------------------
         *  inputs: List faults
         *  Enables zoom on the pinOut
         */
        public printInfo(List<Faults> faults)
        {
            // set input to global
            obj = faults;
            InitializeComponent();

            // call print out func
            printOut(faults);
        }

        /*
         * Function:  OnImageNameTapped
         * --------------------
         *  input: object sender, EventArgs args
         *
         *  makes curtis logo clickable and redirects to home page
         */
        void OnImageNameTapped(object sender, EventArgs args)
        {
            Navigation.PushAsync(new CurtisHomePage());
        }

        /*
        * Function:  printOut
        * --------------------
        *  input: list faultsInput
        * prints out fault info
        */
        public void printOut(List<Faults> faultsInput)
        {
            // function variables to keep track of what to print
            string faultToPrint = "";
            string casueToPrint = "";

            // alpahabet array in case of multiple faults per fault code moCo combiantion
            char[] alph = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".ToCharArray();

            // if only one fault per combination
            if (faultsInput.Count == 1)
            {
                // format output
                cont.Text = "Controller: " + faultsInput[0].NAME;
                fc.Text = "Fault Code: " + Convert.ToString(faultsInput[0].FAULT_CODE);
                // replace HTML line break with "\n"
                fault.Text = "Fault: " + faultsInput[0].FAULT.Replace("<br/>", "\n");
                cause.Text = "Fault Cause: " + faultsInput[0].CAUSE.Replace("<br/>", "\n");

                //format the share variables 
                shareFault = faultsInput[0].FAULT.Replace("<br/>", "\n");
                shareCause = faultsInput[0].CAUSE.Replace("<br/>", "\n");
            }
            else
            {
                // if more than one fault to print

                // format and store first iteration
                faultToPrint = alph[0] + ". " + faultToPrint + faultsInput[0].FAULT.Replace("<br/>", "\n");
                casueToPrint = alph[0] + ". " + casueToPrint + faultsInput[0].CAUSE.Replace("<br/>", "\n");

                // iterate through remaining and format and store accordingly
                for (int i = 1; i < faultsInput.Count(); i++)
                {
                    faultToPrint = faultToPrint + "\n_____________________\n" + alph[i] + ". " + faultsInput[i].FAULT.Replace("<br/>", "\n");
                    casueToPrint = casueToPrint + "\n______________________\n" + alph[i] + ". " + faultsInput[i].CAUSE.Replace("<br/>", "\n");
                }

                // set share variabkles to newly formatted and stored text
                shareFault = faultToPrint;
                shareCause = casueToPrint;

                // format and set output 
                cont.Text = "Controller: " + faultsInput[0].NAME;
                fc.Text = "Fault Code: " + Convert.ToString(faultsInput[0].FAULT_CODE);
                fault.Text = "Fault: \n" + faultToPrint;
                cause.Text = "Fault Cause: \n" + casueToPrint;

            }
        }

        /*
       * Function:  manualButton_Clicked()
       * --------------------
       *  inputs: object sender, EventArgs args
       *
       *  onClick for manual
       *  Sends to manual display page 
       */
        private async void manualButton_Clicked(object sender, EventArgs e)
        {
            if (CrossConnectivity.Current.IsConnected)
            {
                // check for invalid link
                if (obj[0].LINK == null)
                {
                    // display alert if true
                    await DisplayAlert("Invalid Input", "Please select valid Motor Controller/Fault Code pair", "OK");
                }
                else
                {
                    // else, format link, make sure is valid URL
                    var man = obj[0].LINK;
                    if (man == "acError.html" || CheckURLValid(man))
                    {
                        string code = await getCode();
                        if (code == get_code_local())
                        {
                            try
                            {
                                if (CrossConnectivity.Current.IsConnected)
                                {
                                    HttpClient Client = new HttpClient();
                                    //URL for the content or JSON data.
                                    string myURL = "https://faultcodes.curtisinstruments.com/ac_man.php";
                                    //Gettting the content from the web

                                    string linkCONTENT = await Client.GetStringAsync(myURL);
                                    var manLink = JsonConvert.DeserializeObject<List<acManLink>>(linkCONTENT);

                                    acManLink found = new acManLink();

                                    for (int i = 0; i < manLink.Count(); i++)
                                    {
                                        if (manLink[i].NAME == obj[0].NAME)
                                        {
                                            found = manLink[i];

                                        }
                                    }

                                    if (found.NON_DUAL_DRIVE == "N:A" || found.DUAL_DRIVE == "N:A")
                                    {
                                        if (found.NON_DUAL_DRIVE == "N:A")
                                        {
                                            string url = "https://faultcodes.curtisinstruments.com/media/ac_man/" + found.DUAL_DRIVE;
                                           await Navigation.PushAsync(new Manual(url, found.NAME));
                                        }
                                        else
                                        {
                                            string url = "https://faultcodes.curtisinstruments.com/media/ac_man/" + found.NON_DUAL_DRIVE;
                                            await Navigation.PushAsync(new Manual(url, found.NAME));
                                        }
                                    }
                                    else
                                    {
                                        string action = await DisplayActionSheet("Which Manual?", "Cancel", null, "Standard", "Dual Drive");


                                        if (action == "Dual Drive")
                                        {
                                            string url = "https://faultcodes.curtisinstruments.com/media/ac_man/" + found.DUAL_DRIVE;
                                            await Navigation.PushAsync(new Manual(url, found.NAME));


                                        }
                                        else if (action == "Standard")
                                        {
                                            string url = "https://faultcodes.curtisinstruments.com/media/ac_man/" + found.NON_DUAL_DRIVE;
                                            await Navigation.PushAsync(new Manual(url, found.NAME));


                                        }
                                    }

                                }
                                else
                                {
                                    await DisplayAlert("No Content", "Please connect to internet", "OK");

                                }
                            }
                            catch (Exception ex)
                            {
                                // print error to console
                                Console.Write(ex);
                            }
                        }
                        else
                        {
                            // if URL not valid, display error
                            await DisplayAlert("Manual Not Available", "Please connect your OEM", "OK");
                        }

                    }
                    else
                    {
                        // if valid, send to manual page
                        await Navigation.PushAsync(new Manual(man, obj[0].NAME));
                    }
                }
                
            }
            else
            {
                await DisplayAlert("No Content", "Please connect to internet", "OK");
            }
        }

        public static string get_code_local()
        {
            if (Application.Current.Properties.ContainsKey("ac_Access_Code"))
            {
                //assigning Application.Current.Properties data
               return Application.Current.Properties["ac_Access_Code"].ToString();
            }
            return null;
        }

        public async Task<string> getCode()
        {
            try
            {
                if (CrossConnectivity.Current.IsConnected)
                {
                    HttpClient Client = new HttpClient();
                    //URL for the content or JSON data.
                    string myURL = "https://faultcodes.curtisinstruments.com/acAccess.php";
                    //Gettting the content from the web

                    string code_from_online = await Client.GetStringAsync(myURL);

                    var codeData = JsonConvert.DeserializeObject<List<acAccessCode>>(code_from_online);
                    string codeOnline = codeData[0].code;

                    return codeOnline;
                }
                else
                {
                    await DisplayAlert("No Internet", "Manual not Availible offline", "OK");
                }
            }
            catch (Exception ex)
            {
                // print error to console
                Console.Write(ex);

            }
            return null;
        }

        /*
         * Function:  pinOutButton_Clicked
         * --------------------
         *  inputs: object sender, EventArgs args
         *
         *  onClick for pinOut
         *  Sends to pinOut display page 
         */
        private void pinOutButton_Clicked(object sender, EventArgs e)
        {
            // check to see if valid like
            if (obj[0].PIN == null)
            {
                // if not, display alert
                DisplayAlert("Invalid Input", "Please select valid Motor Controller/Fault Code pair", "OK");
            }
            else
            {
                // if valid, format link to pin out and show pinOut page
                var img = obj[0].PIN;
                string pinUri = "https://faultcodes.curtisinstruments.com/" + img;
                Navigation.PushAsync(new Pin_Out(pinUri));
            }
        }

        /*
         * Function:  share_clickAsync
         * --------------------
         *  input: object sender, EventArgs e
         *  onClick for share button, share fault
         */
        private async void share_clickAsync(object sender, EventArgs e)
        {
            // set text to share
            var text = "Fault Observed: \n" + "Controller: " + obj[0].NAME + "\nFault Code: " + obj[0].FAULT_CODE + "\nFault: " + shareFault + "\nCause: " + shareCause;
            var title = "Fault " + obj[0].FAULT_CODE + " For Controller " + obj[0].NAME;

            // await share with data given
            await Share.RequestAsync(new ShareTextRequest
            {
                Text = text,
                Title = title,
                Subject = title
            });
        }

        /*
         * Function:  CheckURLValid
         * --------------------
         *  input: string source
         *  checks if string is valid URL
         *  return bool
         */
        public static bool CheckURLValid(string source)
        {
            Uri uriResult;
            return Uri.TryCreate(source, UriKind.Absolute, out uriResult) && uriResult.Scheme == Uri.UriSchemeHttp;
        }
    }
}