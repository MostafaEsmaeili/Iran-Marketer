using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Http.Controllers;
using System.Web.Http.Cors;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using System.Xml;
using Microsoft.Owin.Builder;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Infra.Utility;


namespace IranMarketer.WebAPI
{
    public class WebApiApplication : System.Web.HttpApplication
    {
        public CustomLogger Logger => new CustomLogger(GetType().FullName);
        protected void Application_Start()
        {
            try
            {
                new Bootstrapper().Init();
                AreaRegistration.RegisterAllAreas();
                GlobalConfiguration.Configure(WebApiConfig.Register);
                FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
                RouteConfig.RegisterRoutes(RouteTable.Routes);
                BundleConfig.RegisterBundles(BundleTable.Bundles);
                //ServiceReposioryMaker.AddAllApiToServiceRepository();
              //  RegisterWebApiFilters(GlobalConfiguration.Configuration.Filters);

                
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public static void RegisterWebApiFilters(System.Web.Http.Filters.HttpFilterCollection filters)
        {
            filters.Add(new SetLoggedInUserInformationAttribute());
            filters.Add(new CustomAuthorizeAttribute());
        }

    }
}
