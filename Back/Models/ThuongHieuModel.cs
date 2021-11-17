using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace Back.Models
{
    public partial class ThuongHieuModel
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Display(Name = "Mã thương hiệu")]
        public int Mathuonghieu { get; set; }
        [Display(Name = "Tên thương hiệu")]
        public string Tenthuonghieu { get; set; }
        [Display(Name = "Xuất xứ")]
        public string Xuatxu { get; set; }

        public  ICollection<SanPhamModel> sanPhams { get; set; }
    }
}
