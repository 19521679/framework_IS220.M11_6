using System;
using System.Collections.Generic;
<<<<<<< HEAD
using Newtonsoft.Json;
=======
>>>>>>> khang

#nullable disable

namespace Back.Models
{
<<<<<<< HEAD
    public partial class Sanpham
=======
    public class Sanpham
>>>>>>> khang
    {
        public Sanpham()
        {
            Chitietgiohangs = new HashSet<Chitietgiohang>();
            Chitietsanphams = new HashSet<Chitietsanpham>();
            Danhgia = new HashSet<Danhgia>();
            Phieunhapsanphams = new HashSet<Phieunhapsanpham>();
        }

<<<<<<< HEAD
        public int Masanpham { get; set; }
        public string Tensanpham { get; set; }
        public int Maloai { get; set; }
        public int Mathuonghieu { get; set; }
        public int Soluongton { get; set; }
        public string Mota { get; set; }
        public string Image { get; set; }
        public DateTime? Thoidiemramat { get; set; }
        public double Dongia { get; set; }

        public virtual Loaisanpham MaloaiNavigation { get; set; }
        public virtual Thuonghieu MathuonghieuNavigation { get; set; }
        [JsonIgnore]
        public virtual ICollection<Chitietgiohang> Chitietgiohangs { get; set; }
        [JsonIgnore]
        public virtual ICollection<Chitietsanpham> Chitietsanphams { get; set; }
        [JsonIgnore]
        public virtual ICollection<Danhgia> Danhgia { get; set; }
        [JsonIgnore]
        public virtual ICollection<Phieunhapsanpham> Phieunhapsanphams { get; set; }
        public override string ToString()
        {
            return JsonConvert.SerializeObject(this);
        }
=======
        public string Masanpham { get; set; }
        public string Tensanpham { get; set; }
        public string Maloai { get; set; }
        public string Mathuonghieu { get; set; }
        public int? Soluongton { get; set; }
        public string Mota { get; set; }
        public byte[] Image { get; set; }
        public DateTime? Thoidiemramat { get; set; }
        public double? Dongia { get; set; }

        public Loaisanpham MaloaiNavigation { get; set; }
        public Thuonghieu MathuonghieuNavigation { get; set; }
        public ICollection<Chitietgiohang> Chitietgiohangs { get; set; }
        public ICollection<Chitietsanpham> Chitietsanphams { get; set; }
        public ICollection<Danhgia> Danhgia { get; set; }
        public ICollection<Phieunhapsanpham> Phieunhapsanphams { get; set; }
>>>>>>> khang
    }
}
