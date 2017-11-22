using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using IranMarketer.App.Attribute;
using IranMarketer.App.Component.Helper;
using IranMarketer.App.Component.Model;
using IranMarketer.App.Helper;
using IranMarketer.Common.Database;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.PartyManagement.API;
using IranMarketer.SharedData;
using Microsoft.AspNet.Identity;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository.IoC;
using RestSharp.Extensions;
using LegalParty = IranMarketer.Domain.DTO.LegalParty;
using RetailParty = IranMarketer.Domain.DTO.RetailParty;

namespace IranMarketer.App.Controllers
{
    [CustomAuthorize]
    [SetLoggedInUserInformation]
    public class LegalPartiesController : BaseController
    {
        public PartyProvider PartyProvider => CoreContainer.Container.Resolve<PartyProvider>();

        public DocumentProvider DocumentProvider => CoreContainer.Container.Resolve<DocumentProvider>();

        // GET: LegalParties
        public ActionResult Index()
        {
            return View();
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
        public ActionResult Create(Domain.DTO.LegalParty legalParty)
        {

            try
            {
                using (var db = new IranMarketerContext())
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
            }
            catch (Exception)
            {
                return Json(ErrorApiResponse, JsonRequestBehavior.AllowGet);

            }
        }

        // GET: LegalParties/Edit/5
        public ActionResult GetLegalPartyInformarion(LegalParty party)
        {
            try
            {
                using (var db = new IranMarketerContext())
                {
                    var ent = db.LegalParties.FirstOrDefault(x => x.UserName == party.UserName);
                    var dto = ObjectMapper.BaseConverter
                        .ConvertSourceToDest<IranMarketer.Domain.Entity.LegalParty, LegalParty>(ent);
                    SuccessApiResponse.Result = dto;
                    return Json(SuccessApiResponse, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception e)
            {
                return Json(ErrorApiResponse, JsonRequestBehavior.AllowGet);

            }
        }

        // POST: LegalParties/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public ActionResult Edit([Bind(Include = "Id,CreatedBy,ModifiedBy,Created,Modified")] LegalParty legalParty)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        db.Entry(legalParty).State = EntityState.Modified;
        //        db.SaveChanges();
        //        return RedirectToAction("Index");
        //    }
        //    return View(legalParty);
        //}



        public ActionResult SaveAndPersist(IEnumerable<HttpPostedFileBase> files)
        {
            // The Name of the Upload component is "files"
            if (files != null)
            {
                foreach (var file in files)
                {
                    // Some browsers send file names with full path.
                    // We are only interested in the file name.
                    var fileName = Path.GetFileName(file.FileName);
                    var fileExtension = Path.GetExtension(file.FileName);

                    SessionUploadInitialFilesRepository.Add(
                        new UploadInitialFile(fileName, file.ContentLength, fileExtension));
                    using (var db = new IranMarketerContext())
                    {
                        var doc = new Document
                        {
                            Binery = file.InputStream.ReadAsBytes(),
                            Created = DateTime.Now,
                            CreatedBy = Extentions.GetUserName(User.Identity),
                            Modified = DateTime.Now,
                            ModifiedBy = Extentions.GetUserName(User.Identity),
                            DocTitle = "لوگو",
                            DocType = (int) DocumentType.CompanyLogo,
                            PartyId = User.Identity.GetPartyId().SafeInt(),
                            UserId = User.Identity.GetUserId()

                        };
                        DocumentProvider.Save(doc);
                    }


                }
            }
            // Return an empty string to signify success
            return Content("");

        }

        public ActionResult RemoveAndPersist(string[] fileNames)
        {
            // The parameter of the Remove action must be called "fileNames"
            using (var db = new IranMarketerContext())
            {

            }

            // Return an empty string to signify success
            return Content("");
        }



    }
}

