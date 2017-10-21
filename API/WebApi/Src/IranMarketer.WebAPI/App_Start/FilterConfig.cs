using System.Web;
using System.Web.Mvc;


namespace IranMarketer.WebAPI
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
            //filters.Add(new SetLoggedInUserInformationAttribute());
            //filters.Add(new CustomAuthorizeAttribute());
        }
    }
}
