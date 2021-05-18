using System.Collections.Generic;
using System.Threading.Tasks;
using API.Data;
using API.Interfaces;
using API.Models;
using Microsoft.EntityFrameworkCore;

namespace API.Repositories
{
    public class TaiKhoanRepository : ITaiKhoanRepository
    {
        private readonly AppDbContext _context;
        public TaiKhoanRepository(AppDbContext context)
        {
            _context = context;
        }

        public async Task<IReadOnlyList<TaiKhoan>> GetTaiKhoansAsync()
        {
            return await _context.TaiKhoans
                .ToListAsync();
        }

        public async Task<TaiKhoan> GetTaiKhoanByIdAsync(int id)
        {
            return await _context.TaiKhoans
                .FirstOrDefaultAsync(p => p.IdTK == id);
        }
    }
}