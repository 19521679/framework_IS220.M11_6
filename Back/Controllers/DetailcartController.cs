using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;
using Back.Common;
using Back.Models;
using Back.Models.Account;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Formatters;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using MySql.Data.MySqlClient;
using Newtonsoft.Json.Linq;

namespace Back.Controllers
{
    
    // [EnableCors(origins: "*", headers: "accept,content-type,origin,x-my-header", methods: "*")]
    [ApiController]

    public class DetailcartController : Controller
    {
        private readonly ILogger<DetailcartController> _logger;
        private readonly IWebHostEnvironment _env;

        private readonly lavenderContext lavenderContext;

        public DetailcartController(ILogger<DetailcartController> logger, IWebHostEnvironment env, lavenderContext lavenderContext)
        {
            _logger = logger;
            _env = env;
            this.lavenderContext = lavenderContext;
        }

        [Route("/chitietgiohang-bang-magiohang")]
        [HttpGet]
        public async Task<IActionResult> LoadDetailCartByCartId([FromQuery]int magiohang)
        {
            Console.WriteLine("magiohang" + magiohang);
            var chitietgiohangs = await (from c in lavenderContext.Chitietgiohang
                                         where c.Magiohang == magiohang
                                         select c).ToListAsync();
            if (chitietgiohangs == null || chitietgiohangs.Count() == 0) return StatusCode(404);
            return StatusCode(200, Json(chitietgiohangs));
        }

    }

}



