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
            string sql = "Select * From Orders";
            return orderDal.GetTable(sql);
        }
        public void UpdateOrder(int userId,  string tourId, string status)
        {
            string sql = "Update Orders set UserId=" + userId + " ,TourId=N'" + tourId + "',Status=N'" + status + "' Where UserId="+userId+" And TourId='"+tourId+"'";
            orderDal.ExcuteNonQuery(sql);
        }
        
       
    }
}
