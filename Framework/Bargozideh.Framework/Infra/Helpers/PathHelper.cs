using System.Web;
using System.Web.Hosting;

namespace Bargozideh.Framework.Infra.Helpers
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
