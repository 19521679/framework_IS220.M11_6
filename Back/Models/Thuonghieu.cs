using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Newtonsoft.Json;

#nullable disable

namespace Back.Models
{
    public class Thuonghieu
    {
        public Thuonghieu()
        {
            Sanphams = new HashSet<Sanpham>();
        }
        [Key]
        public string Mathuonghieu { get; set; }
        public string Tenthuonghieu { get; set; }
        public string Xuatxu { get; set; }

        [JsonIgnore]
        public  ICollection<Sanpham> Sanphams { get; set; }
        public override string ToString()
        {
            return JsonConvert.SerializeObject(this);
        }
    }
}
