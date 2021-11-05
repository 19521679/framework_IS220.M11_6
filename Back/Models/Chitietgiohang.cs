using System;
using System.Collections.Generic;

#nullable disable

namespace Back.Models
{
    public class Chitietgiohang
    {
        public string Magiohang { get; set; }
        public string Masanpham { get; set; }
        public int? Soluong { get; set; }

        public Sanpham MasanphamNavigation { get; set; }
    }
}
