using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using IranMarketer.Domain.Entity;

namespace IranMarketer.WebAPI.Controllers
{
    public class WorkExperiencesController : Controller
    {
        private IranMarketerContext db = new IranMarketerContext();

        // GET: WorkExperiences
        public ActionResult Index()
        {
            var workExperiences = db.WorkExperiences.Include(w => w.Industry).Include(w => w.JobCategory).Include(w => w.RetailParty);
            return View(workExperiences.ToList());
        }

        // GET: WorkExperiences/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            WorkExperience workExperience = db.WorkExperiences.Find(id);
            if (workExperience == null)
            {
                return HttpNotFound();
            }
            return View(workExperience);
        }

        // GET: WorkExperiences/Create
        public ActionResult Create()
        {
            ViewBag.IndustryId = new SelectList(db.Industries, "Id", "TitleFa");
            ViewBag.JobCategoryId = new SelectList(db.JobCategories, "Id", "TitleFa");
            ViewBag.PartyId = new SelectList(db.RetailParties, "Id", "Name");
            return View();
        }

        // POST: WorkExperiences/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,PartyId,JobTitle,JobCategoryId,CompanyName,IndustryId,CountryId,CityId,FromDate,ToDate,Achievements,StillInThisWork,CreatedBy,ModifiedBy,Created,Modified")] WorkExperience workExperience)
        {
            if (ModelState.IsValid)
            {
                db.WorkExperiences.Add(workExperience);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IndustryId = new SelectList(db.Industries, "Id", "TitleFa", workExperience.IndustryId);
            ViewBag.JobCategoryId = new SelectList(db.JobCategories, "Id", "TitleFa", workExperience.JobCategoryId);
            ViewBag.PartyId = new SelectList(db.RetailParties, "Id", "Name", workExperience.PartyId);
            return View(workExperience);
        }

        // GET: WorkExperiences/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            WorkExperience workExperience = db.WorkExperiences.Find(id);
            if (workExperience == null)
            {
                return HttpNotFound();
            }
            ViewBag.IndustryId = new SelectList(db.Industries, "Id", "TitleFa", workExperience.IndustryId);
            ViewBag.JobCategoryId = new SelectList(db.JobCategories, "Id", "TitleFa", workExperience.JobCategoryId);
            ViewBag.PartyId = new SelectList(db.RetailParties, "Id", "Name", workExperience.PartyId);
            return View(workExperience);
        }

        // POST: WorkExperiences/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,PartyId,JobTitle,JobCategoryId,CompanyName,IndustryId,CountryId,CityId,FromDate,ToDate,Achievements,StillInThisWork,CreatedBy,ModifiedBy,Created,Modified")] WorkExperience workExperience)
        {
            if (ModelState.IsValid)
            {
                db.Entry(workExperience).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IndustryId = new SelectList(db.Industries, "Id", "TitleFa", workExperience.IndustryId);
            ViewBag.JobCategoryId = new SelectList(db.JobCategories, "Id", "TitleFa", workExperience.JobCategoryId);
            ViewBag.PartyId = new SelectList(db.RetailParties, "Id", "Name", workExperience.PartyId);
            return View(workExperience);
        }

        // GET: WorkExperiences/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            WorkExperience workExperience = db.WorkExperiences.Find(id);
            if (workExperience == null)
            {
                return HttpNotFound();
            }
            return View(workExperience);
        }

        // POST: WorkExperiences/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            WorkExperience workExperience = db.WorkExperiences.Find(id);
            db.WorkExperiences.Remove(workExperience);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
