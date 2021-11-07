using System;
using System.Collections;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Back.Models;
using Back.Models.Account;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
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

        [Route("/cart")]
        [HttpPost]
        public async Task<IActionResult> AddToCart(AddToCartForm form)
        {
            Console.WriteLine("da nhan cart:" +form.ToString());
            var taikhoan = await (from t in lavenderContext.Taikhoankhachhang
                            where t.Username.Equals(form.email)
                            && t.Password.Equals(form.password)
                            select t).FirstOrDefaultAsync();
            if (taikhoan == null) return StatusCode(401);
            else
            {
                Giohang gh = new Giohang();
                gh.Makhachhang = taikhoan.Makhachhang;
                gh.Masanpham = form.masanpham;

                await lavenderContext.AddAsync(gh);
                await lavenderContext.SaveChangesAsync();
                return StatusCode(200);
            }
        }
        
    }

}



