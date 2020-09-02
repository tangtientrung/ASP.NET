using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class CountryDTO
    {
        private string _countryId, _countryName;

        public string CountryId { get => _countryId; set => _countryId = value; }
        public string CountryName { get => _countryName; set => _countryName = value; }
        public CountryDTO()
        {

        }
        public CountryDTO(string countryId,string countryName)
        {
            this.CountryId = countryId;
            this.CountryName = countryName;
        }
    }
}
