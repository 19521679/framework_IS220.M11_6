using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Back.Models;
using Newtonsoft.Json;
using Microsoft.EntityFrameworkCore;
using System.Text.Json;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authorization;
using Back.Common;

namespace Back.Controllers
{
    // [EnableCors(origins: "*", headers: "accept,content-type,origin,x-my-header", methods: "*")]

    [ApiController]  
    public class ChitiethoadonController : Controller
    {
        private readonly ILogger<ChitiethoadonController> _logger;
        lavenderContext lavenderContext;
        public ChitiethoadonController(ILogger<ChitiethoadonController> logger, lavenderContext lavenderContext)
        {
            _logger = logger;
            this.lavenderContext = lavenderContext;
        }

        [Route("/chitietthoadon-theo-sohoadon")]
        [Authorize(Roles = "ADMINISTRATOR, STAFF")]
        [HttpGet]
        public async Task<IActionResult> detailByBillId(int sohoadon)
        {
            
            var chitiethoadons = await (from c in lavenderContext.Chitiethoadon
                                        where c.Sohoadon == sohoadon
                                        select c).ToListAsync();
            return StatusCode(200, Json(chitiethoadons));
        }

        [Route("/tracuu-sohoadon")]
        [HttpGet]
        public async Task<IActionResult> detailBillByImei(string imei)
        {
            
            var sohoadon = await (from c in lavenderContext.Chitiethoadon
                                        where c.Imei == imei
                                        select c.Sohoadon).FirstOrDefaultAsync();
            return StatusCode(200, Json(sohoadon));
        }

        [Route("/sanpham-ban-trongthang")]
        [HttpGet]
        [Authorize(Roles = "ADMINISTRATOR, STAFF")]
        public async Task<IActionResult> SanphamBanTrongthang(int thang, int nam)
        {
            var sosanpham = 0;
            var sanphams = await (from x in lavenderContext.Chitiethoadon
                                  join y in lavenderContext.Hoadon
                                  on x.Sohoadon equals y.Sohoadon
                                  select new { imei = x.Imei, ngayhoadon = y.Ngayhoadon }).ToListAsync();
            sosanpham += (from x in sanphams
                          where x.ngayhoadon.Year == nam && x.ngayhoadon.Month == thang
                          select x).Count();
            return StatusCode(200, Json(sosanpham));
        }

        //[Route("/sanpham-trong-hoadon")]
        //[HttpGet]
        //[Authorize(Roles = "ADMINISTRATOR, STAFF")]
        //public async Task<IActionResult> SanphamTrongHoadon(int sohoadonbatdau, int soluong)
        //{
        //    var 
        //    var imei = await (from x in lavenderContext.Chitiethoadon)
        //}
    }
}
