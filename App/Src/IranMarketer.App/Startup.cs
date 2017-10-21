//using Microsoft.Owin;
//using Owin;

using Microsoft.Owin;
using Owin;

[assembly: OwinStartup(typeof(IranMarketer.App.Startup))]

namespace IranMarketer.App
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
