using System.ComponentModel.DataAnnotations;

namespace API.Models
{
    public class DangNhap
    {
        [Required]
        public string TenTK { get; set; }
        
        [Required]
        public string MatKhauTK { get; set; }
    }
}