using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Newtonsoft.Json;

#nullable disable

namespace Back.Models
{
    public class Vanchuyen
    {
        [Key]
        public string Mavanchuyen { get; set; }
        public string Sohoadon { get; set; }
        public string Tinhtrang { get; set; }
        public DateTime? Thoidiem { get; set; }

        public Hoadon SohoadonNavigation { get; set; }
        public override string ToString()
        {
            return JsonConvert.SerializeObject(this);
        }
    }
}
