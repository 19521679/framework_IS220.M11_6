using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Back.Models
{
    public partial class TaiKhoanKhachHangModel
    {
        [Key]
        [Display(Name = "Username")]
        public string Username { get; set; }
        [Display(Name = "Password")]
        public string Password { get; set; }
        [Display(Name = "Mã khách hàng")]
        public int Makhachhang { get; set; }
        [ForeignKey("Makhachhang")]

        public KhachHangModel khachHang { get; set; }
    }
}
