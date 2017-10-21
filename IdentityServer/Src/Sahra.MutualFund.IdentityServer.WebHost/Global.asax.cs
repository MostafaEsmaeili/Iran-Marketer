using System.Web.Mvc;
using System.Web.Routing;

namespace Sahra.MutualFund.IdentityServer.WebHost
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            RouteConfig.RegisterRoutes(RouteTable.Routes);
        }
    }
}
