using System.Collections.Generic;
using System.Linq;
using API.Data;
using API.Models;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ChiTietDonHangsController : ControllerBase
    {
        private AppDbContext context;

        public ChiTietDonHangsController(AppDbContext context)
        {
            this.context = context;
        }

        [HttpGet]
        public IEnumerable<ChiTietDonHang> layChiTietDonHangs()
        {

            return context.ChiTietDonHangs.ToList();
        }

        [HttpGet("idDH/{idDH}")]
        public IEnumerable<ChiTietDonHang> layChiTietDonHangsTheoIdDH(string idDH){
            return context.ChiTietDonHangs.Where(ctdh => ctdh.idDH==idDH).ToList();
        }

        [HttpPost]
        public IActionResult taoChiTietDonHang(ChiTietDonHang chiTietDonHang)
        {
            context.Add(chiTietDonHang);
            context.SaveChanges();

            return NoContent();
        }
    }
}