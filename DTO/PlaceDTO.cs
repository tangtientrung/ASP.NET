using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class PlaceDTO
    {
        private string _placeId,_placeName,_countryId;

        
        public PlaceDTO()
        {

        }
        public PlaceDTO(string placeId,string placeName,string countryId)
        {
            this.PlaceId = placeId;
            this.PlaceName = placeName;
            this.CountryId = countryId;
            
        }

        public string PlaceId { get => _placeId; set => _placeId = value; }
        public string PlaceName { get => _placeName; set => _placeName = value; }
        public string CountryId { get => _countryId; set => _countryId = value; }
    }
}
