using System.Collections.Generic;
using System.Threading.Tasks;
using API.Models;

namespace API.Interfaces
{
    public interface IPhanQuyenRepository
    {
        Task<PhanQuyen> GetPhanQuyenByIdAsync(int id);
        Task<IReadOnlyList<PhanQuyen>> GetPhanQuyensAsync();
    }
}