using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IranMarketer.App.Attrebute;
using IranMarketer.Domain.Entity;

namespace IranMarketer.App.Controllers
{

    public class ExpenseSettingController : BaseController
    {
        // GET: Expense
        public ActionResult Index()
        {
            return View(new ManagementSetting());
        }

        public ActionResult OtherExpense()
        {
            return View();
        }


    }
}