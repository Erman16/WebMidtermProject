using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Globalization;

namespace WebMidtermProject.MyPages
{
    public partial class EditUser : System.Web.UI.Page
    {
        string[] tableItems = { "customerName", "customerSurname", "customerCompanyUsername", "customerPassword", "customerEmail", "customerCompanyEmail", "customerCompanyFoundingDate", "customerCompanyCountry" };

        public static int whichButton;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Login.myCompanyName == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                successMessage.Style.Add("display", "none");
                errorMessage.Style.Add("display", "none");
                try
                {
                    getOriginValue();
                }
                catch (Exception ex)
                {
                    throw ex;
                };
            }
        }
       
        public void getOriginValue()
        {
            try
            {
                string connectionString = "Data Source=localhost;Initial Catalog=MitraAtkDB;Integrated Security=True";

                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();

                DataTable dtCourse = new DataTable();

                if (connection.State == ConnectionState.Open)
                {
                    SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM Customers WHERE customerCompany = '" + getCompany() + "';", connection);
                    adapter.Fill(dtCourse);

                    if (dtCourse.Rows != null)
                    {
                        nameData.InnerText = dtCourse.Rows[0][1].ToString();
                        surnameData.InnerText= dtCourse.Rows[0][2].ToString();
                        companyData.InnerText = dtCourse.Rows[0][3].ToString();
                        companyUsernameData.InnerText = dtCourse.Rows[0][4].ToString();
                        passwordData.InnerText = dtCourse.Rows[0][5].ToString();
                        emailData.InnerText = dtCourse.Rows[0][6].ToString();
                        companyEmailData.InnerText = dtCourse.Rows[0][7].ToString();
                        companyFoundingDateData.InnerText = dtCourse.Rows[0][8].ToString();
                        countryData.InnerText = dtCourse.Rows[0][9].ToString();
                    }
                }
            }
            catch (Exception ex) { }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            whichField.InnerHtml = "Name";
            inputText.InnerHtml = "Name";
            inputField.Style.Add("display", "block");
            infoTable.Style.Add("display", "none");
            whichButton = 1;
            inputRegularExpressionValidator.Enabled = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            whichField.InnerHtml = "Surname";
            inputText.InnerHtml = "Surname";
            inputField.Style.Add("display","block");
            infoTable.Style.Add("display", "none");
            whichButton = 2;
            inputRegularExpressionValidator.Enabled = false;
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            whichField.InnerHtml = "Company Username";
            inputText.InnerHtml = "Company Username";
            inputField.Style.Add("display", "block");
            infoTable.Style.Add("display", "none");
            whichButton = 3;
            inputRegularExpressionValidator.Enabled = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            whichField.InnerHtml = "Password";
            inputText.InnerHtml = "Password";
            inputField.Style.Add("display", "block");
            infoTable.Style.Add("display", "none");
            whichButton = 4;
            inputRegularExpressionValidator.Enabled = false;
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            whichField.InnerHtml = "Email";
            inputText.InnerHtml = "Email";
            inputField.Style.Add("display", "block");
            infoTable.Style.Add("display", "none");
            whichButton = 5;
            inputRegularExpressionValidator.Enabled = true;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            whichField.InnerHtml = "Company Email";
            inputText.InnerHtml = "Company Email";
            inputField.Style.Add("display", "block");
            infoTable.Style.Add("display", "none");
            whichButton = 6;
            inputRegularExpressionValidator.Enabled = true;
        }
        protected void Button7_Click(object sender, EventArgs e)
        {
            whichField.InnerHtml = "Company Founding Date";
            inputText.InnerHtml = "Company Founding Date";
            inputField.Style.Add("display", "block");
            infoTable.Style.Add("display", "none");
            whichButton = 7;
            inputRegularExpressionValidator.Enabled = false;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            whichField.InnerHtml = "Country";
            inputText.InnerHtml = "Country";
            inputField.Style.Add("display", "block");
            infoTable.Style.Add("display", "none");
            whichButton = 8;
            inputRegularExpressionValidator.Enabled = false;
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {

            int result = 0;
            try
            {
                string connectionString = "Data Source=localhost;Initial Catalog=MitraAtkDB;Integrated Security=True";

                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();


                if (connection.State == ConnectionState.Open)
                {
                    SqlCommand command = new SqlCommand("UPDATE Customers SET "+ tableItems[whichButton-1] +" = '"+ uInput.Value.ToString().Trim() + "' WHERE customerCompany = '"+ getCompany() + "'", connection);
                    result = command.ExecuteNonQuery();
                    if ((whichButton - 1)==2 & result != 0)
                    {
                        Login.myCompanyName = uInput.Value.Trim();
                    }
                }
            }
            catch (Exception ex) { }

            if (result != 0)
            {
                successMessage.Style.Add("display", "block");
            }
            else
            {
                errorMessage.Style.Add("display", "block");
            }
        }

        protected void returnButton_Click(object sender, EventArgs e)
        {
            inputField.Style.Add("display", "none");
            getOriginValue();
            infoTable.Style.Add("display", "block");
            successMessage.Style.Add("display", "none");
            errorMessage.Style.Add("display", "none");
        }

        protected void homeButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
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
    }
}