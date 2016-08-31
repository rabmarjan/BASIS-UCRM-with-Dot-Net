using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CountryCityManagement
{
    public class City
    {
        public string CityName { get; set; }
        public string About { get; set; }
        public int NumberOfDwellers { get; set; }
        public string Location { get; set; }
        public string Weather { get; set; }
        public int CountryId { get; set; }  
        public List<Country> CountryList { get; set; }

        public City(string cityName, string about, int numbersOfDwellers, string location, string weather)
        {
            CityName = cityName;
            About = about;
            NumberOfDwellers = numbersOfDwellers;
            Location = location;
            Weather = weather;

        }

        public City()
        {
            CountryList = new List<Country>();
        }
      
    }
}