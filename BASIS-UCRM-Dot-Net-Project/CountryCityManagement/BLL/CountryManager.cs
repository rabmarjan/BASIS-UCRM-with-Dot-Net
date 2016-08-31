using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Web;
using CountryCityManagement.DAL;

namespace CountryCityManagement.BLL
{
    public class CountryManager
    {
        CountryGateway gateway = new CountryGateway();


        public string SaveCountry(Country country)
        {
            Country aCountry = gateway.IsExist(country);
            if (aCountry == null)
            {
              int rowsAffected = gateway.AddCountry(country);
                if (rowsAffected > 0)
                {
                    return "Successfully Saved Country";
                }
                else
                {
                    return "Fail to Save Country";
                }
              
            }
                return "Already Exist this Country";
        }

        //public string SaveCountry(Country country)
        //{
        //    return gateway.AddCountry(country);
        //}

        public List<Country> ShowCountry()
        {
            return gateway.CountriesList();
        } 
    }
}