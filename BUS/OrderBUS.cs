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
    public class OrderBUS
    {
        OrderDAL orderDal = new OrderDAL();
        public DataTable GetAllOrder()
        {
            string sql = "Select UserName,TourName,DateOrder,Orders.Status From Orders join Users on Orders.UserId=Users.UserId join Tour on Tour.TourId=Orders.TourId";
            return orderDal.GetTable(sql);
        }
        public DataTable GetAllEnabelOrder()
        {
            string sql = "Select UserName,TourName,DateOrder,Orders.Status From Orders join Users on Orders.UserId=Users.UserId join Tour on Tour.TourId=Orders.TourId where Orders.status =1";
            return orderDal.GetTable(sql);
        }
        public DataTable GetAllDisableOrder()
        {
            string sql = "Select UserName,TourName,DateOrder,Orders.Status From Orders join Users on Orders.UserId=Users.UserId join Tour on Tour.TourId=Orders.TourId where Orders.status =0";
            return orderDal.GetTable(sql);
        }
        public DataTable HotTour()
        {
            
            string sql= " select * from Tour join Place on Place.PlaceId=Tour.PlaceId join Country on Country.CountryId=Place.CountryId where Tour.TourId In (select top 2 tourID  from Orders group by tourID order by tourId asc)";
            return orderDal.GetTable(sql);
        }
        public DataTable AnalysisOrder(DateTime bd,DateTime kt)
        {
            string sql = "Select UserName,TourName,DateOrder,Orders.Status From Orders join Users on Orders.UserId=Users.UserId join Tour on Tour.TourId=Orders.TourId where DateOrder between '"+bd+"' and '"+kt+ "' and Orders.Status=1";
            return orderDal.GetTable(sql);
        }
        public DataTable TotalMoney(DateTime bd, DateTime kt) 
        {
            string sql = "select sum(TourPrice) AS 'Tong' From Orders join Users on Orders.UserId=Users.UserId join Tour on Tour.TourId=Orders.TourId where DateOrder between '" + bd + "' and '" + kt + "' and Orders.Status=1 ";
            return orderDal.GetTable(sql);
        }
        public void UpdateOrder(int userId,  string tourId,string status)
        {
            string sql = "Update Orders set UserId=" + userId + " ,TourId=N'" + tourId + "', ,Status=N'" + status + "' Where UserId=" + userId+" And TourId='"+tourId+"'";
            orderDal.ExcuteNonQuery(sql);
        }
        
       
    }
}
