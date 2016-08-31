using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.Configuration;
using AjaxControlToolkit;
using CountryCityManagement.Model;

namespace CountryCityManagement.DAL
{
    public class CountryCityGateway
    {
        private string connectionString = WebConfigurationManager.ConnectionStrings["countryCityDB"].ConnectionString;

        public List<CountryCity> getCountryCity()
        {
            SqlConnection connection = new SqlConnection(connectionString);
           // string query = "Select DISTINCT cn.CountryName AS CountryName,cs.CityName AS CityName,cs.About AS AboutCity , cs.NoOfDwellers AS NoOfDwellers," +
           //               "cs.Location AS Location,cs.Weather AS Weather,cn.About AS AboutCountry from Countries cn join cities cs ON cn.CountryId = cs.CountryId order by cityName ASC";
            string query = "Select * from Countries cn join cities cs on cs.countryId = cn.countryId"; 
            SqlCommand command = new SqlCommand(query,connection);
            List<CountryCity> countryCityList = new List<CountryCity>();
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                CountryCity countryCity = new CountryCity();
                countryCity.CityName = reader["CityName"].ToString();
                countryCity.AboutCity = reader["About"].ToString();
                countryCity.NoOfDwellers = (int)reader["NoOfDwellers"];
                countryCity.Location = reader["Location"].ToString();
                countryCity.Weather = reader["Weather"].ToString();
                countryCity.CountryName = reader["CountryName"].ToString();
                countryCity.AboutCountry = reader["About"].ToString();
                countryCity.CountryId = (int)reader["CountryId"];
                countryCityList.Add(countryCity);
            }
            reader.Close();
            connection.Close();
            return countryCityList;

           
        }

        public List<CountryCity> GetCountryCityByCityName(string cityName)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            List<CountryCity>countryCityByName = new List<CountryCity>();
            string query = "Select * from Countries cn join cities cs on cs.countryId = cn.countryId WHERE CityName LIKE '%"+cityName +"%'";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                CountryCity countryCity = new CountryCity();
                countryCity.CityName = reader["CityName"].ToString();
                countryCity.AboutCity = reader["About"].ToString();
                countryCity.NoOfDwellers = (int)reader["NoOfDwellers"];
                countryCity.Location = reader["Location"].ToString();
                countryCity.Weather = reader["Weather"].ToString();
                countryCity.CountryName = reader["CountryName"].ToString();
                countryCity.AboutCountry = reader["About"].ToString();
                countryCityByName.Add(countryCity);
            }
            reader.Close();
            connection.Close();
            return countryCityByName;
        }
        public List<CountryCity> GetCountryCityByCountryName(string countryName)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            List<CountryCity> countryCityByName = new List<CountryCity>();
            string query = "Select * from Countries cn join cities cs on cs.countryId = cn.countryId WHERE CountryName LIKE '%" + countryName + "%'";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                CountryCity countryCity = new CountryCity();
                countryCity.CityName = reader["CityName"].ToString();
                countryCity.AboutCity = reader["About"].ToString();
                countryCity.NoOfDwellers = (int)reader["NoOfDwellers"];
                countryCity.Location = reader["Location"].ToString();
                countryCity.Weather = reader["Weather"].ToString();
                countryCity.CountryName = reader["CountryName"].ToString();
                countryCity.AboutCountry = reader["About"].ToString();
                countryCityByName.Add(countryCity);
            }
            reader.Close();
            connection.Close();
            return countryCityByName;
        }
        public List<CountryCity> GetCountry()
        {
            SqlConnection connection = new SqlConnection(connectionString);
            List<CountryCity> countryCityByName = new List<CountryCity>();
            string query = "Select Distinct CountryName from Countries order by countryName";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                CountryCity countryCity = new CountryCity();
                countryCity.CountryName = reader["CountryName"].ToString();
                countryCityByName.Add(countryCity);
            }
            reader.Close();
            connection.Close();
            return countryCityByName;
        }

        public List<CountryCity> GetCountryByName(string countryName)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            List<CountryCity> getCountryByNameList = new List<CountryCity>();
            string query =
            "select cn.CountryName AS CountryName,cn.About AS AboutCountry,COUNT(cs.cityName) AS CityName,SUM(cs.NoOfDwellers) AS NoOfDwellers from Countries cn join Cities cs ON cs.countryId = cn.CountryId  WHERE countryName LIKE '%" + countryName + "%' group by cn.CountryName,cn.About";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                CountryCity countryCity = new CountryCity();
                countryCity.CountryName = reader["CountryName"].ToString();
                countryCity.AboutCountry = reader["AboutCountry"].ToString();
                countryCity.CityName = reader["CityName"].ToString();
                countryCity.NoOfDwellers = (int) reader["NoOfDwellers"];
                getCountryByNameList.Add(countryCity);
            }
            reader.Close();
            connection.Close();
            return getCountryByNameList;
        }
    }
}