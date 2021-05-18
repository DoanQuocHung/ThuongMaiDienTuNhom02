using System.Collections.Generic;
using System.Threading.Tasks;
using API.Data;
using API.Interfaces;
using API.Models;
using Microsoft.EntityFrameworkCore;

namespace API.Repositories
{
    public class NhanVienRepository : INhanVienRepository
    {
        private readonly AppDbContext _context;
        public NhanVienRepository(AppDbContext context)
        {
            _context = context;
        }

        public async Task<IReadOnlyList<NhanVien>> GetNhanViensAsync()
        {
            return await _context.NhanViens
                .ToListAsync();
        }

        public async Task<NhanVien> GetNhanVienByIdAsync(int id)
        {
            return await _context.NhanViens
                .FirstOrDefaultAsync(p => p.IdNV == id);
        }
    }
}