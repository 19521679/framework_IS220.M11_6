using System;
using System.Collections.Generic;

#nullable disable

namespace Back.Models
{
    public class Thuonghieu
    {
        public Thuonghieu()
        {
            Sanphams = new HashSet<Sanpham>();
        }

        public string Mathuonghieu { get; set; }
        public string Tenthuonghieu { get; set; }
        public string Xuatxu { get; set; }

        public  ICollection<Sanpham> Sanphams { get; set; }
    }
}
