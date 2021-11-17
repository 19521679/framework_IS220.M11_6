using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Back.Models
{
    public partial class BaoHanhModel
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Display(Name = "Mã bảo hành")]
        public int Mabaohanh { get; set; }
        [Display(Name = "Imei")]
        public string Imei { get; set; }
        [ForeignKey("Imei")]
        [Display(Name = "Ngày bảo hành")]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        public DateTime Ngaybaohanh { get; set; }
        [Display(Name = "Chi phí")]
        public double Chiphi { get; set; }
        [Display(Name = "Ghi chú")]
        public string Ghichu { get; set; }

        public ChiTietSanPhamModel chiTietSanPham { get; set; }
    }
}
