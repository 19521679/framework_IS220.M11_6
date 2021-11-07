using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Newtonsoft.Json;

#nullable disable

namespace Back.Models
{
    public class Taikhoankhachhang
    {
        [Key]
        public string Username { get; set; }
        public string Password { get; set; }
        public string Makhachhang { get; set; }

        public Khachhang MakhachhangNavigation { get; set; }
        public override string ToString()
        {
            return JsonConvert.SerializeObject(this);
        }
    }
}
