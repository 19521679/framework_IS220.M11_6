using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Newtonsoft.Json;
#nullable disable

namespace Back.Models
{
    public class Nhanvien
    {
        public Nhanvien()
        {
            Hoadons = new HashSet<Hoadon>();
            Taikhoannhanviens = new HashSet<Taikhoannhanvien>();
        }

        [Key]
        public string Manhanvien { get; set; }
        public string Tennhanvien { get; set; }
        public string Email { get; set; }
        public string Sodienthoai { get; set; }
        public string Diachi { get; set; }
        public DateTime? Ngayvaolam { get; set; }
        public string Cccd { get; set; }
        public DateTime? Ngaysinh { get; set; }
        public string Chucvu { get; set; }

        public ICollection<Hoadon> Hoadons { get; set; }
        public ICollection<Taikhoannhanvien> Taikhoannhanviens { get; set; }
        public override string ToString()
        {
            return JsonConvert.SerializeObject(this);
        }
    }
}
