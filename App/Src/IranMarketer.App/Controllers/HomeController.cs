using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IranMarketer.App.Attrebute;
using IranMarketer.App.Models;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.PartyManagement.Interface;
using Pikad.Framework.Repository.IoC;

namespace IranMarketer.App.Controllers
{
    public class HomeController : Controller
    {
        public ILegalPartyService LegalPartyService => CoreContainer.Container.Resolve<ILegalPartyService>();

        public ActionResult Index()
        {
            List<CompanyLogoViewModel> lst;
            using (var db=new IranMarketerContext())
            {
                var binery=  db.Documents.Where(x => x.DocType == (int) DocumentType.CompanyLogo)
                    .AsNoTracking().ToList();

                //logos = binery.Select(x => x.ConvertToBase64String()).ToList();
                lst = new List<CompanyLogoViewModel>(binery.Select(x => new CompanyLogoViewModel
                {
                    CompanyName = LegalPartyService.Get(y => y.UserId == x.UserId).FirstOrDefault()?.CompanyName,
                    Base64 = x.Binery.ConvertToBase64String()
                }));
            }
            return View(lst);
        }


    }
   
}