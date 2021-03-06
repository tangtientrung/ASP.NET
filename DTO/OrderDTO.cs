﻿using System;
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
        DateTime _dateOrder;
        string status;
        public int UserId { get => _userId; set => _userId = value; }
        public string TourId { get => _tourId; set => _tourId = value; }
        public DateTime DateOrder { get => _dateOrder; set => _dateOrder = value; }
        public string Status { get => status; set => status = value; }

        public OrderDTO()
        {

        }
        public OrderDTO(int userId,string tourId,DateTime dateOrder, string status)
        {
            this.UserId = userId;
            this.TourId = tourId;
            this.DateOrder = dateOrder;
            this.Status = status;
        }
    }
}
