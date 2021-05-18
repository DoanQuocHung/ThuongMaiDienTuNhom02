using System.Collections.Generic;
using System.Threading.Tasks;

namespace API.Interfaces
{
    public interface IRepository<T> 
    {
        Task<IEnumerable<T>> GetAllAsync();
        Task<T> GetByAsync(int id);
        Task<T> AddAsync(T entity);
        Task UpdateAsync(T entity);
        Task DeleteAsync(T entity);
    }
}