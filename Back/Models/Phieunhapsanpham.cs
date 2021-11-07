using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Newtonsoft.Json;

#nullable disable

namespace Back.Models
{
    public class Phieunhapsanpham
    {
        [Key]
        public string Maphieunhap { get; set; }
        public string Masanpham { get; set; }
        public string Manhacungcap { get; set; }
        public int? Soluongnhap { get; set; }
        public DateTime? Ngaynhap { get; set; }
        public double? Tiennhap { get; set; }
        public string Ghichu { get; set; }

        public Nhacungcap ManhacungcapNavigation { get; set; }
        public Sanpham MasanphamNavigation { get; set; }
        public override string ToString()
        {
            return JsonConvert.SerializeObject(this);
        }
    }
}
