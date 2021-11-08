using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Newtonsoft.Json;

#nullable disable

namespace Back.Models
{
    public class Sanpham
    {
        public Sanpham()
        {
        }
        [Key]
        public string Masanpham { get; set; }
        public string Tensanpham { get; set; }
        public string Maloai { get; set; }
        public string Mathuonghieu { get; set; }
        public int? Soluongton { get; set; }
        public string Mota { get; set; }
        public string Image { get; set; }
        public DateTime? Thoidiemramat { get; set; }
        public double? Dongia { get; set; }

        public Loaisanpham MaloaiNavigation { get; set; }
        public Thuonghieu MathuonghieuNavigation { get; set; }
        [JsonIgnore]
        public ICollection<Chitietgiohang> Chitietgiohangs { get; set; }
        [JsonIgnore]
        public ICollection<Chitietsanpham> Chitietsanphams { get; set; }
        [JsonIgnore]
        public ICollection<Danhgia> Danhgia { get; set; }
        [JsonIgnore]
        public ICollection<Phieunhapsanpham> Phieunhapsanphams { get; set; }
        public override string ToString()
        {
            return JsonConvert.SerializeObject(this);
        }
    }
}
