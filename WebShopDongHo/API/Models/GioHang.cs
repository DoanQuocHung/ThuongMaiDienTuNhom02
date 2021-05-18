namespace API.Models
{
    public class GioHang
    {
        public int Id { get; set; }
        public int IdTK { get; set; }
        public int IdSP { get; set; }
        public string TenSP { get; set; }
        public decimal Gia { get; set; }
        public int soLuong { get; set; }
    }
}