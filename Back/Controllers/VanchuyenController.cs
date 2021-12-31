
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;

using System.Threading.Tasks;

using Back.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;

namespace Back.Controllers
{

    // [EnableCors(origins: "*", headers: "accept,content-type,origin,x-my-header", methods: "*")]
    [ApiController]

    public class VanchuyenController : Controller
    {
        private readonly ILogger<VanchuyenController> _logger;
        private readonly IWebHostEnvironment _env;

        private readonly lavenderContext lavenderContext;

        public VanchuyenController(ILogger<VanchuyenController> logger, IWebHostEnvironment env, lavenderContext lavenderContext)
        {
            _logger = logger;
            _env = env;
            this.lavenderContext = lavenderContext;
        }

        [Route("/vanchuyen-bang-sohoadon")]
        [HttpGet]
        public async Task<IActionResult> VanchuyenBangSohoadon(int sohoadon)
        {
            var vanchuyen = await (from x in lavenderContext.Vanchuyen
                                   where x.Sohoadon == sohoadon
                                   select x).FirstOrDefaultAsync();
            if (vanchuyen == null) return StatusCode(404);
            return StatusCode(200, Json(vanchuyen));
        }
       
    }
}
