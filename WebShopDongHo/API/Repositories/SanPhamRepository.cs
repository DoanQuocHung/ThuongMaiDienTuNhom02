using System.Collections.Generic;
using System.Threading.Tasks;
using API.Data;
using API.Interfaces;
using API.Models;
using Microsoft.EntityFrameworkCore;

namespace API.Repositories
{
    public class SanPhamRepository : ISanPhamRepository
    {
        private readonly AppDbContext _context;
        public SanPhamRepository(AppDbContext context)
        {
            _context = context;
        }

        public async Task<IReadOnlyList<SanPham>> GetSanPhamsAsync()
        {
            return await _context.SanPhams
                .ToListAsync();
        }

        public async Task<SanPham> GetSanPhamByIdAsync(int id)
        {
            return await _context.SanPhams
                .FirstOrDefaultAsync(p => p.Id == id);
        }

    }
}