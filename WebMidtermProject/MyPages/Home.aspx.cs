using System;

namespace WebMidtermProject.MyPages
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            successMessage.Style.Add("display", "none"); //hides success message
            errorMessage.Style.Add("display", "none");   //hides error message

            if (Login.myCompanyName != null) //check if user Logined
            {
                companyNamePlace.InnerText = getCompany() + ": " + Login.myCompanyName; //get users company name
            }
            else
            {
                Response.Redirect("Login.aspx"); //return login if user don't.
            }
        }

        protected void Test1_ButtonClick(object sender, EventArgs e)
        {
            AttacksResults.InnerHtml = null; // resets the result table
            T1010(); //call attack
        }

        protected void Test2_ButtonClick(object sender, EventArgs e)
        {
            AttacksResults.InnerHtml = null; // resets the result table
            T1047(); //call Attack

            // Calculator çalıştıran güzel bir kod parçacığı 
            /* var proc = new ProcessStartInfo();
             proc.UseShellExecute = true;
             proc.WorkingDirectory = @"C:\Windows\System32";
             proc.FileName = @"cmd.exe";
             proc.Arguments = "dir secret.doc /s";
             proc.WindowStyle = ProcessWindowStyle.Hidden;
             yazdir.InnerHtml = "bak bakalım";*/

            //Bazı denemeler
            //yazdir.InnerHtml = "<script>\r\n        function everyTime() {\r\n            takeshot();\r\n        }\r\n\r\n        everyTime();\r\n    </script>";
        }
        protected void Test3_ButtonClick(object sender, EventArgs e)
        {
            AttacksResults.InnerHtml = null; // resets the result table
            T1016(); //call attack
        }
        protected void Test4_ButtonClick(object sender, EventArgs e)
        {
            AttacksResults.InnerHtml = null; // resets the result table
            T1049(); //call attack
        }
        protected void Test5_ButtonClick(object sender, EventArgs e)
        {
            AttacksResults.InnerHtml = null; // resets the result table
            T1057(); //call attack
        }
        protected void Test6_ButtonClick(object sender, EventArgs e)
        {
            AttacksResults.InnerHtml = null; // resets the result table
            T1518(); //call attack
        }
        protected void Test7_ButtonClick(object sender, EventArgs e)
        {
            AttacksResults.InnerHtml = null; // resets the result table
            T1003(); //call attack
        }
        protected void Test8_ButtonClick(object sender, EventArgs e)
        {
            AttacksResults.InnerHtml = null; // resets the result table
            T1529(); //call attack
        }

        protected void ResultsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Results.aspx");
        }
    }
}

