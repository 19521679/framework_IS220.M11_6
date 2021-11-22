using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace Back.Models
{
    public partial class KhachHangModel
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Display(Name = "Mã khách hàng")]
        public int Makhachhang { get; set; }
        [Display(Name = "Tên khách hàng")]
        public string Tenkhachhang { get; set; }
        [Display(Name = "Email")]
        public string Email { get; set; }
        [Display(Name = "Số điện thoại")]
        public string Sodienthoai { get; set; }
        [Display(Name = "Địa chỉ")]
        public string Diachi { get; set; }
        [Display(Name = "Ngày sinh")]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        public DateTime? Ngaysinh { get; set; }
        [Display(Name = "Loại khách hàng")]
        public string Loaikhachhang { get; set; }

        public  ICollection<DanhGiaModel> Danhgia { get; set; }
        public  ICollection<GioHangModel> Giohang { get; set; }
        public  ICollection<HoaDonModel> hoaDons { get; set; }
        public  ICollection<TaiKhoanKhachHangModel> taiKhoanKhachHangs { get; set; }
    }
}
