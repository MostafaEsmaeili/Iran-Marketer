using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using IranMarketer.Domain.Entity;

namespace IranMarketer.App.Controllers
{
    public class LegalPartiesController : Controller
    {
        private IranMarketerContext db = new IranMarketerContext();

        // GET: LegalParties
        public ActionResult Index()
        {
            return View(db.LegalParties.ToList());
        }

        // GET: LegalParties/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LegalParty legalParty = db.LegalParties.Find(id);
            if (legalParty == null)
            {
                return HttpNotFound();
            }
            return View(legalParty);
        }

        // GET: LegalParties/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: LegalParties/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,CreatedBy,ModifiedBy,Created,Modified")] LegalParty legalParty)
        {
            if (ModelState.IsValid)
            {
                db.LegalParties.Add(legalParty);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(legalParty);
        }

        // GET: LegalParties/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LegalParty legalParty = db.LegalParties.Find(id);
            if (legalParty == null)
            {
                return HttpNotFound();
            }
            return View(legalParty);
        }

        // POST: LegalParties/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,CreatedBy,ModifiedBy,Created,Modified")] LegalParty legalParty)
        {
            if (ModelState.IsValid)
            {
                db.Entry(legalParty).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(legalParty);
        }

        // GET: LegalParties/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LegalParty legalParty = db.LegalParties.Find(id);
            if (legalParty == null)
            {
                return HttpNotFound();
            }
            return View(legalParty);
        }

        // POST: LegalParties/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            LegalParty legalParty = db.LegalParties.Find(id);
            db.LegalParties.Remove(legalParty);
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
