using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Back.Models
{
    public partial class SanPhamModel
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Display(Name = "Mã sản phẩm")]
        public int Masanpham { get; set; }
        [Display(Name = "Tên sản phẩm")]
        public string Tensanpham { get; set; }
        [Display(Name = "Mã loại")]
        public int Maloai { get; set; }
        [ForeignKey("Maloai")]
        [Display(Name = "Mã thương hiệu")]
        public int Mathuonghieu { get; set; }
        [ForeignKey("Mathuonghieu")]
        [Display(Name = "Số lượng tồn")]
        public int Soluongton { get; set; }
        [Display(Name = "Mô tả")]
        public string Mota { get; set; }
        [Display(Name = "Hình ảnh")]
        public string Image { get; set; }
        [Display(Name = "Thời điểm ra mắt")]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        public DateTime? Thoidiemramat { get; set; }
        [Display(Name = "Đơn giá")]
        public double Dongia { get; set; }

        public  LoaiSanPhamModel loaiSanPham { get; set; }
        public  ThuongHieuModel thuongHieu { get; set; }
        public  ICollection<ChiTietGioHangModel> chiTietGioHangs { get; set; }
        public  ICollection<ChiTietSanPhamModel> chiTietSanPhams { get; set; }
        public  ICollection<DanhGiaModel> Danhgia { get; set; }
        public  ICollection<PhieuNhapSanPhamModel> phieuNhapSanPhams { get; set; }
    }
}
