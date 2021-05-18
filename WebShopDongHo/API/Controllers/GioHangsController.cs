using System.Collections.Generic;
using System.Linq;
using API.Data;
using API.Models;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class GioHangsController : ControllerBase
    {
        private AppDbContext context;

        public GioHangsController(AppDbContext context)
        {
            this.context = context;
        }

        [HttpGet]

        public IEnumerable<GioHang> layGioHangs()
        {
            return this.context.GioHangs.ToList();
        }

        [HttpGet("{id}")]
        public GioHang layGioHang(int id)
        {

            return context.GioHangs.Find(id);
        }

        [HttpPost]
        public GioHang taoGioHang([FromBody] GioHang gh)
        {
            context.GioHangs.Add(gh);
            context.SaveChanges();

            return gh;
        }

        [HttpGet("idTaiKhoan/{IdTK}")]
        public IEnumerable<GioHang> layGioHangTheoIdTK(int IdTK)
        {
            return context.GioHangs.Where(x => x.IdTK == IdTK).ToList();
        }

        [HttpDelete("{id}")]
        public IActionResult xoaGioHang(int id)
        {
            var gh = context.GioHangs.Find(id);
            context.GioHangs.Remove(gh);
            context.SaveChanges();

            return NoContent();
        }

        [HttpPut]
        public IActionResult capNhatGioHang([FromBody] GioHang gioHang)
        {
            context.GioHangs.Update(gioHang);
            context.SaveChanges();

            return NoContent();
        }

        [HttpGet("idTaiKhoan/{idTk}/idSanPham/{idSP}")]
        public IEnumerable<GioHang> layGioHangTheoIdTKvaIdSP(int idTK, int idSP)
        {
            return context.GioHangs.Where(gh => gh.IdTK == idTK && gh.IdSP == idSP).ToList();
        }
    }
}