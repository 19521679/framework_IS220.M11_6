using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.AspNetCore.Routing.Constraints;

namespace Back
{
    public class Startup
    {
        public static IWebHostEnvironment Environment { set; get; }
        public Startup(IConfiguration configuration, IWebHostEnvironment env)
        {
            Configuration = configuration;
            Environment = env;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddControllersWithViews();

            services.AddCors(o => o.AddPolicy("MyPolicy", builder =>
            {
                builder.AllowAnyOrigin()
                    .AllowAnyMethod()
                    .AllowAnyHeader();
            }));

            // services.AddDbContext<AppDbContext>(options =>
            // {
            //     string connectstring = Configuration.GetConnectionString("MyBlogContext");
            //     options.UseSqlServer(connectstring);
            // });
            // // Đăng ký các dịch vụ của Identity
            // services.AddIdentity<AppUser, IdentityRole>()
            //     .AddEntityFrameworkStores<AppDbContext>()
            //     .AddDefaultTokenProviders();

            // // Truy cập IdentityOptions
            // services.Configure<IdentityOptions>(options =>
            // {
            //     // Thiết lập về Password
            //     options.Password.RequireDigit = false; // Không bắt phải có số
            //     options.Password.RequireLowercase = false; // Không bắt phải có chữ thường
            //     options.Password.RequireNonAlphanumeric = false; // Không bắt ký tự đặc biệt
            //     options.Password.RequireUppercase = false; // Không bắt buộc chữ in
            //     options.Password.RequiredLength = 3; // Số ký tự tối thiểu của password
            //     options.Password.RequiredUniqueChars = 1; // Số ký tự riêng biệt

            //     // Cấu hình Lockout - khóa user
            //     options.Lockout.DefaultLockoutTimeSpan = TimeSpan.FromMinutes(5); // Khóa 5 phút
            //     options.Lockout.MaxFailedAccessAttempts = 5; // Thất bại 5 lầ thì khóa
            //     options.Lockout.AllowedForNewUsers = true;

            //     // Cấu hình về User.
            //     options.User.AllowedUserNameCharacters = // các ký tự đặt tên user
            //         "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._@+";
            //     options.User.RequireUniqueEmail = true; // Email là duy nhất

            //     // Cấu hình đăng nhập.
            //     options.SignIn.RequireConfirmedEmail = true; // Cấu hình xác thực địa chỉ email (email phải tồn tại)
            //     options.SignIn.RequireConfirmedPhoneNumber = false; // Xác thực số điện thoại

            // });

            // Cấu hình Cookie
            services.ConfigureApplicationCookie(options =>
            {
                // options.Cookie.HttpOnly = true;  
                options.ExpireTimeSpan = TimeSpan.FromMinutes(30);
                options.LoginPath = $"/login/";                                 // Url đến trang đăng nhập
                options.LogoutPath = $"/logout/";
                options.AccessDeniedPath = $"/Identity/Account/AccessDenied";   // Trang khi User bị cấm truy cập
            });
    //         services.Configure<SecurityStampValidatorOptions>(options =>
    //         {
    // // Trên 5 giây truy cập lại sẽ nạp lại thông tin User (Role)
    // // SecurityStamp trong bảng User đổi -> nạp lại thông tinn Security
    // options.ValidationInterval = TimeSpan.FromSeconds(5);
    //         });

        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }
            app.UseHttpsRedirection();
            app.UseStaticFiles();
            // app.UseCors("MyPolicy");
            // app.UseCors(builder => builder
            //     .AllowAnyOrigin()
            //     .AllowAnyMethod()
            //     .AllowAnyHeader()
            //     .AllowCredentials());
            app.UseCors("MyPolicy");
            app.UseRouting();


            app.UseAuthentication();
            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                // endpoints.MapControllerRoute(
                //     // name: "login",
                //     name: "account",
                //     pattern: "{url}/{id?}",
                //     defaults: new
                //     {
                //         controller = "Account",
                //         action = "Login"
                //     },
                //     //IRouteConstraint
                //     constraints: new
                //     {
                //         url = new StringRouteConstraint("login"),
                //         //id = new RangeRouteConstraint(2, 4)
                //     }).RequireCors("MyPolicy");

                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller=Home}/{action=Index}/{id?}")
                    .RequireCors("MyPolicy");
            });
        }
    }
}
