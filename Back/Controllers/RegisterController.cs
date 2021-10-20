using System;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

using System.Collections.Specialized;
using Back.Models.Account;

namespace Back.Controllers
{
    // [EnableCors(origins: "*", headers: "accept,content-type,origin,x-my-header", methods: "*")]
    [Route("register")]
    [ApiController]

    public class RegisterController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public RegisterController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        [HttpPost]
        public IActionResult Register([FromForm]RegisterForm registerForm)
        {
            

            Console.WriteLine("Form: Register" +registerForm.ToString() );
            return StatusCode(200);
            //return NoContent();
        }

    }
}
