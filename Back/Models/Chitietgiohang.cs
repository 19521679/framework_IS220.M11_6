using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Newtonsoft.Json;

#nullable disable

namespace Back.Models
{
    public class Chitietgiohang
    {
        [Key]
        public string Magiohang { get; set; }
        public string Masanpham { get; set; }
        public int? Soluong { get; set; }

        public Sanpham MasanphamNavigation { get; set; }
        public override string ToString()
        {
            return JsonConvert.SerializeObject(this);
        }
    }
}
