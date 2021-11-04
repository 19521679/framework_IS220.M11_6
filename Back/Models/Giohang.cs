using System;
using System.Collections.Generic;

#nullable disable

namespace Back.Models
{
    public class Giohang
    {
        public string Magiohang { get; set; }
        public string Makhachhang { get; set; }
        public double? Tongtien { get; set; }

        public Khachhang MakhachhangNavigation { get; set; }
    }
}
