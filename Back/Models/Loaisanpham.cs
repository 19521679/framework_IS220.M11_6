using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Newtonsoft.Json;

#nullable disable

namespace Back.Models
{
    public class Loaisanpham
    {
        public Loaisanpham()
        {
            Sanphams = new HashSet<Sanpham>();
        }
        [Key]
        public string Maloai { get; set; }
        public string Tenloai { get; set; }

        [JsonIgnore]
        public ICollection<Sanpham> Sanphams { get; set; }
        public override string ToString()
        {
            return JsonConvert.SerializeObject(this);
        }
    }
}
