using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Back.Models
{
    public partial class NhaCungCapModel
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Display(Name = "Mã nhà cung cấp")]
        public int Manhacungcap { get; set; }
        [Display(Name = "Tên nhà cung cấp")]
        public string Tennhacungcap { get; set; }
        [Display(Name = "Email")]
        public string Email { get; set; }
        [Display(Name = "Số điện thoại")]
        public string Sodienthoai { get; set; }
        [Display(Name = "Địa chỉ")]
        public string Diachi { get; set; }

        public  ICollection<PhieuNhapSanPhamModel> phieuNhapSanPhams { get; set; }
    }
}
