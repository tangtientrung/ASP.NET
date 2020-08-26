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
            string sql = "Select * From Users join Role on Role.RoleId=Users.RoleId";
            return usDAL.GetTable(sql);
        }
        public void UpdateUser(string userName, string email, string phone, string address, int roleId, string status, int userId)
        {
            string sql = "Update Users set UserName=N'" + userName + "' ,Email=N'" + email + "' ,Address=N'" + address + "' ,Phone=N'" + phone + "' ,RoleId=" + roleId + " ,Status=N'" + status + "' Where UserId="+userId+"";
            usDAL.ExcuteNonQuery(sql);
        }
        public DataTable GetUser(int Id)
        {
            string sql = "Select * From Users join Role on Role.RoleId=Users.RoleId Where UserId='" + Id + "'";
            return usDAL.GetTable(sql);
        }
        public void InsertUser(UserDTO user)
        {
            string sql = "Insert into Users Values (N'" + user.UserName + "',N'" + user.Email + "',N'" + user.Phone + "',N'" + user.Address + "'," + user.RoleId + ",N'" + user.Status + "')";
            usDAL.ExcuteNonQuery(sql);   
        }
        public DataTable SearchUser(string name)
        {
            string sql = "Select * From Users join Role on Role.RoleId=Users.RoleId Where UserName='" + name + "'";
            return usDAL.GetTable(sql);
        }
        public void DeleteUser(int id)
        {
            string sql="Delete From Users Where UserId='"+id+"'";
            usDAL.ExcuteNonQuery(sql);
        }
    }
}
