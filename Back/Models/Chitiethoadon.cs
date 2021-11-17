using System;
using System.Collections.Generic;

#nullable disable

namespace Back.Models
{
    public class Chitiethoadon
    {
        public string Sohoadon { get; set; }
        public string Imei { get; set; }
        public int? Soluong { get; set; }
        public double? Tien { get; set; }

        public Chitietsanpham ImeiNavigation { get; set; }
        public Hoadon SohoadonNavigation { get; set; }
    }
}
