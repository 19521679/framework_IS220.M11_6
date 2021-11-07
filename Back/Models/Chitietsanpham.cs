using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Newtonsoft.Json;

#nullable disable

namespace Back.Models
{
    public class Chitietsanpham
    {
        public Chitietsanpham()
        {
            Baohanhs = new HashSet<Baohanh>();
            Chitiethoadons = new HashSet<Chitiethoadon>();
        }

        [Key]
        public string Imei { get; set; }
        public string Masanpham { get; set; }
        public DateTime? Ngaysanxuat { get; set; }
        public string Tinhtrang { get; set; }

        public Sanpham MasanphamNavigation { get; set; }
        public ICollection<Baohanh> Baohanhs { get; set; }
        public ICollection<Chitiethoadon> Chitiethoadons { get; set; }
        public override string ToString()
        {
            return JsonConvert.SerializeObject(this);
        }
    }
}
