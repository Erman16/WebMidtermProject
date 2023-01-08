using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.IO;

namespace WebMidtermProject.MyPages
{
    public partial class Home : System.Web.UI.Page
    {
        static int counter = 0; //Counter for attack file names

        //T1010
        public void T1010()
        {
            List<string> windowTitlesList = ListMainWindowTitles();
            string stringDB = "";

            for (int i = 0; i < windowTitlesList.Count; i++)
            {
                stringDB += windowTitlesList[i] + "_$_";  // adding some brace(separator) for sepate results in future.
            }

            int result = insertT1010(getCompany(), stringDB); 

            if (result != 0)
            {
                String myTable = "<table class='myData'><tr><th>ID</th><th>Open Application Windows</th></tr>"; // Creating Table for results, yes i used old ways :)
                successMessage.Style.Add("display", "block");
                for (int i = 0; i < windowTitlesList.Count; i++)
                {
                    myTable += "<tr><td>" + i + "</td><td>" + windowTitlesList[i] + "</td></tr>";
                }
                myTable += "</table>";
                AttacksResults.InnerHtml = myTable;
            }
            else
            {
                errorMessage.Style.Add("display", "block");
            }
        }
        static List<string> ListMainWindowTitles()
        {
            List<string> windowTitlesList = new List<string>();

            Process[] processlist = Process.GetProcesses();

            foreach (Process process in processlist)
            {
                string titleOutputLine;

                if (!String.IsNullOrEmpty(process.MainWindowTitle))
                {
                    titleOutputLine = "Process: " + process.ProcessName + " ID: " + process.Id + " Main Window title: " + process.MainWindowTitle;
                    windowTitlesList.Add(titleOutputLine);
                }
            }

            return windowTitlesList;
        }
        //*************** End of T1010 ****************

        //T1047
        public void T1047()
        {
            Process.Start(@"C:\Windows\System32\cmd.exe", "/c D: & wmic useraccount get /ALL /format:csv >> result" + counter + ".txt");

            List<string> result = InsertAttacks("T1047");

            if (result[0] != "0")
            {
                String myTable = "<table class='myData'><tr><th>User Accounts</th></tr>"; // Creating Table for results, yes i used old ways :)
                successMessage.Style.Add("display", "block");

                string data = result[1];

                myTable += "<tr><td>" + data + "</td></tr></table>";
                AttacksResults.InnerHtml = myTable;

                counter++;
            }
            else
            {
                errorMessage.Style.Add("display", "block");
            }

        }
        //*************** End of T1047 ****************

        //T1016
        public void T1016()
        {

            Process.Start(@"C:\Windows\System32\cmd.exe", "/c D: & ipconfig /all >> result" + counter + ".txt");

            List<string> result = InsertAttacks("T1016");

            if (result[0] != "0")
            {
                String myTable = "<table class='myData'><tr><th>User Accounts</th></tr>"; // Creating Table for results, yes i used old ways :)
                successMessage.Style.Add("display", "block");

                string data = result[1];

                myTable += "<tr><td>" + data + "</td></tr></table>";
                AttacksResults.InnerHtml = myTable;

                counter++;
            }
            else
            {
                errorMessage.Style.Add("display", "block");
            }
        }
        //*************** End of T1016 ****************

        //T1049
        public void T1049()
        {
            Process.Start(@"C:\Windows\System32\cmd.exe", "/c D: & PowerShell.exe Get-NetTCPConnection >> result" + counter + ".txt");

            List<string> result = InsertAttacks("T1049");

            if (result[0] != "0")
            {
                String myTable = "<table class='myData'><tr><th>User Accounts</th></tr>"; // Creating Table for results, yes i used old ways :)
                successMessage.Style.Add("display", "block");

                string data = result[1];

                myTable += "<tr><td>" + data + "</td></tr></table>";
                AttacksResults.InnerHtml = myTable;

                counter++;
            }
            else
            {
                errorMessage.Style.Add("display", "block");
            }
        }
        //*************** End of T1049 ****************

        //T1057
        public void T1057()
        {
            Process.Start(@"C:\Windows\System32\cmd.exe", "/c D: & tasklist >> result" + counter + ".txt");

            List<string> result = InsertAttacks("T1057");

            if (result[0] != "0")
            {
                String myTable = "<table class='myData'><tr><th>User Accounts</th></tr>"; // Creating Table for results, yes i used old ways :)
                successMessage.Style.Add("display", "block");

                string data = result[1];

                myTable += "<tr><td>" + data + "</td></tr></table>";
                AttacksResults.InnerHtml = myTable;

                counter++;
            }
            else
            {
                errorMessage.Style.Add("display", "block");
            }
        }
        //*************** End of T1057 ****************

        //T1518 
        public void T1518()
        {
            Process.Start(@"C:\Windows\System32\cmd.exe", "/c D: & reg query \"HKEY_LOCAL_MACHINE\\Software\\Microsoft\\Internet Explorer\" /v svcVersion >> result" + counter + ".txt");

            List<string> result = InsertAttacks("T1518");

            if (result[0] != "0")
            {
                String myTable = "<table class='myData'><tr><th>User Accounts</th></tr>"; // Creating Table for results, yes i used old ways :)
                successMessage.Style.Add("display", "block");

                string data = result[1];

                myTable += "<tr><td>" + data + "</td></tr></table>";
                AttacksResults.InnerHtml = myTable;

                counter++;
            }
            else
            {
                errorMessage.Style.Add("display", "block");
            }
        }
        //*************** End of T1518  ****************

        //------------------
        // insert attacks
        //------------------
        public List<string> InsertAttacks(string whichAttack)
        {
            string myFileData = "";
            string[] lines = null;
            List<string> mylist = new List<string>();
            while (true)
            {
                try
                {
                    lines = System.IO.File.ReadAllLines(@"D://result" + counter + ".txt"); //Read file From D: folder
                    File.Delete(@"D://result" + counter + ".txt"); //Delete File.
                    break;
                }
                catch { }
            }

            foreach (string line in lines)
            {
                myFileData += line;
            }

            int result = 0;
            try
            {
                string connectionString = "Data Source=localhost;Initial Catalog=MitraAtkDB;Integrated Security=True";

                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                if (connection.State == ConnectionState.Open)
                {
                    string Company = getCompany();
                    SqlCommand command = new SqlCommand("INSERT INTO "+ whichAttack + "(Company, attackResult)" +
                        " VALUES ('" + Company + "','" + myFileData + "');", connection);

                    result = Convert.ToInt32(command.ExecuteNonQuery());
                }
            }
            catch (Exception ex)
            {
            }
            
            mylist.Add(result.ToString());
            mylist.Add(myFileData);
            return mylist;
        }

        public string getCompany()
        {
            string myResult = "";

            try
            {
                string connectionString = "Data Source=localhost;Initial Catalog=MitraAtkDB;Integrated Security=True";

                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();

                DataTable dtCourse = new DataTable();

                if (connection.State == ConnectionState.Open)
                {
                    SqlDataAdapter adapter = new SqlDataAdapter("SELECT customerCompany FROM Customers WHERE customerCompanyUsername = '" + Login.myCompanyName + "';", connection);
                    adapter.Fill(dtCourse);

                    if (dtCourse.Rows != null)
                    {
                        myResult = dtCourse.Rows[0][0].ToString();
                    }
                }
            }
            catch (Exception ex) { }

            return myResult;
        }
        public int insertT1010(String company, String attackResult) // it is different so needs different insert method
        {
            int result = 0;
            try
            {
                string connectionString = "Data Source=localhost;Initial Catalog=MitraAtkDB;Integrated Security=True";
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                if (connection.State == ConnectionState.Open)
                {
                    SqlCommand command = new SqlCommand("INSERT INTO T1010(Company, attackResult)" +
                        " VALUES ('" + company + "','" + attackResult + "');", connection);
                    result = command.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
            }
            return result;
        }

        //Attacks that don't saved.
        //T1003 
        public void T1003()
        {
            Process.Start(@"C:\Windows\System32\cmd.exe", "/c rundll32.exe keymgr,KRShowKeyMgr");

            string myFileData = "";
            string[] lines = null;
            List<string> mylist = new List<string>();
            while (true)
            {
                try
                {
                    lines = System.IO.File.ReadAllLines(@"D://result" + counter + ".txt"); //Read file From D: folder
                    File.Delete(@"D://result" + counter + ".txt"); //Delete File.
                    break;
                }
                catch { }
            }

            foreach (string line in lines)
            {
                myFileData += line;
            }

            if (myFileData != "")
            {
                String myTable = "<table class='myData'><tr><th>User Accounts</th></tr>"; // Creating Table for results, yes i used old ways :)
                successMessage.Style.Add("display", "block");

                string data = myFileData;

                myTable += "<tr><td>" + data + "</td></tr></table>";
                AttacksResults.InnerHtml = myTable;

                counter++;
            }
            else
            {
                errorMessage.Style.Add("display", "block");
            }
        }
        //*************** End of T1003  ****************

        //T1529 
        public void T1529()
        {
            Process.Start(@"C:\Windows\System32\cmd.exe", "/c shutdown /s /t 5");

            string myFileData = "";
            string[] lines = null;
            List<string> mylist = new List<string>();
            while (true)
            {
                try
                {
                    lines = System.IO.File.ReadAllLines(@"D://result" + counter + ".txt"); //Read file From D: folder
                    File.Delete(@"D://result" + counter + ".txt"); //Delete File.
                    break;
                }
                catch { }
            }

            foreach (string line in lines)
            {
                myFileData += line;
            }

            if (myFileData != "")
            {
                String myTable = "<table class='myData'><tr><th>User Accounts</th></tr>"; // Creating Table for results, yes i used old ways :)
                successMessage.Style.Add("display", "block");

                string data = myFileData;

                myTable += "<tr><td>" + data + "</td></tr></table>";
                AttacksResults.InnerHtml = myTable;

                counter++;
            }
            else
            {
                errorMessage.Style.Add("display", "block");
            }
        }
        //*************** End of T1529  ****************
    }
}