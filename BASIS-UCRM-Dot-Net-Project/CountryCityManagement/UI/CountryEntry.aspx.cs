using System;
using System.Collections.Generic;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CountryCityManagement.BLL;

namespace CountryCityManagement.UI
{
    public partial class CountryEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {      
                CountryManager manager = new CountryManager();
                GridView1.DataSource = manager.ShowCountry();
                GridView1.DataBind();              
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CountryManager manager = new CountryManager();
            Country country = new Country();
            country.CountryName = TextBox1.Text;
            country.About = TextBox2.Text;
            statusLabel.Text = manager.SaveCountry(country);
           // string saveCountry = manager.SaveCountry(country);
           // Label1.Text = saveCountry;
            Clear();
        }
        public void Clear()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }
    }
}