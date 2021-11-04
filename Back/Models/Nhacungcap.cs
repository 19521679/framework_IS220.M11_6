using System;
using System.Collections.Generic;

#nullable disable

namespace Back.Models
{
    public class Nhacungcap
    {
        public Nhacungcap()
        {
            Phieunhapsanphams = new HashSet<Phieunhapsanpham>();
        }

        public string Manhacungcap { get; set; }
        public string Tennhacungcap { get; set; }
        public string Email { get; set; }
        public string Sodienthoai { get; set; }
        public string Diachi { get; set; }

        public ICollection<Phieunhapsanpham> Phieunhapsanphams { get; set; }
    }
}
