using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace Back.Models
{
    public partial class NhanVienModel
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Display(Name = "Mã nhân viên")]
        public int Manhanvien { get; set; }
        [Display(Name = "Tên nhân viên")]
        public string Tennhanvien { get; set; }
        [Display(Name = "Email")]
        public string Email { get; set; }
        [Display(Name = "Số điện thoại")]
        public string Sodienthoai { get; set; }
        [Display(Name = "Địa chỉ")]
        public string Diachi { get; set; }
        [Display(Name = "Ngày vào làm")]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        public DateTime Ngayvaolam { get; set; }
        [Display(Name = "CCCD")]
        public string Cccd { get; set; }
        [Display(Name = "Ngày sinh")]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        public DateTime Ngaysinh { get; set; }
        [Display(Name = "Chức vụ")]
        public string Chucvu { get; set; }

        public  ICollection<HoaDonModel> hoaDons { get; set; }
        public  ICollection<TaiKhoanNhanVienModel> taiKhoanNhanViens { get; set; }
    }
}
