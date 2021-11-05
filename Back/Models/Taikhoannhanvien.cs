using System;
using System.Collections.Generic;

#nullable disable

namespace Back.Models
{
    public class Taikhoannhanvien
    {
        public string Username { get; set; }
        public string Password { get; set; }
        public string Manhanvien { get; set; }

        public  Nhanvien ManhanvienNavigation { get; set; }
    }
}
