using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Clintelli.Data;
using Clintelli.Models;

namespace Clintelli.Controllers
{
    public class ObservationsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public ObservationsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Observations
        public async Task<IActionResult> Index()
        {
            return View(await _context.Observation.ToListAsync());
        }

        // GET: Observations/Details/5
        public async Task<IActionResult> Details(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var observation = await _context.Observation
                .FirstOrDefaultAsync(m => m.Id == id);
            if (observation == null)
            {
                return NotFound();
            }

            return View(observation);
        }

        // GET: Observations/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Observations/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id")] Observation observation)
        {
            if (ModelState.IsValid)
            {
                _context.Add(observation);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(observation);
        }

        // GET: Observations/Edit/5
        public async Task<IActionResult> Edit(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var observation = await _context.Observation.FindAsync(id);
            if (observation == null)
            {
                return NotFound();
            }
            return View(observation);
        }

        // POST: Observations/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string id, [Bind("Id")] Observation observation)
        {
            if (id != observation.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(observation);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ObservationExists(observation.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(observation);
        }

        // GET: Observations/Delete/5
        public async Task<IActionResult> Delete(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var observation = await _context.Observation
                .FirstOrDefaultAsync(m => m.Id == id);
            if (observation == null)
            {
                return NotFound();
            }

            return View(observation);
        }

        // POST: Observations/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(string id)
        {
            var observation = await _context.Observation.FindAsync(id);
            _context.Observation.Remove(observation);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ObservationExists(string id)
        {
            return _context.Observation.Any(e => e.Id == id);
        }
    }
}
