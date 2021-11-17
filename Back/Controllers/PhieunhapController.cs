using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Back.Models.Account;
using Back.Models;
using Newtonsoft.Json;
using Microsoft.EntityFrameworkCore;

namespace Back.Controllers
{
    // [EnableCors(origins: "*", headers: "accept,content-type,origin,x-my-header", methods: "*")]

    [ApiController]
    public class HoadonController : Controller
    {
        private readonly ILogger<HoadonController> _logger;
        lavenderContext lavenderContext;
        public HoadonController(ILogger<HoadonController> logger, lavenderContext lavenderContext)
        {
            _logger = logger;
            this.lavenderContext = lavenderContext;
        }

        [Route("/twenty-hoadon")]
        [HttpGet]
        public async Task<IActionResult> TwentyHoadon()
        {
            var hoadonlist = await (from h in lavenderContext.Hoadon
                                    select h).OrderByDescending(x => x.Ngayhoadon).Take(20).ToListAsync();
            if (hoadonlist.Count == 0) return StatusCode(404);
            foreach (var i in hoadonlist)
            {
                var e = lavenderContext.Entry(i);
                await e.Collection(x => x.Vanchuyens).LoadAsync();
                await e.Reference(x => x.MakhachhangNavigation).LoadAsync();
                //e.Collection(x => x.Chitiethoadons).Load();
                var chitiethoadon = await (from c in lavenderContext.Chitiethoadon
                                           where c.Sohoadon == i.Sohoadon
                                           select c).FirstOrDefaultAsync();
                var chitietsanpham = await (from c in lavenderContext.Chitietsanpham
                                            where c.Imei == chitiethoadon.Imei
                                            select c).FirstOrDefaultAsync();
                var ec = lavenderContext.Entry(chitietsanpham);
                await ec.Reference(s => s.MasanphamNavigation).LoadAsync();
            }

            return StatusCode(200, Json(hoadonlist));
        }

        [Route("/hoa-don-dang-xu-ly")]
        [HttpGet]
        public async Task<IActionResult> ProcessingBilling()
        {
            var hoadonlist = await (from h in lavenderContext.Hoadon
                                    select h).OrderByDescending(x => x.Ngayhoadon).Take(20).ToListAsync();
            if (hoadonlist.Count == 0) return StatusCode(404);
            var newlist = new List<Hoadon>();
            foreach (var i in hoadonlist)
            {
                
                var e = lavenderContext.Entry(i);
                await e.Collection(x => x.Vanchuyens).LoadAsync();
                if (!i.Vanchuyens.ElementAt(0).Trangthai.Equals("Đang xử lý"))
                    continue;
                await e.Reference(x => x.MakhachhangNavigation).LoadAsync();
                //e.Collection(x => x.Chitiethoadons).Load();
                var chitiethoadon = await (from c in lavenderContext.Chitiethoadon
                                           where c.Sohoadon == i.Sohoadon
                                           select c).FirstOrDefaultAsync();
                var chitietsanpham = await (from c in lavenderContext.Chitietsanpham
                                            where c.Imei == chitiethoadon.Imei
                                            select c).FirstOrDefaultAsync();
                var ec = lavenderContext.Entry(chitietsanpham);
                await ec.Reference(s => s.MasanphamNavigation).LoadAsync();
                newlist.Add(i);
            }
            return StatusCode(200, Json(newlist));
        }

        [Route("/doanh-thu-theo-thang")]
        [HttpGet]
        public async Task<IActionResult> DoanhThuTheoThang([FromQuery] int thang, int nam)
        {
            var hoadonlist = await (from h in lavenderContext.Hoadon
                                        //where h.Ngayhoadon.Month.ToString().Equals(thang.ToString())
                                        //&& h.Ngayhoadon.Year.ToString().Equals(nam.ToString())
                                    select h).ToListAsync();

            if (hoadonlist == null || hoadonlist.Count == 0) return StatusCode(200, Json(new { tongtien = 0 }));
            var newlist = new List<Hoadon>();
            foreach (var i in hoadonlist)
            {
                if (i.Ngayhoadon.Month == thang && i.Ngayhoadon.Year == nam)
                    newlist.Add(i);
            }
            if (newlist==null||newlist.Count==0) return StatusCode(200, Json(new { tongtien = 0 }));

            var tongtien = newlist.Sum(h => h.Tongtien);
            //return StatusCode(200, Json(new {tongtien = tongtien}) );
            return StatusCode(200, Json(new {tongtien=tongtien}));
        }

    }
}
