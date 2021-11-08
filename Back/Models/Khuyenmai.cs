using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Newtonsoft.Json;
#nullable disable

namespace Back.Models
{
    public class Khuyenmai
    {
        public Khuyenmai()
        {
            Hoadons = new HashSet<Hoadon>();
        }
        [Key]
        public string Makhuyenmai { get; set; }
        public string Tenkhuyenmai { get; set; }
        public double? Tilekhuyenmai { get; set; }
        public DateTime? Ngaybatdau { get; set; }
        public DateTime? Ngayketthuc { get; set; }
        public string Dieukien { get; set; }

        [JsonIgnore]
        public ICollection<Hoadon> Hoadons { get; set; }
        public override string ToString()
        {
            return JsonConvert.SerializeObject(this);
        }
    }
}
