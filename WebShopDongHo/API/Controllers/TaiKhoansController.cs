using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using API.Data;
using API.Models;
using API.Interfaces;
using API.DTOs;
using System.Security.Cryptography;
using System.Text;

namespace API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TaiKhoansController : ControllerBase
    {
        private readonly AppDbContext _context;
        //private readonly ITokenService _tokenService;

        public TaiKhoansController(AppDbContext context)
        {
            _context = context;
            //_tokenService = tokenService;
        }
        
        // GET: api/TaiKhoans
        [HttpGet]
        public async Task<ActionResult<IEnumerable<TaiKhoan>>> GetTaiKhoans()
        {
            return await _context.TaiKhoans.ToListAsync();
        }

        // GET: api/TaiKhoans/5
        [HttpGet("{id}")]
        public async Task<ActionResult<TaiKhoan>> GetTaiKhoan(int id)
        {
            var taiKhoan = await _context.TaiKhoans.FindAsync(id);

            if (taiKhoan == null)
            {
                return NotFound();
            }

            return taiKhoan;
        }

        // PUT: api/TaiKhoans/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutTaiKhoan(int id, TaiKhoan taiKhoan)
        {
            if (id != taiKhoan.IdTK)
            {
                return BadRequest();
            }

            _context.Entry(taiKhoan).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!TaiKhoanExists(id))
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

        // POST: api/TaiKhoans
        [HttpPost]
        public async Task<ActionResult<TaiKhoan>> PostTaiKhoan(TaiKhoan taiKhoan)
        {
            _context.TaiKhoans.Add(taiKhoan);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetTaiKhoan", new { id = taiKhoan.IdTK }, taiKhoan);
        }

        // DELETE: api/TaiKhoans/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteTaiKhoan(int id)
        {
            var taiKhoan = await _context.TaiKhoans.FindAsync(id);
            if (taiKhoan == null)
            {
                return NotFound();
            }

            _context.TaiKhoans.Remove(taiKhoan);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool TaiKhoanExists(int id)
        {
            return _context.TaiKhoans.Any(e => e.IdTK == id);
        }

        
        [HttpGet("dangNhap/{tendangnhap}/{matkhau}")]
        public ActionResult<TaiKhoan> dangNhap(String tendangnhap, String matkhau)
        {
            var tk = _context.TaiKhoans.FirstOrDefault(tk => tk.TenTK.ToLower() == tendangnhap.ToLower());
            if (tk == null) return Unauthorized("Tài khoản hoặc mật khẩu không chính xác");

            if (tk.MatkhauTK != matkhau) return Unauthorized("Tài khoản hoặc mật khẩu không chính xác");

            return tk;
        }

    }
}
