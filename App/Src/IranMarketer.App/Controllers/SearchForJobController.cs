using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IranMarketer.App.Attribute;

namespace IranMarketer.App.Controllers
{
    [CustomAuthorize]
    [SetLoggedInUserInformation]
    public class SearchForJobController : BaseController
    {
        // GET: SearchForJob
        public ActionResult Index()
        {
            return View();
        }
    }
}