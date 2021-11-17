using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Back.Models
{
    public partial class DanhGiaModel
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Display(Name = "Mã đánh giá")]
        public int Madanhgia { get; set; }
        [Display(Name = "Mã sản phẩm")]
        public int Masanpham { get; set; }
        [ForeignKey("Masanpham")]
        [Display(Name = "Mã khách hang")]
        public int Makhachhang { get; set; }
        [ForeignKey("Makhachhang")]
        [Display(Name = "Nội dung")]
        public string Noidung { get; set; }
        [Display(Name = "Số sao")]
        public int Sosao { get; set; }
        [Display(Name = "Thời gian")]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        public DateTime Thoigian { get; set; }
        [Display(Name = "Hình ảnh")]
        public string Image { get; set; }

        public  KhachHangModel khachHang { get; set; }
        public  SanPhamModel sanPham { get; set; }
    }
}
