using System.Collections.Generic;
using System.Threading.Tasks;
using API.Models;

namespace API.Interfaces
{
    public interface ISanPhamRepository
    {
        Task<SanPham> GetSanPhamByIdAsync(int id);
        Task<IReadOnlyList<SanPham>> GetSanPhamsAsync();
    }
}