using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CountryCityManagement.BLL;

namespace CountryCityManagement.UI
{
    public partial class ViewCountry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CountryCityManager countryCityManager = new CountryCityManager();
            viewCountryGridView.DataSource = countryCityManager.ShowCountryCity();
            viewCountryGridView.DataBind();
        }

        protected void viewCountryGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            viewCountryGridView.PageIndex = e.NewPageIndex;
            viewCountryGridView.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CountryCityManager countryCityManager = new CountryCityManager();

            viewCountryGridView.DataSource = countryCityManager.ShowCountryByName(countrySearchTextBox.Text);
            viewCountryGridView.DataBind();
            Clear();
        }

        private void Clear()
        {
            countrySearchTextBox.Text = "";
        }
      
    }
}