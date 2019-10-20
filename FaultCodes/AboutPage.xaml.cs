using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Threading.Tasks;
using Acr.UserDialogs;
using Newtonsoft.Json;
using Plugin.Connectivity;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace FaultCodes
{
    public partial class AboutPage : ContentPage
    {
        public AboutPage()
        {
            InitializeComponent();
        }

        public async void ACman(object sender, EventArgs ag)
        {
            string input;
            PromptResult pResult = await UserDialogs.Instance.PromptAsync(new PromptConfig
            {
                InputType = InputType.Default,
                OkText = "Submit",
                Title = "Credentials",
            });
            if (pResult.Ok && !string.IsNullOrWhiteSpace(pResult.Text))
            {
                input = pResult.Text;
                string code_online = await getCode(); 
                if(input == code_online)
                {
                    await DisplayAlert("Engineer Credentials Unlocked", "You can now access all AC Manuals", "OK");
                    set_code(code_online);
                }
                else
                {
                  await DisplayAlert("Engineer Credentials Not Availible", "Contact Curtis Instruments for Access Code", "OK");
                }
            }
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
                    

                    set_code(codeOnline);
                    return codeOnline;

                }
                
            }
            catch (Exception ex)
            {
                // print error to console
                Console.Write(ex);

            }
            return null;
        }
        public static void set_code(string json)
        {
            //assigning Application.Current.Properties data 
            Application.Current.Properties["ac_Access_Code"] = json;
        }
    }

  
}
