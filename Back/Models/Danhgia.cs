using System;
using System.Collections.Generic;

#nullable disable

namespace Back.Models
{
    public class Danhgia
    {
        public string Madanhgia { get; set; }
        public string Masanpham { get; set; }
        public string Makhachhang { get; set; }
        public string Noidung { get; set; }
        public int? Sosao { get; set; }
        public DateTime? Thoigian { get; set; }
        public byte[] Image { get; set; }

        public Khachhang MakhachhangNavigation { get; set; }
        public Sanpham MasanphamNavigation { get; set; }
    }
}
