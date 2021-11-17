using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Back.Models
{
    public partial class ChiTietHoaDonModel
    {
        [Display(Name = "Số hóa đơn")]
        public int Sohoadon { get; set; }
        [ForeignKey("Sohoadon")]
        [Display(Name = "Imei")]
        public string Imei { get; set; }
        [ForeignKey("Imei")]
        /*[Display(Name = "Số lượng")]
        public int Soluong { get; set; }*/
        [Display(Name = "Tiền")]
        public double Tien { get; set; }

        public  ChiTietSanPhamModel ChiTietSanPham { get; set; }
        public  HoaDonModel HoaDon { get; set; }
    }
}
