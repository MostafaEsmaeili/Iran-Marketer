using System;
using System.Configuration;
using System.Linq;
using System.Web;

namespace IranMarketer.App.Component.Helper
{
    public static class ReportPathHelper
    {
        public static string GetMrtPath(ReportCategory category)
        {

            var path = ConfigurationManager.AppSettings.AllKeys.FirstOrDefault(x => x == category.ToString());
            if (path==null)
            {
                    throw new ArgumentOutOfRangeException(nameof(category), category, null);

            }

            return   HttpContext.Current.Server.MapPath("~/" + ConfigurationManager.AppSettings[path]);
           
        }
    }
}