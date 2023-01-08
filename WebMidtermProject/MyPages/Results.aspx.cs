using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebMidtermProject.MyPages
{
    public partial class Results : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Login.myCompanyName == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                companyN.InnerText = getCompany() + ": " + Login.myCompanyName;
            }
        }

        protected void getT1010(object sender, EventArgs e)
        {
            testN.InnerHtml = "T1010";
            getResults("T1010");
        }
        protected void getT1016(object sender, EventArgs e)
        {
            testN.InnerHtml = "T1016";
            getResults("T1016");
        }
        protected void getT1047(object sender, EventArgs e)
        {
            testN.InnerHtml = "T1047";
            getResults("T1047");
        }
        protected void getT1049(object sender, EventArgs e)
        {
            testN.InnerHtml = "T1049";
            getResults("T1049");
        }
        protected void getT1057(object sender, EventArgs e)
        {
            testN.InnerHtml = "T1057";
            getResults("T1057");
        }
        protected void getT1518(object sender, EventArgs e)
        {
            testN.InnerHtml = "T1518";
            getResults("T1518");
        }

        public void getResults(string atkName)
        {
            try
            {
                string connectionString = "Data Source=localhost;Initial Catalog=MitraAtkDB;Integrated Security=True";

                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();

                DataTable dtCourse = new DataTable();

                if (connection.State == ConnectionState.Open)
                {
                    string myCompany = getCompany();
                    SqlDataAdapter adapter = new SqlDataAdapter("SELECT attackResult FROM "+atkName+" WHERE Company = '"+ myCompany + "';", connection);
                    adapter.Fill(dtCourse);

                    if (dtCourse.Rows != null)
                    {
                        MyResults.DataSource = dtCourse;
                        MyResults.DataBind();   
                    }
                }
            }
            catch (Exception ex) { }
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
                    SqlDataAdapter adapter = new SqlDataAdapter("SELECT customerCompany FROM Customers WHERE customerCompanyUsername = '" + Login.myCompanyName +"';", connection);
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
    }
}