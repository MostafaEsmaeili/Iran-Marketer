using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using IdentityServer3.Core.Extensions;
using Sahra.MutualFund.IdentityServer.WebHost.AspId;

namespace Sahra.MutualFund.IdentityServer.WebHost.Controllers
{
    [Route("core/2fa")]
    public class TwoFactorController : Controller
    {
        Context.UserManager userMgr;

        public TwoFactorController()
        {
            userMgr = new Context.UserManager(new Context.UserStore(new Context("name=AspId")));
        }

        public async Task<ActionResult> Index()
        {
            var ctx = Request.GetOwinContext();
            var user = await ctx.Environment.GetIdentityServerPartialLoginAsync();
            if (user == null)
            {
                return View("Error");
            }

            return View("Index");
        }

        [HttpPost]
        public async Task<ActionResult> Index(string code)
        {
            var ctx = Request.GetOwinContext();

            var user = await ctx.Environment.GetIdentityServerPartialLoginAsync();
            if (user == null)
            {
                return View("Error");
            }

            var id = user.FindFirst("sub").Value;
            if (!(await this.userMgr.VerifyTwoFactorTokenAsync(id, "sms", code)))
            {
                ViewData["message"] = "Incorrect code";
                return View("Index");
            }

            var claims = user.Claims.Where(c => c.Type != "amr").ToList();
            claims.Add(new Claim("amr", "2fa"));
            await ctx.Environment.UpdatePartialLoginClaimsAsync(claims);

            var resumeUrl = await ctx.Environment.GetPartialLoginResumeUrlAsync();
            return Redirect(resumeUrl);
        }
    }
}