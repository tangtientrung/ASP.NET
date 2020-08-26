using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class UserDTO
    {
        private string _userName, _email, _phone, _address;
        private int _userId,_roleId;
        private string _status;

        public string UserName { get => _userName; set => _userName = value; }
        public string Email { get => _email; set => _email = value; }
        public string Phone { get => _phone; set => _phone = value; }
        public string Address { get => _address; set => _address = value; }
        public int RoleId { get => _roleId; set => _roleId = value; }
        public int UserId { get => _userId; set => _userId = value; }
        public string Status { get => _status; set => _status = value; }

        public UserDTO()
        {

        }
        public UserDTO(int userId, string userName, string email, string phone, string address, int roleId, string status)
        {
            this.UserId = userId;
            this.UserName = userName;
            this.Email = email;
            this.Phone = phone;
            this.Address = address;
            this.RoleId = roleId;
            this.Status = status;
        }
        public UserDTO( string userName, string email, string phone, string address, int roleId, string status)
        {
            
            this.UserName = userName;
            this.Email = email;
            this.Phone = phone;
            this.Address = address;
            this.RoleId = roleId;
            this.Status = status;
        }
    }
}
