using System;
using System.Collections.Generic;

#nullable disable

namespace Back.Models
{
    public class Khuyenmai
    {
        public Khuyenmai()
        {
            Hoadons = new HashSet<Hoadon>();
        }

        public string Makhuyenmai { get; set; }
        public string Tenkhuyenmai { get; set; }
        public double? Tilekhuyenmai { get; set; }
        public DateTime? Ngaybatdau { get; set; }
        public DateTime? Ngayketthuc { get; set; }
        public string Dieukien { get; set; }

        public ICollection<Hoadon> Hoadons { get; set; }
    }
}
