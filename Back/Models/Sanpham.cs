using System;
using System.Collections.Generic;

#nullable disable

namespace Back.Models
{
    public class Sanpham
    {
        public Sanpham()
        {
            Chitietgiohangs = new HashSet<Chitietgiohang>();
            Chitietsanphams = new HashSet<Chitietsanpham>();
            Danhgia = new HashSet<Danhgia>();
            Phieunhapsanphams = new HashSet<Phieunhapsanpham>();
        }

        public string Masanpham { get; set; }
        public string Tensanpham { get; set; }
        public string Maloai { get; set; }
        public string Mathuonghieu { get; set; }
        public int? Soluongton { get; set; }
        public string Mota { get; set; }
        public byte[] Image { get; set; }
        public DateTime? Thoidiemramat { get; set; }
        public double? Dongia { get; set; }

        public Loaisanpham MaloaiNavigation { get; set; }
        public Thuonghieu MathuonghieuNavigation { get; set; }
        public ICollection<Chitietgiohang> Chitietgiohangs { get; set; }
        public ICollection<Chitietsanpham> Chitietsanphams { get; set; }
        public ICollection<Danhgia> Danhgia { get; set; }
        public ICollection<Phieunhapsanpham> Phieunhapsanphams { get; set; }
    }
}
