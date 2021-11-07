using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Newtonsoft.Json;


#nullable disable

namespace Back.Models
{
    public class Baohanh
    {
        [Key]
        public string Mabaohanh { get; set; }
        public string Imei { get; set; }
        public DateTime? Ngaybaohanh { get; set; }
        public double? Chiphi { get; set; }
        public string Ghichu { get; set; }

        public Chitietsanpham ImeiNavigation { get; set; }
        public override string ToString()
        {
            return JsonConvert.SerializeObject(this);
        }
    }
}
