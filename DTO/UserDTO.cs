using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class UserDTO
    {
        private string _userName, _email, _phone, _address,_pass,_roleId;
        private int _userId;
        

        public int UserId { get => _userId; set => _userId = value; }
        public string UserName { get => _userName; set => _userName = value; }
        public string Email { get => _email; set => _email = value; }
        public string Pass { get => _pass; set => _pass =value; }
        public string Phone { get => _phone; set => _phone = value; }
        public string Address { get => _address; set => _address = value; }
        public string RoleId { get => _roleId; set => _roleId = value; }
        

        public UserDTO()
        {

        }
        public UserDTO(int userId, string userName, string email,string pass, string phone, string address, string roleId)
        {
            this.UserId = userId;
            this.UserName = userName;
            this.Email = email;
            this.Pass = pass;
            this.Phone = phone;
            this.Address = address;
            this.RoleId = roleId;
        }
        public UserDTO( string userName, string email,string pass, string phone, string address, string roleId)
        {
            
            this.UserName = userName;
            this.Email = email;
            this.Pass = pass;
            this.Phone = phone;
            this.Address = address;
            this.RoleId = roleId;
            
        }
    }
}
