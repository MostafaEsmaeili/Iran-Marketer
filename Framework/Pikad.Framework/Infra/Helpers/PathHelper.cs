using System.Web;
using System.Web.Hosting;

namespace Pikad.Framework.Infra.Helper
{
    public class PathHelper
    {
        public static string BinPath()
        {
            if (HostingEnvironment.IsHosted)
                return HttpRuntime.BinDirectory;

            return string.Empty;
        }
    }
}
