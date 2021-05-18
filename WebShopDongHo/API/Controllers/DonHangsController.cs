using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using API.Data;
using API.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DonHangsController : ControllerBase
    {
        private AppDbContext context;

        public DonHangsController(AppDbContext context)
        {
            this.context = context;
        }
        [HttpGet]
        public IEnumerable<DonHang> layDonHangs()
        {
            return context.DonHangs.ToList();
        }

        [HttpPost]
        public IActionResult taoDonHangs(DonHang donHang)
        {
            context.Add(donHang);
            context.SaveChanges();

            // for (int i = 0; i < donHang.ChiTietDonHangs.Count(); i++)
            // {
            //     context.ChiTietDonHangs.Add(donHang.ChiTietDonHangs.ElementAt(i));
            //     context.SaveChanges();
            // }

            return NoContent();
        }


        [HttpPut("{id}")]
        public async Task<IActionResult> PutDonHang(string id, DonHang donHang)
        {
            if (id != donHang.id)
            {
                return BadRequest();
            }

            context.Entry(donHang).State = EntityState.Modified;

            try
            {
                await context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!DonHangExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        private bool DonHangExists(string id)
        {
            return context.DonHangs.Any(e => e.id == id);
        }
    }
}