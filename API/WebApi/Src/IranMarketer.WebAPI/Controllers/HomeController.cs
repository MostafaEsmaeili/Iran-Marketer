using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IdentityManager.Configuration;

namespace IranMarketer.WebAPI
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Title = "Home Page";
            var factory = new IdentityManagerServiceFactory();

            return Redirect("Swagger/ui/index");
        }
    }
}
