using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Newtonsoft.Json;

#nullable disable

namespace Back.Models
{
    public class Chitiethoadon
    {
        [Key]
        public string Sohoadon { get; set; }
        public string Imei { get; set; }
        public int? Soluong { get; set; }
        public double? Tien { get; set; }

        public Chitietsanpham ImeiNavigation { get; set; }
        public Hoadon SohoadonNavigation { get; set; }
        public override string ToString()
        {
            return JsonConvert.SerializeObject(this);
        }
    }
}
