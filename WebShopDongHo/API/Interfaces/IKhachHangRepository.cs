using System.Collections.Generic;
using System.Threading.Tasks;
using API.Models;

namespace API.Interfaces
{
    public interface IKhachHangRepository
    {
        Task<KhachHang> GetKhachHangByIdAsync(int id);
        Task<IReadOnlyList<KhachHang>> GetKhachHangsAsync();
    }
}