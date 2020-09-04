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
    public class PlaceBUS
    {
        PlaceDAL placeDal = new PlaceDAL();
        
        public void InsertPlace(PlaceDTO place)
        {
            string sql = "Insert into Place Values (N'" + place.PlaceId + "',N'" + place.PlaceName + "',N'" + place.CountryId + "')";
            placeDal.ExcuteNonQuery(sql);   
        }
        public DataTable GetAllPlace()
        {
            string sql = "select * from Place where CountryId='N01'";
            return placeDal.GetTable(sql);
        }
        public DataTable GetAllForeignPlace()
        {
            string sql = "select * from Place where CountryId='N02'";
            return placeDal.GetTable(sql);
        }
    }
}
