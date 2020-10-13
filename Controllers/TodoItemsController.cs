using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebApi.Models;

namespace WebApi.Controllers
{
    [Authorize]
    [Route("company")]
    [ApiController]
    public class TodoItemsController : Controller
    {
        private readonly CompanyContext _context;

        public TodoItemsController(CompanyContext context)
        {
            _context = context;
        }


        [HttpPost("search")]
        [AllowAnonymous]
        public async Task<ActionResult<IEnumerable<Company>>> GetTodoItems(Search search)
        {
            if (search.EmployeeJobTitles == null) return BadRequest(new { message = "wrong format EmployeeJobTitles" });
            return await _context.Companyes
                .Where(x => x.Employees.Any(w => w.FirstName.Contains(search.Keyword))
                || x.Name.Contains(search.Keyword)
                || x.Employees.Any(w => w.LastName.Contains(search.Keyword)))
                .Where(x2 => x2.Employees.Any(w2 => search.EmployeeDateOfBirthFrom == null || w2.DateOfBirth > search.EmployeeDateOfBirthFrom))
                .Where(x2 => x2.Employees.Any(w2 => search.EmployeeDateOfBirthTo == null || w2.DateOfBirth < search.EmployeeDateOfBirthTo))
                .Where(x3 => search.EmployeeJobTitles.Count == 0 || x3.Employees.Any(w3 => search.EmployeeJobTitles.Contains(w3.JobTitle)))
                .ToListAsync();
        }


        public async Task<ActionResult<Company>> GetTodoItem(Guid id)
        {
            var todoItem = await _context.Companyes.FindAsync(id);

            return todoItem;
        }


        [HttpPut("update/{id}")]
        public async Task<IActionResult> Update(Guid id, Company company)
        {
            var todoItem = _context.Companyes.Find(id);
            if (todoItem == null)
            {
                return NotFound();
            }
            Delete(id);
            await Create(company);
            return CreatedAtAction(nameof(GetTodoItem), new { id = company.Id }, company);
        }

        [HttpPost("create")]
        public async Task<ActionResult<Guid>> Create(Company company)
        {
            _context.Companyes.Add(company);
            await _context.SaveChangesAsync();

            return CreatedAtAction(nameof(GetTodoItem), new { id = company.Id }, new { id = company.Id });
        }

        [HttpDelete("delete/{id}")]
        public ActionResult<Company> Delete(Guid id)
        {
            var todoItem = _context.Companyes.Find(id);
            var empls = _context.Employees.Where(b => EF.Property<Guid>(b, "CompanyId") == id);
            foreach (var empl in empls)
            {
                _context.Employees.Remove(empl);
            }
            if (todoItem == null)
            {
                return NotFound();
            }

            _context.Companyes.Remove(todoItem);
            _context.SaveChangesAsync();

            return todoItem;
        }

        private bool TodoItemExists(Guid id)
        {
            return _context.Companyes.Any(e => e.Id == id);
        }
    }
}
