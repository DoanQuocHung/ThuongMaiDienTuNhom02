using System.Collections.Generic;
using System.Threading.Tasks;
using API.Models;

namespace API.Interfaces
{
    public interface INhanVienRepository
    {
        Task<NhanVien> GetNhanVienByIdAsync(int id);
        Task<IReadOnlyList<NhanVien>> GetNhanViensAsync();
    }
}