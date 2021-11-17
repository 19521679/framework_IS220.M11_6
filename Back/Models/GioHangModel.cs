using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Back.Models
{
    public partial class GioHangModel
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Display(Name = "Mã giỏ hàng")]
        public int Magiohang { get; set; }
        [Display(Name = "Mã khách hàng")]
        public int Makhachhang { get; set; }
        [ForeignKey("Makhachhang")]
        [Display(Name = "Tổng tiền")]
        public double Tongtien { get; set; }

        public  KhachHangModel khachHang { get; set; }
        public  ICollection<ChiTietGioHangModel> chiTietGioHangs { get; set; }
    }
}
