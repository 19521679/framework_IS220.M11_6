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
    public partial class Nhanvien
=======
    public class Nhanvien
>>>>>>> khang
    {
        public Nhanvien()
        {
            Hoadons = new HashSet<Hoadon>();
            Taikhoannhanviens = new HashSet<Taikhoannhanvien>();
        }

<<<<<<< HEAD
        public int Manhanvien { get; set; }
=======
        public string Manhanvien { get; set; }
>>>>>>> khang
        public string Tennhanvien { get; set; }
        public string Email { get; set; }
        public string Sodienthoai { get; set; }
        public string Diachi { get; set; }
<<<<<<< HEAD
        public DateTime Ngayvaolam { get; set; }
        public string Cccd { get; set; }
        public DateTime Ngaysinh { get; set; }
        public string Chucvu { get; set; }

        [JsonIgnore]
        public virtual ICollection<Hoadon> Hoadons { get; set; }
        [JsonIgnore]
        public virtual ICollection<Taikhoannhanvien> Taikhoannhanviens { get; set; }
        public override string ToString()
        {
            return JsonConvert.SerializeObject(this);
        }
=======
        public DateTime? Ngayvaolam { get; set; }
        public string Cccd { get; set; }
        public DateTime? Ngaysinh { get; set; }
        public string Chucvu { get; set; }

        public ICollection<Hoadon> Hoadons { get; set; }
        public ICollection<Taikhoannhanvien> Taikhoannhanviens { get; set; }
>>>>>>> khang
    }
}
