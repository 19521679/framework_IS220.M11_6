using System;
using System.Collections.Generic;

#nullable disable

namespace Back.Models
{
    public class Taikhoankhachhang
    {
        public string Username { get; set; }
        public string Password { get; set; }
        public string Makhachhang { get; set; }

        public Khachhang MakhachhangNavigation { get; set; }
    }
}
