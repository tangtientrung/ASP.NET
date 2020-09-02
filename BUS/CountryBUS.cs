using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAL;
using System.Data;

namespace BUS
{
    public class CountryBUS
    {
        CountryDAL countryDal = new CountryDAL();
        
        public void InsertCountry(CountryDTO country)
        {
            string sql = "Insert into Country Values (N'" + country.CountryId + "',N'" + country.CountryName + "')";
            countryDal.ExcuteNonQuery(sql);   
        }
       
    }
}
