using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class TourDTO
    {
        protected string _tourId, _tourPhoto, _tourName, _tourDescription, _tourDeparture, _tourDestination, _tourTime, _tourVehicle, _tourSchedule, _placeId;
        protected double _tourPrice;
        private string _status;

        public string TourId { get => _tourId; set => _tourId = value; }
        public string TourPhoto { get => _tourPhoto; set => _tourPhoto = value; }
        public string TourName { get => _tourName; set => _tourName = value; }
        public string TourDescription { get => _tourDescription; set => _tourDescription = value; }
        public string TourDeparture { get => _tourDeparture; set => _tourDeparture = value; }
        public string TourDestination { get => _tourDestination; set => _tourDestination = value; }
        public string TourTime { get => _tourTime; set => _tourTime = value; }
        public string TourVehicle { get => _tourVehicle; set => _tourVehicle = value; }
        public string TourSchedule { get => _tourSchedule; set => _tourSchedule = value; }
        public string PlaceId { get => _placeId; set => _placeId = value; }
        
        public double TourPrice { get => _tourPrice; set => _tourPrice = value; }
        public string Status { get => _status; set => _status = value; }
        public TourDTO()
        {

        }
        public TourDTO(string tourId, string tourPhoto, string tourName, string tourDescription, double tourPrice,
            string tourDeparture, string tourDestination, string tourTime, string tourVehicle, string tourSchedule,
            string placeId, string status)
        {
            this.TourId = tourId;
            this.TourPhoto = tourPhoto;
            this.TourName = tourName;
            this.TourDescription = tourDescription;
            this.TourPrice = tourPrice;
            this.TourDeparture = tourDeparture;
            this.TourDestination = tourDestination;
            this.TourTime = tourTime;
            this.TourVehicle = tourVehicle;
            this.TourSchedule = tourSchedule;
            this.PlaceId = placeId;
            
            this.Status = status;
        }

    }
}
