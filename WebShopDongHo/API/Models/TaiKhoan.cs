using System.ComponentModel.DataAnnotations;

namespace API.Models
{
    public class TaiKhoan
    {
        [Key]
        public int IdTK { get; set; }
        public int IdPQ { get; set; }
        public string TenTK { get; set; }
        public string MatkhauTK { get; set; }
    }
}