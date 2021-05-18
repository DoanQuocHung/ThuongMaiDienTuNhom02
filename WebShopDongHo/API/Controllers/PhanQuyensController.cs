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
    public class PhanQuyensController : ControllerBase
    {
        private readonly AppDbContext _context;

        public PhanQuyensController(AppDbContext context)
        {
            _context = context;
        }

        // GET: api/PhanQuyens
        [HttpGet]
        public async Task<ActionResult<IEnumerable<PhanQuyen>>> GetPhanQuyens()
        {
            return await _context.PhanQuyens.ToListAsync();
        }

        // GET: api/PhanQuyens/5
        [HttpGet("{id}")]
        public async Task<ActionResult<PhanQuyen>> GetPhanQuyen(int id)
        {
            var phanQuyen = await _context.PhanQuyens.FindAsync(id);

            if (phanQuyen == null)
            {
                return NotFound();
            }

            return phanQuyen;
        }

        // PUT: api/PhanQuyens/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutPhanQuyen(int id, PhanQuyen phanQuyen)
        {
            if (id != phanQuyen.IdPQ)
            {
                return BadRequest();
            }

            _context.Entry(phanQuyen).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!PhanQuyenExists(id))
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

        // POST: api/PhanQuyens
        [HttpPost]
        public async Task<ActionResult<PhanQuyen>> PostPhanQuyen(PhanQuyen phanQuyen)
        {
            _context.PhanQuyens.Add(phanQuyen);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetPhanQuyen", new { id = phanQuyen.IdPQ }, phanQuyen);
        }

        // DELETE: api/PhanQuyens/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeletePhanQuyen(int id)
        {
            var phanQuyen = await _context.PhanQuyens.FindAsync(id);
            if (phanQuyen == null)
            {
                return NotFound();
            }

            _context.PhanQuyens.Remove(phanQuyen);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool PhanQuyenExists(int id)
        {
            return _context.PhanQuyens.Any(e => e.IdPQ == id);
        }
    }
}
