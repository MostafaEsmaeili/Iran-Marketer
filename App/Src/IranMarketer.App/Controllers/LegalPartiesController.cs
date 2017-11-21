using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using IranMarketer.Domain.Entity;
using IranMarketer.PartyManagement.API;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository.IoC;
using LegalParty = IranMarketer.Domain.DTO.LegalParty;
using RetailParty = IranMarketer.Domain.DTO.RetailParty;

namespace IranMarketer.App.Controllers
{

    public class LegalPartiesController : BaseController
    {
        public PartyProvider PartyProvider => CoreContainer.Container.Resolve<PartyProvider>();

        private IranMarketerContext db = new IranMarketerContext();

        // GET: LegalParties
        public ActionResult Index()
        {
            return View(db.LegalParties.ToList());
        }

        // GET: LegalParties/Details/5
        //public ActionResult Details(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    LegalParty legalParty = db.LegalParties.Find(id);
        //    if (legalParty == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(legalParty);
        //}

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
        public ActionResult Create([Bind(Include = "Id,CreatedBy,ModifiedBy,Created,Modified")] Domain.DTO.LegalParty legalParty)
        {

            try
            {
                var ent = db.LegalParties.FirstOrDefault(x => x.UserName == legalParty.UserName);
                var entity = ObjectMapper.BaseConverter
                    .ConvertSourceToDest<LegalParty, IranMarketer.Domain.Entity.LegalParty>(legalParty);

                if (ent != null) entity.Id = ent.Id;

                entity.Modified = DateTime.Now;
                entity.Created = ent.Created;
                entity.CreatedBy = ent.CreatedBy;
                db.LegalParties.AddOrUpdate(entity);
                return Json(SuccessApiResponse, JsonRequestBehavior.AllowGet);
            }
            catch (Exception e)
            {
                return Json(ErrorApiResponse, JsonRequestBehavior.AllowGet);

            }
        }

        // GET: LegalParties/Edit/5
        public ActionResult GetLegalPartyInformarion(LegalParty party)
        {
            try
            {
                var ent = db.LegalParties.FirstOrDefault(x => x.UserName == party.UserName);
                var dto = ObjectMapper.BaseConverter
                    .ConvertSourceToDest<IranMarketer.Domain.Entity.LegalParty, LegalParty>(ent);
                SuccessApiResponse.Result = dto;
                return Json(SuccessApiResponse, JsonRequestBehavior.AllowGet);
            }
            catch (Exception e)
            {
                return Json(ErrorApiResponse, JsonRequestBehavior.AllowGet);

            }
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
