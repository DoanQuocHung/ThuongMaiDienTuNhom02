using API.Models;
using Microsoft.EntityFrameworkCore;

namespace API.Data
{
    public class SanPhamContext : DbContext
    {
        public SanPhamContext(DbContextOptions<SanPhamContext> options)
            : base(options)
        {
        }

        public DbSet<SanPham> SanPhams { get; set; }
    }
}