using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CountryCityManagement
{
    public class Country
    {
        public int CountryId { get; set; }
        public string CountryName { get; set; }
        public string About { get; set; }

        public Country(string countryName, string about)
        {
            CountryName = countryName;
            About = about;
        }

        public Country()
        {
            
        }
    }
}