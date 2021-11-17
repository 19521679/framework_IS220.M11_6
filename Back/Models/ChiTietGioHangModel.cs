using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Back.Models
{
    public partial class ChiTietGioHangModel
    {
        [Display(Name = "Mã giỏ hàng")]
        public int Magiohang { get; set; }
        [Display(Name = "Mã sản phẩm")]
        public int Masanpham { get; set; }
        [Display(Name = "Số lượng")]
        public int Soluong { get; set; }

        public  GioHangModel GioHang { get; set; }
        public  SanPhamModel SanPham { get; set; }
    }
}
