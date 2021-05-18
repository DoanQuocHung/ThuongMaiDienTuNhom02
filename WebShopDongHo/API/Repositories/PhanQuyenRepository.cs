using System.Collections.Generic;
using System.Threading.Tasks;
using API.Data;
using API.Interfaces;
using API.Models;
using Microsoft.EntityFrameworkCore;

namespace API.Repositories
{
    public class PhanQuyenRepository : IPhanQuyenRepository
    {
        private readonly AppDbContext _context;
        public PhanQuyenRepository(AppDbContext context)
        {
            _context = context;
        }

        public async Task<IReadOnlyList<PhanQuyen>> GetPhanQuyensAsync()
        {
            return await _context.PhanQuyens
                .ToListAsync();
        }

        public async Task<PhanQuyen> GetPhanQuyenByIdAsync(int id)
        {
            return await _context.PhanQuyens
                .FirstOrDefaultAsync(p => p.IdPQ == id);
        }
    }
}