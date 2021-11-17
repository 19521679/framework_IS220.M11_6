using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Back.Models
{
    public partial class ChiTietVanChuyenModel
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Display(Name = "Mã chi tiết vận chuyển")]
        public int Machitietvanchuyen { get; set; }
        [Display(Name = "Mã vận chuyển")]
        public int Mavanchuyen { get; set; }
        [ForeignKey("Mavanchuyen")]
        [Display(Name = "Thời điểm")]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        public DateTime Thoidiem { get; set; }
        [Display(Name = "Trạng thái")]
        public string Trangthai { get; set; }

        public  VanChuyenModel vanChuyen { get; set; }
    }
}
