using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using API.Data;
using API.Models;

namespace API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PhanHoisController : ControllerBase
    {
        private readonly AppDbContext _context;

        public PhanHoisController(AppDbContext context)
        {
            _context = context;
        }

        // GET: api/PhanHois
        [HttpGet]
        public async Task<ActionResult<IEnumerable<PhanHoi>>> GetPhanHois()
        {
            return await _context.PhanHois.ToListAsync();
        }

        // GET: api/PhanHois/5
        [HttpGet("{id}")]
        public async Task<ActionResult<PhanHoi>> GetPhanHoi(int id)
        {
            var phanHoi = await _context.PhanHois.FindAsync(id);

            if (phanHoi == null)
            {
                return NotFound();
            }

            return phanHoi;
        }

        // POST: api/PhanHois
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<PhanHoi>> PostPhanHoi(PhanHoi phanHoi)
        {
            _context.PhanHois.Add(phanHoi);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetPhanHoi", new { id = phanHoi.IdPH }, phanHoi);
        }

        // DELETE: api/PhanHois/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeletePhanHoi(int id)
        {
            var phanHoi = await _context.PhanHois.FindAsync(id);
            if (phanHoi == null)
            {
                return NotFound();
            }

            _context.PhanHois.Remove(phanHoi);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool PhanHoiExists(int id)
        {
            return _context.PhanHois.Any(e => e.IdPH == id);
        }
    }
}
