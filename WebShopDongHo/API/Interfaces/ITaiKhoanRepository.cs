using System.Collections.Generic;
using System.Threading.Tasks;
using API.Models;

namespace API.Interfaces
{
    public interface ITaiKhoanRepository
    {
        Task<TaiKhoan> GetTaiKhoanByIdAsync(int id);
        Task<IReadOnlyList<TaiKhoan>> GetTaiKhoansAsync();
    }
}