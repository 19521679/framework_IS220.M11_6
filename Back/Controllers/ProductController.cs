using System;
using System.Collections;
using System.IO;
using System.Linq;
using Back.Models;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
namespace Back.Controllers
{
    // [EnableCors(origins: "*", headers: "accept,content-type,origin,x-my-header", methods: "*")]
    [ApiController]

    public class ProductController : Controller
    {
        private readonly ILogger<ProductController> _logger;
        private readonly IWebHostEnvironment _env;

        private readonly lavenderContext lavenderContext;

        public ProductController(ILogger<ProductController> logger, IWebHostEnvironment env, lavenderContext lavenderContext)
        {
            _logger = logger;
            _env = env;
            this.lavenderContext = lavenderContext;
        }

        [Route("{loai}/{hang}/{dong}/{sanpham}")]
        public IActionResult ProductInfo(string loai, string hang, string dong, string sanpham)
        {

            string maloai = "";
            switch (loai)
            {
                case "mobile":
                    maloai = "1";
                    break;
                case "laptop":
                    maloai = "2";
                    break;
                default:
                    break;
            }
            var productid = lavenderContext.Sanpham
                .Where(s => s.Tensanpham.Contains(sanpham))
                .Where(s => s.Tensanpham.Contains(dong))
                .Select(s => s.Masanpham).FirstOrDefault().ToString();

            var trademarkid = lavenderContext.Thuonghieu.Where(s => s.Tenthuonghieu.Contains(hang)).Select(s => s.Mathuonghieu).FirstOrDefault().ToString();
            var product = (from p in lavenderContext.Sanpham
                           where
                           p.Maloai.Equals(maloai) &&
                           p.Mathuonghieu.Equals(trademarkid) &&
                           p.Masanpham.Equals(productid)
                           select p).ToList();
            int fCount = 0;
            if (product.Count() > 0)
            {
                fCount = Directory.GetFiles($"{_env.ContentRootPath}/wwwroot/{loai}/{hang}/{dong}/{sanpham}", "*", SearchOption.TopDirectoryOnly).Length;
                return StatusCode(200, Json(product, new { sohinhanh = fCount }));
            }
            return StatusCode(404);

        }
    }

}



