using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Back.Models
{
    public partial class PhieuNhapSanPhamModel
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Display(Name = "Mã phiếu nhập")]
        public int Maphieunhap { get; set; }
        [Display(Name = "Mã sản phẩm")]
        public int Masanpham { get; set; }
        [ForeignKey("Masanpham")]
        [Display(Name = "Mã nhà cung cấp")]
        public int Manhacungcap { get; set; }
        [ForeignKey("Manhacungcap")]
        [Display(Name = "Số lượng nhập")]
        public int Soluongnhap { get; set; }
        [Display(Name = "Ngày nhập")]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        public DateTime Ngaynhap { get; set; }
        [Display(Name = "Tiền nhập")]
        public double Tiennhap { get; set; }
        [Display(Name = "Ghi chú")]
        public string Ghichu { get; set; }

        public  NhaCungCapModel nhaCungCap { get; set; }
        public  SanPhamModel SanPham { get; set; }
    }
}
