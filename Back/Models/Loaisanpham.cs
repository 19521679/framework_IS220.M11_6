using System;
using System.Collections.Generic;

#nullable disable

namespace Back.Models
{
    public class Loaisanpham
    {
        public Loaisanpham()
        {
            Sanphams = new HashSet<Sanpham>();
        }

        public string Maloai { get; set; }
        public string Tenloai { get; set; }

        public ICollection<Sanpham> Sanphams { get; set; }
    }
}
