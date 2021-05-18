using API.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;

namespace API.Data
{
    public class AppDbContext : IdentityDbContext<AppUser>
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) {}
    
        public DbSet<AppUser> AppUsers { get; set; }
        public DbSet<SanPham> SanPhams { get; set; }
        public DbSet<KhachHang> KhachHangs { get; set; }
        public DbSet<NhanVien> NhanViens { get; set; }
        public DbSet<PhanQuyen> PhanQuyens { get; set; }
        public DbSet<TaiKhoan> TaiKhoans { get; set; }
        public DbSet<GioHang> GioHangs { get; set; }
        public DbSet<DonHang> DonHangs { get; set; }
        public DbSet<ChiTietDonHang> ChiTietDonHangs { get; set; }
        public DbSet<PhanHoi> PhanHois { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.EnableSensitiveDataLogging();
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            

            foreach (var entityType in modelBuilder.Model.GetEntityTypes ()) 
            {
                var tableName = entityType.GetTableName ();
                if (tableName.StartsWith ("AspNet")) {
                    entityType.SetTableName (tableName.Substring (6));
                }
            }
        }

        public DbSet<API.Models.PhanHoi> PhanHoi { get; set; }
    }
}