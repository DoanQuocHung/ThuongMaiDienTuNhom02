using System.ComponentModel.DataAnnotations;

namespace API.Models
{
    public class PhanQuyen
    {
        [Key]
        public int IdPQ { get; set; }
        public string TenPQ { get; set; }
    }
}