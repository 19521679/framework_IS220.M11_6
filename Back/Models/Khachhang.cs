using System;
using System.Collections.Generic;

#nullable disable

namespace Back.Models
{
    public class Khachhang
    {
        public Khachhang()
        {
            Danhgia = new HashSet<Danhgia>();
            Giohangs = new HashSet<Giohang>();
            Hoadons = new HashSet<Hoadon>();
            Taikhoankhachhangs = new HashSet<Taikhoankhachhang>();
        }

        public string Makhachhang { get; set; }
        public string Tenkhachhang { get; set; }
        public string Email { get; set; }
        public string Sodienthoai { get; set; }
        public string Diachi { get; set; }
        public DateTime? Ngaysinh { get; set; }
        public string Loaikhachhang { get; set; }

        public ICollection<Danhgia> Danhgia { get; set; }
        public ICollection<Giohang> Giohangs { get; set; }
        public ICollection<Hoadon> Hoadons { get; set; }
        public ICollection<Taikhoankhachhang> Taikhoankhachhangs { get; set; }
    }
}
