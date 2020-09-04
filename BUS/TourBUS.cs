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
    public class TourBUS
    {
        TourDAL tourDAL = new TourDAL();
        public DataTable GetAllTour()
        {
            string sql = "Select * From Tour join Place on Place.PlaceId=Tour.PlaceId join Country on Country.CountryId=Place.CountryId Where Country.CountryId ='N01'";
            return tourDAL.GetTable(sql);
        }
        public DataTable GetAllForeignTour()
        {
            string sql = "Select * From Tour join Place on Place.PlaceId=Tour.PlaceId join Country on Country.CountryId=Place.CountryId Where Country.CountryId = 'N02'";
            return tourDAL.GetTable(sql);
        }
        public DataTable SearchTour(string name)
        {
            string sql = "Select * From Tour join Place on Place.PlaceId=Tour.PlaceId join Country on Country.CountryId=Place.CountryId Where Country.CountryId = 'N01' And TourName='" + name + "'";
            return tourDAL.GetTable(sql);
        }
        public DataTable SearchForeignTour(string name)
        {
            string sql = "Select * From Tour join Place on Place.PlaceId=Tour.PlaceId join Country on Country.CountryId=Place.CountryId Where Country.CountryId = 'N02' And TourName='" + name + "'";
            return tourDAL.GetTable(sql);
        }
        public void InsertTour(TourDTO tour)
        {
            string sql = "Insert into Tour Values (N'" + tour.TourId + "',N'" + tour.TourPhoto + "',N'" + tour.TourName + "',N'" + tour.TourDescription + "'," + tour.TourPrice + ",N'" + tour.TourDeparture + "',N'" + tour.TourDestination + "',N'" + tour.TourTime + "',N'" + tour.TourVehicle + "',N'" + tour.TourSchedule + "',N'" + tour.PlaceId + "',N'" + tour.Status + "')";
            tourDAL.ExcuteNonQuery(sql);   
        }
        public void UpdateTour(string tourId, string tourPhoto, string tourName, string tourDescription, double tourPrice,
            string tourDeparture, string tourDestination, string tourTime, string tourVehicle, string tourSchedule,
            string placeId, string status)
        {
            string sql = "Update Tour set TourPhoto=N'" + tourPhoto + "' ,TourName=N'" + tourName + "' ,TourDescription=N'" + tourDescription + "' ,TourPrice=" + tourPrice + "" +
                " ,TourDeparture=N'" + tourDeparture + "' ,TourDestination=N'" + tourDestination + "' ,TourTime=N'" + tourTime + "' ,TourVehicle=N'" + tourVehicle + "' ,TourSchedule=N'" + tourSchedule + "' " +
                ",PlaceId=N'" + placeId + "' ,Status=N'" + status + "'  Where TourId='" + tourId + "'";
            tourDAL.ExcuteNonQuery(sql);
        }
        public void DeleteTour(string id)
        {
            string sql = "Delete From Tour Where TourId='" + id + "'";
            tourDAL.ExcuteNonQuery(sql);
        }
        public DataTable GetTour(string Id)
        {
            string sql = "Select * From Tour Where TourId='" + Id + "'";
            return tourDAL.GetTable(sql);
        }
    }
}
