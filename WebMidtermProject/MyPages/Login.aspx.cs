using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing.Printing;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebMidtermProject.MyPages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["cookie"] != null)
            {
                Response.Redirect("Home.aspx");
            }
        }
        protected void MyLoginButton(object sender, EventArgs e)
        {
            String userPassword = uPassword.Value.ToString();
            String userUsername = companyUsername.Value.ToString();

            bool isUserInputsCorrect = getData(userUsername, userPassword);

            if (isUserInputsCorrect)
            {
                if (rMe.Checked)
                {
                    HttpCookie cookie = new HttpCookie("cookie");

                    cookie["username"] = userUsername;
                    cookie["password"] = userPassword;
                    cookie.Expires = DateTime.Now.AddMinutes(2);

                    Response.Cookies.Add(cookie);
                }
                Response.Redirect("Home.aspx");
            }
            else
            {
                companyUsername.Value = null;
                uPassword.Value = null;
                LinkButton1.Text = "User name or password is incorrect, try again";
            }
        }

        protected void registerButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}