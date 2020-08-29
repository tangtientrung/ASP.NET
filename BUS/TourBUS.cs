﻿using System;
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
            string sql = "Select * From Tour join Place on Place.PlaceId=Tour.PlaceId join Country on Country.CountryId=Place.CountryId Where Country.CountryId='VN'";
            return tourDAL.GetTable(sql);
        }
        public DataTable SearchTour(string name)
        {
            string sql = "Select * From Tour join Place on Place.PlaceId=Tour.PlaceId join Country on Country.CountryId=Place.CountryId Where Country.CountryId='VN' And TourName='"+name+"'";
            return tourDAL.GetTable(sql);
        }
        public void InsertTour(TourDTO tour)
        {
            string sql = "Insert into Users Values (N'" + tour.TourId + "',N'" + tour.TourPhoto + "',N'" + tour.TourName + "',N'" + tour.TourDescription + "'," + tour.TourPrice + ",N'" + tour.TourDeparture + "',N'" + tour.TourDestination + "',N'" + tour.TourTime + "',N'" + tour.TourTime + "',N'" + tour.TourVehicle + "',N'" + tour.PlaceId + "',,N'" + tour.Status + "')";
            tourDAL.ExcuteNonQuery(sql);   
        }
        public void UpdateTour(string tourId, string tourPhoto, string tourName, string tourDescription, int tourPrice,
            string tourDeparture, string tourDestination, string tourTime, string tourVehicle, string tourSchedule,
            string placeId, string status)
        {
            string sql = "Update Tour set TourId='" + tourId + "' ,TourPhoto='" + tourPhoto + "' ,TourName='" + tourName + "' ,TourDescription='" + tourDescription + "' ,TourPrice=" + tourPrice + "" +
                " ,TourDeparture='" + tourDeparture + "' ,TourDestination='" + tourDestination + "' ,TourTime='" + tourTime + "' ,TourVehicle='" + tourVehicle + "' ,TourSchedule='" + tourSchedule + "' " +
                ",PlaceId=" + placeId + " ,Status='" + status + "'  Where TourId=" + tourId + "";
            tourDAL.ExcuteNonQuery(sql);
        }
        public void DeleteTour(string id)
        {
            string sql = "Delete From Tour Where TourId='" + id + "'";
            tourDAL.ExcuteNonQuery(sql);
        }
    }
}