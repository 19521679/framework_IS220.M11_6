using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Newtonsoft.Json;

#nullable disable

namespace Back.Models
{
    public class Taikhoannhanvien
    {
        [Key]
        public string Username { get; set; }
        public string Password { get; set; }
        public string Manhanvien { get; set; }

        public  Nhanvien ManhanvienNavigation { get; set; }
        public override string ToString()
        {
            return JsonConvert.SerializeObject(this);
        }
    }
}
