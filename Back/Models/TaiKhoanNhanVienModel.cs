using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Back.Models
{
    public partial class TaiKhoanNhanVienModel
    {
        [Key]
        [Display(Name = "Username")]
        public string Username { get; set; }
        [Display(Name = "Password")]
        public string Password { get; set; }
        [Display(Name = "Mã nhân viên")]
        public int Manhanvien { get; set; }
        [ForeignKey("Manhanvien")]
        public  NhanVienModel nhanVien { get; set; }
    }
}
