using System;
using System.Collections.Generic;
<<<<<<< HEAD
using Newtonsoft.Json;
=======
>>>>>>> khang

#nullable disable

namespace Back.Models
{
<<<<<<< HEAD
    public partial class Phieunhapsanpham
    {
        public int Maphieunhap { get; set; }
        public int Masanpham { get; set; }
        public int Manhacungcap { get; set; }
        public int Soluongnhap { get; set; }
        public DateTime Ngaynhap { get; set; }
        public double Tiennhap { get; set; }
        public string Ghichu { get; set; }

        public virtual Nhacungcap ManhacungcapNavigation { get; set; }
        public virtual Sanpham MasanphamNavigation { get; set; }
        public override string ToString()
        {
            return JsonConvert.SerializeObject(this);
        }
=======
    public class Phieunhapsanpham
    {
        public string Maphieunhap { get; set; }
        public string Masanpham { get; set; }
        public string Manhacungcap { get; set; }
        public int? Soluongnhap { get; set; }
        public DateTime? Ngaynhap { get; set; }
        public double? Tiennhap { get; set; }
        public string Ghichu { get; set; }

        public Nhacungcap ManhacungcapNavigation { get; set; }
        public Sanpham MasanphamNavigation { get; set; }
>>>>>>> khang
    }
}
