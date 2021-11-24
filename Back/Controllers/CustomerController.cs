using System;
using System.Collections;
using System.IO;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;
using Back.Models;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
namespace Back.Controllers
{
    // [EnableCors(origins: "*", headers: "accept,content-type,origin,x-my-header", methods: "*")]
    [ApiController]

    public class CustomerController : Controller
    {
        private readonly ILogger<CustomerController> _logger;
        private readonly IWebHostEnvironment _env;

        private readonly lavenderContext lavenderContext;

        public CustomerController(ILogger<CustomerController> logger, IWebHostEnvironment env, lavenderContext lavenderContext)
        {
            _logger = logger;
            _env = env;
            this.lavenderContext = lavenderContext;
        }

        [Route("/tim-khachhang-theo-sohoadon")]
        [HttpGet]
        public async Task<IActionResult> FindCustomerByBillId(int sohoadon)
        {
            var customerid = await (from h in lavenderContext.Hoadon
                                    where h.Sohoadon == sohoadon
                                    select h.Makhachhang).FirstOrDefaultAsync();

            var customer = await (from k in lavenderContext.Khachhang
                                  where k.Makhachhang == customerid
                                  select k).FirstOrDefaultAsync();
            return StatusCode(200, Json(customer));
        }

        [Route("/khachhang")]
        [HttpGet]
        public async Task<IActionResult> AllKhachhang()
        {
            var khachhangs = await (from k in lavenderContext.Khachhang
                                    select k).ToListAsync();
            if (khachhangs == null || khachhangs.Count() == 0) return StatusCode(404);
            return StatusCode(200, Json(khachhangs));
        }

        [Route("/khachhang/thaydoi")]
        [HttpPost]
        public async Task<IActionResult> ThayDoiThongTin(JsonElement json)
        {
            Khachhang khachhang = await lavenderContext.Khachhang.SingleOrDefaultAsync(x => x.Makhachhang == int.Parse(json.GetString("makhachhang")));
            if (khachhang == null) return StatusCode(404);

            khachhang.Tenkhachhang = json.GetString("hovaten");
            khachhang.Diachi = json.GetString("diachi");
            khachhang.Ngaysinh= DateTime.Parse(json.GetString("ngaysinh")).ToLocalTime();
            await lavenderContext.SaveChangesAsync();

            return StatusCode(200);
            
        }

        [Route("/tim-khachhang-theo-makhachhang")]
        [HttpGet]
        public async Task<IActionResult> TimKhachangTheoMakhachhang(int makhachhang)
        {
            var khachhang = await lavenderContext.Khachhang.SingleOrDefaultAsync(x => x.Makhachhang == makhachhang);
            return StatusCode(200, Json(khachhang));
        }

        [Route("/khachhang/thaydoi/sdt")]
        [HttpPut]
        public async Task<IActionResult> ThayDoiSDT(JsonElement json)
        {
            Khachhang khachhang = await lavenderContext.Khachhang.SingleOrDefaultAsync(x => x.Makhachhang == int.Parse(json.GetString("makhachhang")));
            if (khachhang == null) return StatusCode(404);
            khachhang.Sodienthoai = json.GetString("sdt");
            await lavenderContext.SaveChangesAsync();
            return StatusCode(200);
        }

        [Route("/khachhang/thaydoi/email")]
        [HttpPut]
        public async Task<IActionResult> ThayDoiEmail(JsonElement json)
        {
            Khachhang khachhang = await lavenderContext.Khachhang.SingleOrDefaultAsync(x => x.Makhachhang == int.Parse(json.GetString("makhachhang")));
            if (khachhang == null) return StatusCode(404);
            khachhang.Email = json.GetString("email");
            await lavenderContext.SaveChangesAsync();
            return StatusCode(200);
        }
    }

}



