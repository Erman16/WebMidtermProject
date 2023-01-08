using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data;
using System.Diagnostics;

namespace WebMidtermProject.MyPages
{
    public partial class Register : System.Web.UI.Page
    {
        private String getName;
        private String getSurname;
        private String getCompany;
        private String getUsername;
        private String getPassword;
        private String getEmail;
        private String getCompanyEmail;
        private String getFoundingDate;
        private String getCountry;
        protected void Page_Load(object sender, EventArgs e)
        {
            successMessage.Style.Add("display", "none");
            errorMessage.Style.Add("display", "none");
            try
            {
                country.DataSource = GetCountryList();
                country.DataBind();
                country.Items.Insert(0, "Turkey");
            }
            catch (Exception ex)
            {
                throw ex;
            };
        }
        
        protected void MyRegisterButton_Click(object sender, EventArgs e)
        {
            getName = firstName.Value.ToString().Trim();
            getSurname = lastName.Value.ToString().Trim();
            getCompany = company.Value.ToString().Trim();
            getUsername = username.Value.ToString().Trim();
            getPassword = password.Value.ToString().Trim();
            getEmail = email.Value.ToString().Trim();
            getCompanyEmail = companyEmail.Value.ToString().Trim();
            getFoundingDate = foundingDate.Value.ToString().Trim();
            getCountry = country.SelectedItem.Value.ToString();

            int returnvalue = insertData(getName, getSurname, getCompany, getUsername, getPassword, getEmail, getCompanyEmail, getFoundingDate, getCountry);

            if (returnvalue != 0)
            {
                successMessage.Style.Add("display", "block");
                Response.AddHeader("REFRESH", "5;URL=Login.aspx");
            }
            else
            {
                errorMessage.Style.Add("display", "block");
            }          
        }
        
        protected void MyreturnLoginButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        public List<String> GetCountryList()
        {
            List<String> _list = new List<String>();
            CultureInfo[] _cultures = CultureInfo.GetCultures(CultureTypes.InstalledWin32Cultures |
                        CultureTypes.SpecificCultures);
            foreach (CultureInfo _cultureInfo in _cultures)
            {
                if (_cultureInfo.IsNeutralCulture || _cultureInfo.LCID == 127)
                {
                    continue;
                }
                RegionInfo _regionInfo = new RegionInfo(_cultureInfo.Name);
                if (!_list.Contains(_regionInfo.EnglishName))
                {
                    _list.Add(_regionInfo.EnglishName);
                }
            }
            _list.Sort();
            return _list;
        }
    }
}