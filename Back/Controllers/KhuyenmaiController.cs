using System;
using System.Collections;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Back.Models;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
namespace Back.Controllers
{
    // [EnableCors(origins: "*", headers: "accept,content-type,origin,x-my-header", methods: "*")]
    [ApiController]

    public class KhuyenmaicuatoiController : Controller
    {
        private readonly ILogger<KhuyenmaicuatoiController> _logger;
        private readonly IWebHostEnvironment _env;

        private readonly lavenderContext lavenderContext;

        public KhuyenmaicuatoiController(ILogger<KhuyenmaicuatoiController> logger, IWebHostEnvironment env, lavenderContext lavenderContext)
        {
            _logger = logger;
            _env = env;
            this.lavenderContext = lavenderContext;
        }

      

        [Route("/khuyenmai")]
        [HttpGet]
        public async Task<IActionResult> Khuyenmai(int makhuyenmai)
        {
            var khuyenmai = await lavenderContext.Khuyenmai.SingleAsync(x => x.Makhuyenmai == makhuyenmai);
            if (khuyenmai == null) return StatusCode(404);
            return StatusCode(200, Json(khuyenmai));
        }

    }

}



