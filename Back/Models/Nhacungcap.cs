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
    public partial class Nhacungcap
=======
    public class Nhacungcap
>>>>>>> khang
    {
        public Nhacungcap()
        {
            Phieunhapsanphams = new HashSet<Phieunhapsanpham>();
        }

<<<<<<< HEAD
        public int Manhacungcap { get; set; }
=======
        public string Manhacungcap { get; set; }
>>>>>>> khang
        public string Tennhacungcap { get; set; }
        public string Email { get; set; }
        public string Sodienthoai { get; set; }
        public string Diachi { get; set; }

<<<<<<< HEAD
        [JsonIgnore]
        public virtual ICollection<Phieunhapsanpham> Phieunhapsanphams { get; set; }
        public override string ToString()
        {
            return JsonConvert.SerializeObject(this);
        }
=======
        public ICollection<Phieunhapsanpham> Phieunhapsanphams { get; set; }
>>>>>>> khang
    }
}
