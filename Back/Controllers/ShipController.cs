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
            var customer = await (from k in lavenderContext.Khachhang
                                  where k.Makhachhang == sohoadon
                                  select k).FirstOrDefaultAsync();
            return StatusCode(200, Json(customer));
        }
    }

}



