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

    public class BaohanhController : Controller
    {
        private readonly ILogger<BaohanhController> _logger;
        private readonly IWebHostEnvironment _env;

        private readonly lavenderContext lavenderContext;

        public BaohanhController(ILogger<BaohanhController> logger, IWebHostEnvironment env, lavenderContext lavenderContext)
        {
            _logger = logger;
            _env = env;
            this.lavenderContext = lavenderContext;
        }

        [Route("/baohanh")]
        [HttpGet]
        public async Task<IActionResult> AllBaohanh()
        {
            var baohanhs = await (from b in lavenderContext.Baohanh
                                    select b).ToListAsync();
            if (baohanhs == null || baohanhs.Count() == 0) return StatusCode(404);
            return StatusCode(200, Json(baohanhs));
        }

    }

}



