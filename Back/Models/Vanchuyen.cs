using System;
using System.Collections.Generic;

#nullable disable

namespace Back.Models
{
    public class Vanchuyen
    {
        public string Mavanchuyen { get; set; }
        public string Sohoadon { get; set; }
        public string Tinhtrang { get; set; }
        public DateTime? Thoidiem { get; set; }

        public Hoadon SohoadonNavigation { get; set; }
    }
}
