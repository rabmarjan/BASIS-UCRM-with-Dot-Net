using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CountryCityManagement.BLL;

namespace CountryCityManagement.UI
{
    public partial class ViewCities : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CountryCityManager countryCityManager = new CountryCityManager();
            countryCityGridView.DataSource= countryCityManager.ShowCountryCity();
            countryCityGridView.DataBind();
         
            if (!IsPostBack)
            {
                countryDropDownList.DataTextField = "CountryName";
                countryDropDownList.DataValueField = "CountryName";
                countryDropDownList.DataSource = countryCityManager.ShowCountry();
                countryDropDownList.DataBind();
            }

        }

        protected void countryCityGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
             countryCityGridView.PageIndex = e.NewPageIndex;
             countryCityGridView.DataBind();
        }

        protected void countryCityButton_Click(object sender, EventArgs e)
        {
            CountryCityManager countryCityManager = new CountryCityManager();
            if (cityRadioButton.Checked)
            {
              
                countryCityGridView.DataSource = countryCityManager.ShowCountryCityByCityName(citySearchTextBox.Text);
                countryCityGridView.DataBind();
            }
            if (countryRadioButton.Checked)
            {
               // countryCityGridView.DataSource = countryCityManager.ShowCountryCityByCityName(countryDropDownList.SelectedValue);
                countryCityGridView.DataSource =
                    countryCityManager.ShowCountryCityByCountryName(countryDropDownList.SelectedValue);
                countryCityGridView.DataBind();
            }
        }

        protected void cityRadioButton_CheckedChanged(object sender, EventArgs e)
        {
         
        }
    }
}