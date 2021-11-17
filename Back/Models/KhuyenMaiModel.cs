using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Back.Models
{
    public partial class KhuyenMaiModel
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Display(Name = "Mã khuyến mãi")]
        public int Makhuyenmai { get; set; }
        [Display(Name = "Tên khuyến mãi")]
        public string Tenkhuyenmai { get; set; }
        [Display(Name = "Tỉ lệ khuyến mãi")]
        public double Tilekhuyenmai { get; set; }
        [Display(Name = "Ngày bắt đầu")]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        public DateTime Ngaybatdau { get; set; }
        [Display(Name = "Ngày kết thúc")]
        [DisplayFormat(DataFormatString = "{0:dd-MM-yyyy}", ApplyFormatInEditMode = true)]
        public DateTime Ngayketthuc { get; set; }
        [Display(Name = "Điều kiện")]
        public string Dieukien { get; set; }

        public  ICollection<HoaDonModel> hoaDons { get; set; }
    }
}
