using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Back.Models
{
    public partial class LoaiSanPhamModel
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Display(Name = "Mã loại")]
        public int Maloai { get; set; }
        [Display(Name = "Tên loại")]
        public string Tenloai { get; set; }

        public ICollection<SanPhamModel> SanPhams { get; set; }
    }
}
