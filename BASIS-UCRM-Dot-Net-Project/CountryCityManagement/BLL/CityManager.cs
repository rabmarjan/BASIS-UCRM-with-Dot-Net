using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CountryCityManagement.DAL;
using CountryCityManagement.Model;

namespace CountryCityManagement.BLL
{
    public class CityManager
    {
        CityGateway cityGateway = new CityGateway();

        public string SaveCity(City city)
        {
            City aCity = cityGateway.IsExist(city);
            if (aCity == null)
            {
             int rowAffected = cityGateway.AddCity(city);
                if (rowAffected > 0)
                {
                    return "Saved Successfully";
                }
                else
                {
                    return "Saved Failed";
                }
            }
            return "City Name Already Existst";
        }

        //public string SaveCity(City city)
        //{
        //    return cityGateway.AddCity(city);
        //}

        public List<CountryCity> ShowCountryCity()
        {
           return cityGateway.CountryCityList();
        }

    }
}