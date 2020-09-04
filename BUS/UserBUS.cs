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
    public class UserBUS
    {
        UserDAL usDAL = new UserDAL();
        public DataTable GetAllUser()
        {
            string sql = "Select * From Users";
            return usDAL.GetTable(sql);
        }
        public DataTable Login(string email,string pass)
        {
            string sql = "Select * From Users Where Email='"+email+"' and Pass = '"+pass+"'";
            return usDAL.GetTable(sql);
        }
        public void UpdateUser(string userName, string email,string pass, string phone, string address, string roleId, int userId)
        {
            string sql = "Update Users set UserName=N'" + userName + "' ,Email=N'" + email + "' , Pass=N'" + pass + "', Address=N'" + address + "' ,Phone=N'" + phone + "' ,Role='" + roleId + "'  Where UserId="+userId+"";
            usDAL.ExcuteNonQuery(sql);
        }
        public DataTable GetUser(int Id)
        {
            string sql = "Select * From Users Where UserId=" + Id + "";
            return usDAL.GetTable(sql);
        }
        public void InsertUser(UserDTO user)
        {
            string sql = "Insert into Users Values (N'" + user.UserName + "',N'" + user.Email + "',N'" + user.Pass + "',N'" + user.Phone + "',N'" + user.Address + "','" + user.RoleId + "')";
            usDAL.ExcuteNonQuery(sql);   
        }
        public DataTable SearchUser(string name)
        {
            string sql = "Select * From Users Where UserName like '%" + name + "%'";
            return usDAL.GetTable(sql);
        }
        public void DeleteUser(int id)
        {
            string sql="Delete From Users Where UserId='"+id+"'";
            usDAL.ExcuteNonQuery(sql);
        }
    }
}
