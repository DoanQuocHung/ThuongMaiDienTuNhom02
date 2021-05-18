using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace API.Models
{
    public class DonHang
    {
        [Key]
        public string id { get; set; }
        public int idTK { get; set; }
        public string hoVaTen { get; set; }
        public string diaChi { get; set; }
        public string sdt { get; set; }
        public string tenCard { get; set; }
        public string soCard { get; set; }
        public string cvv { get; set; }
        public string tongTien { get; set; }
        public string ngayLap { get; set; }
        public int trangThai { get; set; }
    }
}