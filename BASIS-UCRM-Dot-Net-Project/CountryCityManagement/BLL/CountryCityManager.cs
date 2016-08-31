using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CountryCityManagement.DAL;
using CountryCityManagement.Model;

namespace CountryCityManagement.BLL
{
    public class CountryCityManager
    {
        public CountryCityGateway countryCityGateway = new CountryCityGateway();

        public List<CountryCity> ShowCountryCity()
        {
            return countryCityGateway.getCountryCity();
        }

        public List<CountryCity> ShowCountryCityByCityName(string cityName)
        {
            return countryCityGateway.GetCountryCityByCityName(cityName);
        }
        public List<CountryCity> ShowCountryCityByCountryName(string countryName)
        {
            return countryCityGateway.GetCountryCityByCountryName(countryName);
        }
        public List<CountryCity> ShowCountry()
        {
            return countryCityGateway.GetCountry();
        }
        public List<CountryCity> ShowCountryByName(string countryName)
        {
            return countryCityGateway.GetCountryByName(countryName);
        } 
    
     }
}