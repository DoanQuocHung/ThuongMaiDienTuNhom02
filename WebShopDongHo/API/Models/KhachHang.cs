using System.ComponentModel.DataAnnotations;

namespace API.Models
{
    public class KhachHang
    {
        [Key]
        public int IdKH { get; set; }
        public int IdTK { get; set; }
        public string HotenKH { get; set; }
        public string NgaysinhKH { get; set; }
        public string SdtKH { get; set; }
        public string GioitinhKH { get; set; }
        public string DiachiKH { get; set; }
    }
}