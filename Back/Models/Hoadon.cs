﻿using System;
using System.Collections.Generic;

#nullable disable

namespace Back.Models
{
    public class Hoadon
    {
        public Hoadon()
        {
            Chitiethoadons = new HashSet<Chitiethoadon>();
            Vanchuyens = new HashSet<Vanchuyen>();
        }

        public string Sohoadon { get; set; }
        public string Makhachhang { get; set; }
        public string Makhuyenmai { get; set; }
        public DateTime? Ngayhoadon { get; set; }
        public string Manhanvien { get; set; }
        public double? Tongtien { get; set; }

        public Khachhang MakhachhangNavigation { get; set; }
        public Khuyenmai MakhuyenmaiNavigation { get; set; }
        public Nhanvien ManhanvienNavigation { get; set; }
        public ICollection<Chitiethoadon> Chitiethoadons { get; set; }
        public ICollection<Vanchuyen> Vanchuyens { get; set; }
    }
}
