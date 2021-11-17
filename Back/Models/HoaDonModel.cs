using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Back.Models
{
    public partial class HoaDonModel
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Display(Name = "Số hóa đơn")]
        public int Sohoadon { get; set; }
        [Display(Name = "Mã khách hàng")]
        public int Makhachhang { get; set; }
        [ForeignKey("Makhachhang")]
        [Display(Name = "Mã khuyến mãi")]
        public int? Makhuyenmai { get; set; }
        [ForeignKey("Makhuyenmai")]
        [Display(Name = "Ngày hóa đơn")]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        public DateTime Ngayhoadon { get; set; }
        [Display(Name = "Mã nhân viên")]
        public int Manhanvien { get; set; }
        [ForeignKey("Manhanvien")]
        [Display(Name = "Tổng tiền")]
        public double Tongtien { get; set; }

        public  KhachHangModel khachHang { get; set; }
        public  KhuyenMaiModel khuyenMai { get; set; }
        public  NhanVienModel nhanVien { get; set; }
        public  ICollection<ChiTietHoaDonModel> chiTietHoaDons { get; set; }
        public  ICollection<VanChuyenModel> vanChuyens { get; set; }
    }
}
