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
    public partial class Khachhang
=======
    public class Khachhang
>>>>>>> khang
    {
        public Khachhang()
        {
            Danhgia = new HashSet<Danhgia>();
            Giohangs = new HashSet<Giohang>();
            Hoadons = new HashSet<Hoadon>();
            Taikhoankhachhangs = new HashSet<Taikhoankhachhang>();
        }

<<<<<<< HEAD
        public int Makhachhang { get; set; }
=======
        public string Makhachhang { get; set; }
>>>>>>> khang
        public string Tenkhachhang { get; set; }
        public string Email { get; set; }
        public string Sodienthoai { get; set; }
        public string Diachi { get; set; }
        public DateTime? Ngaysinh { get; set; }
        public string Loaikhachhang { get; set; }

<<<<<<< HEAD
        [JsonIgnore]
        public virtual ICollection<Danhgia> Danhgia { get; set; }
        [JsonIgnore]
        public virtual ICollection<Giohang> Giohangs { get; set; }
        [JsonIgnore]
        public virtual ICollection<Hoadon> Hoadons { get; set; }
        [JsonIgnore]
        public virtual ICollection<Taikhoankhachhang> Taikhoankhachhangs { get; set; }
        public override string ToString()
        {
            return JsonConvert.SerializeObject(this);
        }
=======
        public ICollection<Danhgia> Danhgia { get; set; }
        public ICollection<Giohang> Giohangs { get; set; }
        public ICollection<Hoadon> Hoadons { get; set; }
        public ICollection<Taikhoankhachhang> Taikhoankhachhangs { get; set; }
>>>>>>> khang
    }
}
