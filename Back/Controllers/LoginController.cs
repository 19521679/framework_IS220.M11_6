using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Back.Models.Account;
using System.Web.Http.Cors;

namespace Back.Controllers
{
    // [EnableCors(origins: "*", headers: "accept,content-type,origin,x-my-header", methods: "*")]
    [Route("login")]
    [ApiController]

    public class LoginController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public LoginController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Login(LoginForm loginForm)
        {
            Console.WriteLine("Form: Login" + loginForm.ToString());
            return StatusCode(200, loginForm);
            //return NoContent();
        }

    }
}
