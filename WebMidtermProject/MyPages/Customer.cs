using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Ajax.Utilities;
using System.Web.UI.HtmlControls;

namespace WebMidtermProject.MyPages
{
    public partial class Register : System.Web.UI.Page
    {
        public int insertData(String getName, String getSurname, String getCompany, String getUsername,
            String getPassword, String getEmail, String getCompanyEmail, String getFoundingDate, String getCountry)
        {
            String optionalInputs = "";
            String optionalKeyWords = "";
            if(getEmail != "")
            {
                optionalKeyWords =  ", customerEmail";
                optionalInputs = "','" + getEmail;

                if (getCompanyEmail != "")
                {
                    optionalKeyWords = optionalKeyWords + ", customerCompanyEmail";
                    optionalInputs = optionalInputs + "','" + getCompanyEmail;
                }
                if (getFoundingDate != "")
                {
                    optionalKeyWords = optionalKeyWords + ", customerCompanyFoundingDate";
                    optionalInputs = optionalInputs + "','" + getFoundingDate;
                }
                optionalKeyWords = optionalKeyWords + ")";
                optionalInputs = optionalInputs + "');";
            }
            else if (getCompanyEmail != "")
            {
                optionalKeyWords = ", customerCompanyEmail";
                optionalInputs = "','" + getCompanyEmail;

                if (getFoundingDate != "")
                {
                    optionalKeyWords = optionalKeyWords + ", customerCompanyFoundingDate";
                    optionalInputs = optionalInputs + "','" + getFoundingDate;
                }
                optionalKeyWords = optionalKeyWords + ")";
                optionalInputs = optionalInputs + "');";
            }
            else if (getFoundingDate != "")
            {
                optionalKeyWords = ", customerCompanyFoundingDate" + ")";
                optionalInputs = "','" + getFoundingDate + "');";
            }
            else
            {
                optionalKeyWords = ")";
                optionalInputs = "');";
            }

            int result = 0;
            try
            {
                string connectionString = "Data Source=localhost;Initial Catalog=MitraAtkDB;Integrated Security=True";
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                if (connection.State == ConnectionState.Open)
                {
                    SqlCommand command = new SqlCommand("INSERT INTO Customers(customerName, customerSurname, customerCompany, customerCompanyUsername, customerPassword, customerCompanyCountry" + optionalKeyWords +
                        "VALUES ('" + getName + "','" + getSurname + "','" + getCompany + "','" + getUsername + "','" + getPassword + "','" + getCountry + optionalInputs, connection);
                    result = command.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
            }
            return result;
        }
    }
    public partial class Login : System.Web.UI.Page
    {
        public static String myCompanyName;
        public bool getData(String getUsername, String getPassword)
        {
            bool result = false;
            try
            {
                string connectionString = "Data Source=localhost;Initial Catalog=MitraAtkDB;Integrated Security=True";

                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();

                DataTable dtCourse = new DataTable();

                if (connection.State == ConnectionState.Open)
                {
                    SqlDataAdapter adapter = new SqlDataAdapter("SELECT customerCompanyUsername, customerPassword FROM Customers WHERE customerCompanyUsername = '" + getUsername + "' And customerPassword = '" + getPassword + "'; ", connection);
                    adapter.Fill(dtCourse);

                    if (dtCourse.Rows[0][0].ToString().Trim() == getUsername && dtCourse.Rows[0][1].ToString().Trim() == getPassword)
                    {
                        myCompanyName = getUsername;
                        result = true;
                    }
                }
            }
            catch (Exception ex) { }
            return result;
        }
    }
}