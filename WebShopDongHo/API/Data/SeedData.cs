using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using API.Data;
using System;
using System.Linq;
using API.Models;

namespace API.Data
{
    public static class SeedData
    {
        public static void Initialize(IServiceProvider serviceProvider)
        {
            using (var context = new AppDbContext(
                serviceProvider.GetRequiredService<
                    DbContextOptions<AppDbContext>>()))
            {
                // Look for any movies.
                if (context.SanPhams.Any())
                {
                    return;   // DB has been seeded
                }

                // context.SanPhams.AddRange(
                //     new SanPham
                //     {
                //         Ten = "Rolex",
                //         Gia = "10000",    //DateTime.Parse("1989-2-12"),
                //         Loaiday = "Dây da",
                //         Soluong = "10",
                //         Kichthuocmat = "8cm",
                //         Matkinh = "Tròn",
                //         Chatlieuday = "Coton"
                //     },

                //     new SanPham
                //     {
                //         Ten = "Grandname",
                //         Gia = "8000",    
                //         Loaiday = "Dây kim loại",
                //         Soluong = "20",
                //         Kichthuocmat = "8cm",
                //         Matkinh = "Tròn",
                //         Chatlieuday = "Coton"
                //     },

                //     new SanPham
                //     {
                //         Ten = "ThumpsUp",
                //         Gia = "10000",   
                //         Loaiday = "Dây inoc",
                //         Soluong = "30",
                //         Kichthuocmat = "8cm",
                //         Matkinh = "Tròn",
                //         Chatlieuday = "Coton"
                //     }
                // );
                // context.SaveChanges();
            }
        }
    }
}