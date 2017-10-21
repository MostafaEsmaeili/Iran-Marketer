using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Pikad.Framework.Infra.Utility;
using IranMarketer.App.Attrebute;
using IranMarketer.App.Component.Helper;
using IranMarketer.App.Models;
using IranMarketer.WebAPI;

namespace IranMarketer.App
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            ModelBinders.Binders.Add(typeof(decimal), new DecimalModelBinder());
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            new Bootstrapper().Init();
           // GlobalFilters.Filters.Add(new AccessTokenAttribute());
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            ModelBinders.Binders.Add(typeof(double), new DoubleModelBinder());
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }


       
    }
  
}
