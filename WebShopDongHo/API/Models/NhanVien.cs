using System.ComponentModel.DataAnnotations;

namespace API.Models
{
    public class NhanVien
    {
        [Key]
        public int IdNV { get; set; }
        public int IdTK { get; set; }
        public string HotenNV { get; set; }
        public string NgaysinhNV { get; set; }
        public string SdtNV { get; set; }
        public string GioitinhNV { get; set; }
        public string DiachiNV { get; set; }
    }
}