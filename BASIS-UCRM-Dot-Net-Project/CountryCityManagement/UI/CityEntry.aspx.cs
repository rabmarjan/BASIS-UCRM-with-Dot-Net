using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CountryCityManagement.BLL;
using CountryCityManagement.DAL;

namespace CountryCityManagement.UI
{
    public partial class CityEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CityManager cityManager = new CityManager();
            GridView1.DataSource = cityManager.ShowCountryCity();
            GridView1.DataBind();
            CountryManager countryManager = new CountryManager();
            if (!IsPostBack)
            {
                countryDropDownList.DataTextField = "CountryName";
                countryDropDownList.DataValueField = "CountryId";
                countryDropDownList.DataSource = countryManager.ShowCountry();
                countryDropDownList.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           CityManager cityManager = new CityManager();
            City city = new City();
            city.CityName = TextBox1.Text;
            city.About = TextBox2.Text;
            city.NumberOfDwellers = Convert.ToInt32(TextBox3.Text);
            city.Location = TextBox4.Text;
            city.Weather = TextBox5.Text;
            city.CountryId = Convert.ToInt32(countryDropDownList.SelectedValue);
            showStatusLabel.Text = cityManager.SaveCity(city);
            Clear();
        }

        private void Clear()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CountryEntry.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            CityManager cityManager = new CityManager();
            GridView1.DataSource = cityManager;
            GridView1.DataBind();
        }
    }
}