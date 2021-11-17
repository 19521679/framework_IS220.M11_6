using System;
using System.Collections.Generic;

#nullable disable

namespace Back.Models
{
    public class Baohanh
    {
        public string Mabaohanh { get; set; }
        public string Imei { get; set; }
        public DateTime? Ngaybaohanh { get; set; }
        public double? Chiphi { get; set; }
        public string Ghichu { get; set; }

        public Chitietsanpham ImeiNavigation { get; set; }
    }
}
