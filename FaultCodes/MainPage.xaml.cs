// Includes 
using Acr.UserDialogs;
using Newtonsoft.Json;
using Plugin.Connectivity;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using ZXing.Net.Mobile.Forms;

// Namespace

namespace FaultCodes
{
    [DesignTimeVisible(false)]

    /*
     * Function:  MainPage
     * Extension: ContentPage
     * --------------------
     *  Main
     */
    public partial class MainPage : ContentPage
    {
        // Globals
        bool isLightOn; // Global tracking Torch status
        public static string content = ""; // Content
        public static string barcodeContent = ""; // Content for barcode scanner 
        public static List<string> names = new List<string>(); // Tracker for controller names
        public static List<Faults> Items = new List<Faults>();
        /*
        * Function:  MainPage() 
        * --------------------
        *  MainPage, gets called on page start
        */
        public MainPage()
        {
            InitializeComponent(); //initialize all componenets
            fcEntry.Text = ""; // Set fcEntry to null
            GetPost(); //Gets Post data
        }

        /*
        * Function:  GetPost() 
        * --------------------
        *  Called from main, gets data from storage,
        *  or from internet if first launch
        */
        public async void GetPost()
        {
            // Check if first launch of app
            if (!(Application.Current.Properties.ContainsKey("FirstLaunch")))
            {
                //if true, get data from internet
                await getDataFirst();
                Application.Current.Properties["FirstLaunch"] = false; // Set key "First Launch" after first launch 
            }
            else
            {
                content = get_post_data(); // Set content 
                barcodeContent = get_barcode_data(); //Set barcodeContent
                fillMcPicker();
            }

            if (content == "")
            {
                await getDataFirst();
            }
        }

        /*
        * Function:  GetDataFirst() 
        * --------------------
        *  Called from GetPost() if it is first launch of app
        *  Downloads JSON data from API on internet
        *  Sets data to be stored in local storage for future use
        */
        public async Task getDataFirst()
        {
            try
            {
                if (CrossConnectivity.Current.IsConnected)
                {
                    HttpClient Client = new HttpClient();
                    //URL for the content or JSON data.
                    string myURL = "https://faultcodes.curtisinstruments.com/api.php";
                    string barcodeURL = "https://faultcodes.curtisinstruments.com/barcodeApi.php";
                    //Gettting the content from the web
                    content = await Client.GetStringAsync(myURL);
                    barcodeContent = await Client.GetStringAsync(barcodeURL);
                    //Test to see the data or content from web in the Debug console.
                    set_post_data(content);
                    set_barcode_data(barcodeContent);


                    fillMcPicker(); //Fill Picker with motor controller names
                }
            }
            catch (Exception ex)
            {
                // print error to console
                Console.Write(ex);

                fillMcPicker();
            }
        }

        /*
        * Function:  fillMcPicker(Picker mcPicker) 
        * --------------------
        *  inputs: Picker mcPicker
        *
        *  Takes a picker object, fills it with data taken from json data in local storage
        */
        public void fillMcPicker()
        {
            //Deseriualize JSON data
            Items = JsonConvert.DeserializeObject<List<Faults>>(content);

            //Iterate through JSON data, store names
            for (int i = 0; i < Items.Count(); i++)
            {
                if (Items[i] != null)
                {
                    names.Add(Items[i].NAME); // Add name to names list
                }
            }
            names = names.Distinct().ToList(); // Set names to only include distinct motor controller names
            names.Sort(); // Sort list
            mcPicker.Items.Clear();

            for (int i = 0; i < names.Count(); i++)
            {
                if (names[i] != null)
                {
                    mcPicker.Items.Add(names[i]); // Add items to list
                }
            }
            mcPicker.SelectedIndex = 0; // Auto select first item in list
        }

        /*
        * Function:  downloadAll() 
        * --------------------
        *  inputs: object sender, EventArgs e
        *
        *  Bar Button item "refresh"
        *  if clicked, redownloads JSON data from API
        */
        private async void downloadAll(object sender, EventArgs e)
        {
            // try catch for error
            try
            {
                // Test if connected to internet, do nothing if not
                if (CrossConnectivity.Current.IsConnected)
                {
                    // Get data
                    await getDataFirst();

                }
            }
            catch (Exception ex) // catch
            {
                // print error to console
                Console.Write(ex);
            }
        }

        private void aboutClick(object sender, EventArgs args)
        {
            Navigation.PushAsync(new AboutPage());
        }

        /*
         * Function:  barcodeScanner()
         * --------------------
         *  inputs: object sender, EventArgs args
         *
         *  onClick for barcode scanner button 
         */
        private async void barcodeScanner(object sender, EventArgs args)
        {
            // Gets barcode data for converting part number to model number
            // Data stored locally 
            var barcodeData = JsonConvert.DeserializeObject<List<Barcode>>(barcodeContent);

            // Config scanner
            var overlay = new ZXingDefaultOverlay
            {
                ShowFlashButton = false, // Show Flash button off
                // Messages shown on top and bottom of scanner 
                TopText = "Scan Part Number Barcode",
                BottomText = "Motor Controller Will Be Selected Once Scanned",
            };

            overlay.BindingContext = overlay; // Declare overlays

            // New scanner page 
            var scan = new ZXingScannerPage(null, overlay);

            // Wait for scanner to return, pass it the scanner config
            await Navigation.PushAsync(scan);
            if (Device.RuntimePlatform == Device.iOS)
            {
                scan.AutoFocus(); // Autofocus if iOS
            }
            if (isLightOn == true)
            {
                scan.ToggleTorch(); // Turn torch on if user had it on before
            }

            // On return result 
            scan.OnScanResult += (result) =>
            {
                // Begin on main thread
                Device.BeginInvokeOnMainThread(async () =>
                {
                    // Controller and model number result varibales declared 
                    string controllerToSelect = "";
                    int scannerResult = 0;

                    // Await scanner to return 
                    await Navigation.PopAsync();

                    try
                    {
                        scannerResult = Int32.Parse(result.Text); // Set scanner result to int if possible
                    }
                    catch (FormatException)
                    {
                        // if not possible, catch error and display invalid barcode popup 
                        await DisplayAlert("Invalid Barcode", "Please scan the Part Number Barcode on a Curtis Motor Controller", "OK");
                        scannerResult = 0; // Set scanner result to 0, error
                    }

                    // if result has been read
                    if (scannerResult != 0)
                    {
                        // Iterate through the data
                        for (int i = 0; i < barcodeData.Count(); i++)
                        {
                            // Check for part number 
                            if (barcodeData[i].Part == scannerResult)
                            {
                                // if found, set controller to corresponding model number 
                                controllerToSelect = barcodeData[i].Model;
                            }
                        }

                        // Iterate through names to find index to set picker to
                        for (int i = 0; i < names.Count(); i++)
                        {
                            // Check for name 
                            if (names[i] == controllerToSelect)
                            {
                                // If found, set selectedIndex to index it was found at
                                mcPicker.SelectedIndex = i;

                                // Turn torch off when scanner is turned off and code is found
                                isLightOn = false;
                            }
                        }

                        // if picker is 0 and fault code isn't display error popup 
                        if (mcPicker.SelectedIndex == 0 && controllerToSelect != names[0])
                        {
                            await DisplayAlert("Invalid Barcode", "Please scan the Part Number Barcode on a Curtis Motor Controller", "OK");
                        }
                    }

                });
            };


        }


        /*
         * Function:  onImageNameTapped()
         * --------------------
         *  inputs: object sender, EventArgs args
         *
         *  onClick for Curtis logo
         */
        void OnImageNameTapped(object sender, EventArgs args)
        {
            // onClick, push async to CurtisHomePage()
            // CurtisHomePage() is webview with source of curtis home page
            Navigation.PushAsync(new CurtisHomePage());
        }

        /*
         * Function:  lightOn()
         * --------------------
         *  inputs: object sender, EventArgs args
         *
         *  onClick for torch
         *  Toggles torch
         */
        public async void lightOn(object sender, EventArgs args)
        {
            // try catch for device support
            try
            {
                // toggle light on or off
                if (isLightOn)
                {
                    // await turn off and set glboal isLightOn to false
                    await Flashlight.TurnOffAsync();
                    isLightOn = false;
                }
                else
                {
                    // await turn on and set global isLightOn to true
                    await Flashlight.TurnOnAsync();
                    isLightOn = true;
                }

            }
            catch (FeatureNotSupportedException fnsEx)
            {
                // print error to console
                Console.Write(fnsEx);
                // catch feature not supported, display alert
                await DisplayAlert("Device Not Supported", "This device does not support a flashlight", "OK");
            }
            catch (PermissionException pEx)
            {
                // print error to console
                Console.Write(pEx);
            }
            catch (Exception ex)
            {
                // print error to console
                Console.Write(ex);
            }

        }

        /*
         * Function:  Button_Clicked
         * --------------------
         *  inputs: object sender, EventArgs args
         *
         *  onClick for submit button
         *  Takes motor controller and fault code and sends to next page to display data
         *  Or sends to listView to show list of all faults
         */
        private void Button_Clicked(object sender, EventArgs e)
        {
            // Get controller and fault code from input fields
            string motCon = mcPicker?.SelectedItem.ToString();
            int faultCode = 0;
            int.TryParse(fcEntry.Text, out faultCode);

            // Check for empty content
            if (content != "")
            {
                // List faultsForDisplay to track which faults apply to the combination of controller and fault code
                List<Faults> faultsForDisplay = new List<Faults>();

                // check for no input to faultCode
                if (fcEntry.Text == "")
                {
                    // if true, display list of all faults for controller selected
                    Navigation.PushAsync(new FaultCodeList(motCon, Items));
                }
                else // if faultCode is entered
                {
                    // Iterate through JSON data
                    for (int i = 0; i < Items.Count(); i++)
                    {
                        // Check for combinations that are true
                        // Corresponding motor controller and fault code
                        if (Items[i].NAME == motCon && Items[i].FAULT_CODE == faultCode)
                        {
                            // if combination found, add to the list faultsForDisplay
                            faultsForDisplay.Add(Items[i]);
                        }
                    }
                    // if no combination has been found
                    if (faultsForDisplay.Count() == 0)
                    {
                        // Easter egg
                        if (fcEntry.Text == "3.1415926")
                        {
                            // display alert of invalid input 
                            DisplayAlert("We Bring The Magic", "To The Customer", "Rainbow!");
                            fcEntry.Text = ""; // reset entry box to empty
                        }
                        else
                        {
                            // display alert of invalid input 
                            DisplayAlert("Invalid Input", "Please select valid Motor Controller/Fault Code pair", "OK");
                            fcEntry.Text = ""; // reset entry box to empty
                        }
                    }
                    else
                    {
                        fcEntry.Text = ""; // reset entry box to empty
                        // if combination has been found, open new page, give it faultsForDisplay
                        Navigation.PushAsync(new printInfo(faultsForDisplay));
                    }
                }
            }
            else
            {
                // if no content, prompt user to connect to internet 
                DisplayAlert("No Content", "Please connect to internet", "OK");
            }
        }

        /*
       * Function:  TutorialButton_Clicked()
       * --------------------
       *  inputs: object sender, EventArgs args
       *
       *  onClick for tutorialButton
       *  Sends to video player to play tutorial
       */
        private void TutorialButton_Clicked(object sender, EventArgs e)
        {
            // navigate async to video tutorial
            Navigation.PushAsync(new Video());
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
                // get motor controller as string
                string motCon = mcPicker?.SelectedItem.ToString();

                // check for empty content 
                if (content != "")
                {
                    // faultsToDisplayManual list of type Faults
                    List<Faults> faultsToDisplayManual = new List<Faults>();

                    // Iterate through JSON data 
                    for (int i = 0; i < Items.Count(); i++)
                    {
                        // if Name matches motor controller
                        // only need to find one for that name, manual is the same for all 
                        if (Items[i].NAME == motCon)
                        {
                            // add to list 
                            faultsToDisplayManual.Add(Items[i]);

                            // break
                            break;
                        }
                    }

                    // if list == null 
                    if (faultsToDisplayManual == null)
                    {
                        // display alert 
                        await DisplayAlert("Invalid Input", "Please select valid Motor Controller", "OK");
                    }
                    else
                    {
                        // if list is not null, enters loop

                        // string man set to link
                        string man = faultsToDisplayManual[0].LINK;

                        // check for valid URL
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
                                            if (manLink[i].NAME == motCon)
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
                                    //await DisplayAlert("Manual Will Be Displayed", "You are approved", "OK");
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
                            await Navigation.PushAsync(new Manual(man, faultsToDisplayManual[0].NAME));
                        }
                    }
                }
                else
                {
                    // if content is empty, prompt user to connect to internet 
                    await DisplayAlert("No Content", "Please connect to internet", "OK");
                }
            }
            else
            {
                await DisplayAlert("No Content", "Please connect to internet", "OK");
            }

        }

        /*
         * Function:  checkURLValid()
         * --------------------
         *  inputs: source
         *
         *  checks if string input is a valud url
         *  retuns bool
         */
        public static bool CheckURLValid(string source)
        {
            Uri uriResult; // declares string a URI

            // returns bool of if valid URL
            return Uri.TryCreate(source, UriKind.Absolute, out uriResult) && uriResult.Scheme == Uri.UriSchemeHttp;
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
            // get selected motor controller in string 
            string motCon = mcPicker?.SelectedItem.ToString();

            // check for empty content 
            if (content != "")
            {
                // list for link to pin 
                List<Faults> faultPin = new List<Faults>();

                // Iterate through JSON data 
                for (int i = 0; i < Items.Count(); i++)
                {
                    // check for matching data of motor controller 
                    // only need one, all pin out are same for same controller
                    if (Items[i].NAME == motCon)
                    {
                        // add first object found 
                        faultPin.Add(Items[i]);

                        // break
                        break;
                    }
                }

                // check for empty list
                if (faultPin == null)
                {
                    // display alert if no data found 
                    DisplayAlert("Invalid Input", "Please select valid Motor Controller", "OK");
                }
                else
                {
                    // if datya found, declare string img as link to image
                    string img = faultPin[0].PIN;

                    // add web location to front of URL
                    string pinUri = "https://faultcodes.curtisinstruments.com/" + img;

                    // naviagte to pin out page
                    Navigation.PushAsync(new Pin_Out(pinUri));
                }
            }
            else
            {
                // display alert if content is empty 
                DisplayAlert("No Content", "Please connect to internet", "OK");
            }
        }


        /*
         * Function:  set_post_data
         * --------------------
         *  inputs: string json
         *
         *  sets properties in local data at "post_data" to json data
         *  This is how local storage is done for fault info
         */
        public static void set_post_data(string json)
        {
            //assigning Application.Current.Properties data to fault data 
            Application.Current.Properties["post_data"] = json;
        }

        /*
         * Function:  get_post_data
         * --------------------
         *
         *  returns post data for fault info
         */
        public static string get_post_data()
        {
            // checks if local data exists 
            if (Application.Current.Properties.ContainsKey("post_data"))
            {
                // if it does, return exisiting data in string format
                return Application.Current.Properties["post_data"].ToString();
            }

            // if data doesn't exist, return null
            return null;
        }

        // barcode methods

        /*
         * Function:  set_barcode_data
         * --------------------
         *  inputs: string json
         *
         *  sets properties in local data at "barcode" to json barcode data
         *  This is how local storage is done for barcode info
         */
        public static void set_barcode_data(string json)
        {
            //assigning Application.Current.Properties data 
            Application.Current.Properties["barcode"] = json;
        }

        /*
        * Function:  get_barcode_data
        * --------------------
        *
        *  returns post data for fault info
        */
        public static string get_barcode_data()
        {
            // checks if data exists 
            if (Application.Current.Properties.ContainsKey("barcode"))
            {
                // if data does exist, return it in string format
                return Application.Current.Properties["barcode"].ToString();
            }

            // if data does not exist, return null;
            return null;
        }

        public static string get_code_local()
        {
            if (Application.Current.Properties.ContainsKey("ac_Access_Code"))
            {
                //assigning Application.Current.Properties data
                string s = Application.Current.Properties["ac_Access_Code"].ToString();
                return s;
            }
            return null;
        }

        public static void set_code(string json)
        {
            //assigning Application.Current.Properties data 
            Application.Current.Properties["ac_Access_Code"] = json;
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

                    string acManCode = await Client.GetStringAsync(myURL);

                    var codeData = JsonConvert.DeserializeObject<List<acAccessCode>>(acManCode);
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
    }

        // decleration of struct in class for Fault
        public class Faults
        {
            public string NAME { get; set; }
            public int FAULT_CODE { get; set; }
            public string FAULT { get; set; }
            public string CAUSE { get; set; }
            public string LINK { get; set; }
            public string PIN { get; set; }
        }

        // decleration of struct in class for Barcode
        public class Barcode
        {
            public int Part { get; set; }
            public string Model { get; set; }
        }

        public class acAccessCode
        {
            public string code { get; set; }
        }

        public class acManLink
        {
            public string NAME { get; set; }
            public string DUAL_DRIVE { get; set; }
            public string NON_DUAL_DRIVE { get; set; }
        }
    }

