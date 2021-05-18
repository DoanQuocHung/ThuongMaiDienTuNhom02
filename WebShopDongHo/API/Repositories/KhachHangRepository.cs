using System.Collections.Generic;
using System.Threading.Tasks;
using API.Data;
using API.Interfaces;
using API.Models;
using Microsoft.EntityFrameworkCore;

namespace API.Repositories
{
    public class KhachHangRepository : IKhachHangRepository
    {
        private readonly AppDbContext _context;
        public KhachHangRepository(AppDbContext context)
        {
            _context = context;
        }

        public async Task<IReadOnlyList<KhachHang>> GetKhachHangsAsync()
        {
            return await _context.KhachHangs
                .ToListAsync();
        }

        public async Task<KhachHang> GetKhachHangByIdAsync(int id)
        {
            return await _context.KhachHangs
                .FirstOrDefaultAsync(p => p.IdKH == id);
        }
    }
}