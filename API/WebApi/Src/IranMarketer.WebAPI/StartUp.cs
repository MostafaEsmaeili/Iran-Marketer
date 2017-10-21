using System;
using System.Threading.Tasks;
using Microsoft.Owin;
using Owin;
using IranMarketer.Common.Utility;


[assembly: OwinStartup(typeof(IranMarketer.WebAPI.StartUp))]

namespace IranMarketer.WebAPI
{
    public partial class StartUp
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
