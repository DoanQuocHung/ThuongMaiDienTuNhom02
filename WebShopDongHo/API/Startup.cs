using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Microsoft.OpenApi.Models;
using Microsoft.EntityFrameworkCore;
using API.Models;
using API.Data;
using Microsoft.AspNetCore.Identity;

namespace API
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        public void ConfigureServices(IServiceCollection services)
        {

            services.AddControllers();
            
            // Đăng ký AppDbContext, sử dụng kết nối đến MS SQL Server
            services.AddDbContext<AppDbContext>(options => {
                string connectstring = Configuration.GetConnectionString("WebShopDongHoDB");
                options.UseSqlServer(connectstring);
            });

            //services.AddDbContext<SanPhamContext>(opt => opt.UseInMemoryDatabase("SanPhamDB"));

            // Đăng ký các dịch vụ của Identity
            services.AddIdentity<AppUser, IdentityRole> ()
                .AddEntityFrameworkStores<AppDbContext> ()
                .AddDefaultTokenProviders ();

            //services.AddCors();

            services.AddCors(options =>  
            {  
                options.AddPolicy("CorsPolicy", policy => 
                {
                    policy.AllowAnyHeader().AllowAnyMethod().WithOrigins("http://localhost:4200");
                });
            });

            services.AddAuthentication();
        }

        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            // app.UseCors(options => 
            // options.WithOrigins("http://localhost:4200/sanpham")
            //     .AllowAnyMethod()
            //     .AllowAnyHeader()
            // );

            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            app.UseHttpsRedirection();

            app.UseRouting();
            app.UseStaticFiles();

            app.UseCors("CorsPolicy");

            app.UseAuthorization();
            app.UseAuthentication();   

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }
    }
}
