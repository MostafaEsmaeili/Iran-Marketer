using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IranMarketer.Common.Database;
using IranMarketer.Domain.Entity;

namespace IranMarketer.App.Controllers
{
    public class ResumeController : Controller
    {
        // GET: Resume
        public ActionResult Index(string userId)
        {
            RetailParty model;
            using (var db=new IranMarketerContext())
            {
                db.Configuration.ProxyCreationEnabled = false;
                 model = db.RetailParties.Where(x => x.UserId == userId).Include(x => x.JobPrefers)
                    .Include(x => x.City).Include(x => x.PartyUniversities)
                    .Include(x => x.WorkExperiences).Include(x => x.JobPrefers).AsNoTracking().FirstOrDefault();
            }
            return View(model);
        }
    }
}