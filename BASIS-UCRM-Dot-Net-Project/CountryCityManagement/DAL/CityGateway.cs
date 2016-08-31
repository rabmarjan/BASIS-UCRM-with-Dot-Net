using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Xml.Linq;
using CountryCityManagement.Model;

namespace CountryCityManagement.DAL
{
    public class CityGateway
    {
        public string connectionString = WebConfigurationManager.ConnectionStrings["countryCityDB"].ConnectionString;

        public City IsExist(City city)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT CityName from Cities WHERE CityName = '"+city.CityName+"'";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            City aCity = null;
            while (reader.Read())
            {
                 aCity = new City();
                aCity.CityName = reader["CityName"].ToString();
            }
            reader.Close();
            connection.Close();
            return aCity;
        }

        public int AddCity(City city)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "Insert into Cities values('"+city.CityName+"','"+city.About+"',"+city.NumberOfDwellers+",'"+city.Location+"','"+city.Weather+"',"+city.CountryId+")";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowsAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowsAffected;
        }
        public List<CountryCity> CountryCityList()
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "Select cs.CityName AS CityName, cs.NoOfDwellers AS NoOfDwellers," +
                           "cn.CountryName AS CountryName " +
                           "from Countries cn join cities cs " +
                           "ON cn.CountryId = cs.CountryId order by cityName ASC";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            List<CountryCity> countryList = new List<CountryCity>();
          
            CountryCity countryCity = null;
            while (reader.Read())
            {
                
                countryCity = new CountryCity();
   
                countryCity.CountryName = reader["CountryName"].ToString();
                countryCity.CityName = reader["CityName"].ToString();
                countryCity.NoOfDwellers = (int) reader["NoOfDwellers"];
                countryList.Add(countryCity);
            }
            reader.Close();
            connection.Close();
            return countryList;
        } 

    }
}