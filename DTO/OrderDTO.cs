using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class OrderDTO
    {
        int _userId;
        string _tourId;

        public int UserId { get => _userId; set => _userId = value; }
        public string TourId { get => _tourId; set => _tourId = value; }
        
        public OrderDTO()
        {

        }
        public OrderDTO(int userId,string tourId)
        {
            this.UserId = userId;
            this.TourId = tourId;
            
        }
    }
}
