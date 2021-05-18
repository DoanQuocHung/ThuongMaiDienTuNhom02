using System.ComponentModel.DataAnnotations;

namespace API.Models
{
    public class PhanHoi
    {
        [Key]
        public int IdPH { get; set; }
        public string HotenPH { get; set; }
        public string SdtPH { get; set; }
        public string TieudePH { get; set; }
        public string NoidungPH { get; set; }
    }
}