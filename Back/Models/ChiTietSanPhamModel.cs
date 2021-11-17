using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Back.Models
{
    public partial class ChiTietSanPhamModel
    {
        [Key]
        [Display(Name = "Imei")]
        public string Imei { get; set; }
        [Display(Name = "Mã sản phẩm")]
        public int Masanpham { get; set; }
        [ForeignKey("Masanpham")]
        [Display(Name = "Ngày sản xuất")]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        public DateTime Ngaysanxuat { get; set; }
        [Display(Name = "Tình trạng")]
        public string Tinhtrang { get; set; }

        public SanPhamModel sanPham { get; set; }
        public  ICollection<BaoHanhModel> baoHanhs { get; set; }
        public  ICollection<ChiTietHoaDonModel> chiTietHoaDons { get; set; }
    }
}
