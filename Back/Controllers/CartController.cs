using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Back.Models;
using Back.Models.Account;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Formatters;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json.Linq;

namespace Back.Controllers
{
    // [EnableCors(origins: "*", headers: "accept,content-type,origin,x-my-header", methods: "*")]
    [ApiController]

    public class CartController : Controller
    {
        private readonly ILogger<CartController> _logger;
        private readonly IWebHostEnvironment _env;

        private readonly lavenderContext lavenderContext;

        public CartController(ILogger<CartController> logger, IWebHostEnvironment env, lavenderContext lavenderContext)
        {
            _logger = logger;
            _env = env;
            this.lavenderContext = lavenderContext;
        }

        [Route("/add-to-cart")]
        [HttpPost]
        public async Task<IActionResult> AddToCart(AddToCartForm form)
        {
            var taikhoan = await (from t in lavenderContext.Taikhoankhachhang
                                  where t.Username.Equals(form.email)
                                  && t.Password.Equals(form.password)
                                  select t).FirstOrDefaultAsync();
            if (taikhoan == null) return StatusCode(401);
            else
            {
                //Giohang gh = new Giohang();
                //gh.Makhachhang = taikhoan.Makhachhang;
                //g = form.masanpham;

                //await lavenderContext.AddAsync(gh);
                //await lavenderContext.SaveChangesAsync();
                return StatusCode(200);
            }
        }

        //[Route("/cart")]
        //[HttpGet]
        //public async Task<IActionResult> Cart([FromBody] System.Text.Json.JsonElement element)
        //{
        //    Console.WriteLine("thongtincart" + element.GetRawText());
        //    string email = element.GetString("email");
        //    string password = element.GetString("password");
        //    var khachhangid = await (from t in lavenderContext.Taikhoankhachhang
        //                             where t.Username.Equals(email)
        //                             && t.Password.Equals(password)
        //                             select t.Makhachhang).FirstOrDefaultAsync();
        //    if (khachhangid != null)
        //    {
        //        var giohangid = await (from g in lavenderContext.Giohang
        //                               where g.Makhachhang.Equals(khachhangid)
        //                               select g.Magiohang
        //                              ).FirstOrDefaultAsync();
        //        if (giohangid == null) return StatusCode(404);
        //        var chitietgiohang = await (from c in lavenderContext.Chitietgiohang
        //                                    where c.Magiohang.Equals(giohangid)
        //                                    select c).FirstOrDefaultAsync();
        //        return StatusCode(200, Json(chitietgiohang));
        //    }
        //    return StatusCode(401);

        //}
        [Route("/cart")]
        [HttpGet]
        public async Task<IActionResult> Cart(string email, string password)
        {
            Console.WriteLine("cart" + email + password);
            var khachhangid = await (from t in lavenderContext.Taikhoankhachhang
                                     where t.Username.Equals(email)
                                     && t.Password.Equals(password)
                                     select t.Makhachhang).FirstOrDefaultAsync();
            if (khachhangid != null)
            {
                var giohangid = await (from g in lavenderContext.Giohang
                                       where g.Makhachhang.Equals(khachhangid)
                                       select g.Magiohang
                                      ).FirstOrDefaultAsync();
                if (giohangid == null) return StatusCode(404);
                var chitietgiohangs = await (from c in lavenderContext.Chitietgiohang
                                            where c.Magiohang.Equals(giohangid)
                                            select c).ToListAsync();
                List<Sanpham> sanphams = new List<Sanpham>();
                foreach (var c in chitietgiohangs)
                {
                    var e = lavenderContext.Entry(c);
                        await e.Reference(c => c.MasanphamNavigation).LoadAsync();
                    sanphams.Add(c.MasanphamNavigation);
                }
               
                return StatusCode(200, Json(sanphams));
            }
            return StatusCode(401);

        }
    }

}



