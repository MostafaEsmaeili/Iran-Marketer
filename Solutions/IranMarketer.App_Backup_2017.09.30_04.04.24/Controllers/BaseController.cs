using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Hosting;
using System.Web.Mvc;
using Pikad.Framework.Infra.Logging;
using IranMarketer.App.Component.Helper;
using IranMarketer.App.Component.ReportProvider;

namespace IranMarketer.App.Controllers
{
    public class BaseController : Controller
    {
        public  CustomLogger Logger=>new CustomLogger(GetType().FullName);
        protected const string AddAllTitle = "همه";
        protected const int AddAllValue = -1;

        public ApiHelper ApiHelper = new ApiHelper();

        [HttpPost]
        public virtual  ActionResult CustomExcelReport(string contentType, string base64, string fileName)
        {
            var p = new BaseExcelProvider(contentType, base64, fileName);
            return File(p.Export(), contentType, fileName);
        }


    }
}