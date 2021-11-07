using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Newtonsoft.Json;
#nullable disable

namespace Back.Models
{
    public class Giohang
    {
        [Key]
        public string Magiohang { get; set; }
        public string Makhachhang { get; set; }
        public double? Tongtien { get; set; }

        public Khachhang MakhachhangNavigation { get; set; }
        public override string ToString()
        {
            return JsonConvert.SerializeObject(this);
        }
    }
}
