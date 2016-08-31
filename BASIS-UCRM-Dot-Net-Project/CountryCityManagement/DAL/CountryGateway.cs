using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI.WebControls;

namespace CountryCityManagement.DAL
{
    public class CountryGateway
    {
        public string connectionString = WebConfigurationManager.
            ConnectionStrings["countryCityDB"].ConnectionString;

        public Country IsExist(Country country)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "Select CountryName from Countries WHERE countryName = '"+country.CountryName+"'";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            List<Country>countryList = new List<Country>();
            Country aCountry = null;
            while (reader.Read())
            {
                aCountry = new Country();
                aCountry.CountryName = reader["CountryName"].ToString();
            }
            reader.Close();
            connection.Close();
            return aCountry;
        }

        public int AddCountry(Country country)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "insert into Countries values('" + country.CountryName + "','" + country.About + "')";
            SqlCommand command = new SqlCommand(query, connection);
           
                connection.Open();
                int rowsAffected = command.ExecuteNonQuery();
          
                connection.Close();

                return rowsAffected;
        }

        public List<Country> CountriesList()
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "Select * from Countries order by countryName ASC";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            List<Country> countryList = new List<Country>();
            Country country = null;
            while (reader.Read())
            {
                country = new Country();
                country.CountryId = (int)reader["CountryId"];
                country.CountryName = reader["CountryName"].ToString();
                country.About = reader["About"].ToString();
                countryList.Add(country);
            }
            reader.Close();
            connection.Close();          
            return countryList;
        } 
    }
}