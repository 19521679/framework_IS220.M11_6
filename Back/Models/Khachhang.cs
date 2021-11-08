using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Newtonsoft.Json;
#nullable disable

namespace Back.Models
{
    public class Khachhang
    {
        public Khachhang()
        {
        }
        [Key]
        public string Makhachhang { get; set; }
        public string Tenkhachhang { get; set; }
        public string Email { get; set; }
        public string Sodienthoai { get; set; }
        public string Diachi { get; set; }
        public DateTime? Ngaysinh { get; set; }
        public string Loaikhachhang { get; set; }

        [JsonIgnore]
        public ICollection<Danhgia> Danhgia { get; set; }
        [JsonIgnore]
        public ICollection<Giohang> Giohangs { get; set; }
        [JsonIgnore]
        public ICollection<Hoadon> Hoadons { get; set; }
        [JsonIgnore]
        public ICollection<Taikhoankhachhang> Taikhoankhachhangs { get; set; }
        public override string ToString()
        {
            return JsonConvert.SerializeObject(this);
        }
    }
}
