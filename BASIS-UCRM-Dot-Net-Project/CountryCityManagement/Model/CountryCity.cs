using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CountryCityManagement.Model
{
    public class CountryCity
    {
        public string CityName { get; set; }
        public string CountryName { get; set; }
        public int NoOfDwellers { get; set; }
        public string AboutCity { get; set; }
        public string Location { get; set; }
        public string Weather { get; set; }
        public string AboutCountry { get; set; }
        public int CountryId { get; set; }

        public CountryCity(string cityName, string countryName, int noOfDwellers, string aboutCity,
            string location, string weather, string aboutCountry,int countryId)
        {
            CityName = cityName;
            CountryName = countryName;
            NoOfDwellers = noOfDwellers;
            AboutCity = aboutCity;
            Location = location;
            Weather = weather;
            AboutCountry = aboutCountry;
            CountryId = countryId;
        }

        public CountryCity()
        {
            
        }

    }
}