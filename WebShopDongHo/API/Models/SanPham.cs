using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Identity;

namespace API.Models
{
    public class SanPham
    {
        [Key]
        public int Id { get; set; }
        public string Ten { get; set; }
        public string Gia { get; set; }
        public string Mausac { get; set; }
        public string Soluong { get; set; }
        public string Kichthuocmat { get; set; }
        public string Matkinh { get; set; }
        public string Chatlieuday { get; set; }
        public string Gioitinh { get; set; }
        public string Phongcach { get; set; }
        public string Fileanh { get; set; }
    }
}