using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Back.Models
{
    public partial class VanChuyenModel
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Display(Name = "Mã vận chuyển")]
        public int Mavanchuyen { get; set; }

        [ForeignKey("Sohoadon")]
        [Display(Name = "Số hóa đơn")]
        public int Sohoadon { get; set; }
        
        [Display(Name = "Trạng thái")]
        public string Trangthai { get; set; }

        public HoaDonModel hoaDon { get; set; }
        public  ICollection<ChiTietVanChuyenModel> chiTietVanChuyens { get; set; }
    }
}
