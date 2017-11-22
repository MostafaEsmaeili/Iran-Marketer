using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Castle.Core.Internal;
using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;

using Microsoft.AspNet.Identity.Owin;

using RestSharp;
using IranMarketer.App.Attrebute;
using IranMarketer.App.Component.Helper;
using IranMarketer.App.Component.Provider;
//using Microsoft.AspNet.Identity;
//using Microsoft.AspNet.Identity.Owin;
//using Microsoft.Owin.Security;
using IranMarketer.App.Models;
using IranMarketer.Authentication;
using IranMarketer.Common.Identity_Server;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Enum;
using IranMarketer.Domain.Filters;
using IranMarketer.PartyManagement.Interface;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository.IoC;
using ForgotPasswordViewModel = IranMarketer.App.Models.ForgotPasswordViewModel;
using ResetPasswordViewModel = IranMarketer.App.Models.ResetPasswordViewModel;

namespace IranMarketer.App.Controllers
{
    
    public class AccountController : BaseController
    {
        public AuthenticationProvider AuthenticationProvider =>
            CoreContainer.Container.Resolve<AuthenticationProvider>(); public static IdentityServerSettings IdentityServerSettings { get; set; }

        public AccountController()
        {
            IdentityServerSettings=IdentityServerSettings.Insance;
        }

        public IRetailPartyService RetailPartyService => CoreContainer.Container.Resolve<IRetailPartyService>();
        public ILegalPartyService LegalPartyService => CoreContainer.Container.Resolve<ILegalPartyService>();

        [AllowAnonymous]
        [HttpGet]
        public ActionResult Login(string returnUrl)
        {
            ViewBag.ReturnUrl = returnUrl;
            return View();
        }
        [AllowAnonymous]
        [HttpGet]
        public ActionResult ForgetPassword()
        {

            return View();
        }

        [AllowAnonymous]
        [HttpGet]
        public ActionResult ResetPassword()
        {

            return View();
        }
        [HttpPost]
        [AllowAnonymous]
        public ActionResult ResetPassword(ResetPasswordViewModel model)
        {
            try
            {


                // This doesn't count login failures towards account lockout
                // To enable password failures to trigger account lockout, change to shouldLockout: true
                var request = ApiHelper.Request(ApiAddressProvider.AccountApi + "ResetPassword", Method.POST);
                request.AddJsonBody(new Domain.DTO.ResetPasswordViewModel()
                {
                    Email = model.Email,
                    Code = model.Code,
                    Password = model.Password,
                    ConfirmPassword = model.ConfirmPassword
                });
                var res = request.Exec<ApiResponse<AuthenticationResponse>>();

                return Json(res.Data);
            }
            catch (Exception ex)
            {

                return Json(new ApiResponse<object>
                {
                    BRuleCode = 1,
                    Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

                });
            }
        }
        //
        // POST: /Account/Login
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult Login(LoginViewModel model, string returnUrl)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return View(model);
                }

                // This doesn't count login failures towards account lockout
                // To enable password failures to trigger account lockout, change to shouldLockout: true



                var request = ApiHelper.Request(ApiAddressProvider.AccountApi + "Login", Method.POST);
                request.AddJsonBody(new UserLoginRequest
                {
                    ClientId = "IranMarketer",
                    UserName = model.UserName,
                    Password = model.Password
                });
                var res = request.Exec<ApiResponse<AuthenticationResponse>>();


                if (!res?.Data?.Result?.AccessToken.IsNullOrEmpty() ?? false)
                {


                    var party = RetailPartyService.Get(x => x.UserName == res.Data.Result.ApplicationUser.UserName).FirstOrDefault();
                    var legal= LegalPartyService.Get(x => x.UserName == res.Data.Result.ApplicationUser.UserName).FirstOrDefault();
                    var user = UserManagement.AuthenticationManager.AuthenticationProvider.GetUserByName(res.Data.Result
                        .ApplicationUser.UserName);

                    var id = new ClaimsIdentity(DefaultAuthenticationTypes.ApplicationCookie,
                        ClaimsIdentity.DefaultNameClaimType, ClaimsIdentity.DefaultRoleClaimType);


                    id.AddClaim(new Claim(ClaimTypes.NameIdentifier, party.UserId??legal.UserId, ClaimValueTypes.String));
                    id.AddClaim(new Claim(ClaimTypes.UserData, party.Id.SafeString()?? legal.Id.ToString(), ClaimValueTypes.String));
                    id.AddClaim(new Claim(ClaimsIdentity.DefaultNameClaimType, party.UserName??legal.UserName, ClaimValueTypes.String));
                    id.AddClaim(new Claim(ClaimTypes.Email, user.Email, ClaimValueTypes.String));
                    id.AddClaim(new Claim("Clinet", res.Data.Result.ClientId, ClaimValueTypes.String));
                    id.AddClaim(
                        new Claim("http://schemas.microsoft.com/accesscontrolservice/2010/07/claims/identityprovider",
                            "ASP.NET Identity", ClaimValueTypes.String));
                    id.AddClaim(new Claim(ClaimTypes.Authentication, res?.Data?.Result?.AccessToken, ClaimValueTypes.String));
                    AuthenticationManager.SignOut(DefaultAuthenticationTypes.ExternalCookie,
                        DefaultAuthenticationTypes.ApplicationCookie);


                    AuthenticationManager.SignIn(new AuthenticationProperties { IsPersistent = true }, id);

                    return RedirectToLocal(returnUrl);
                }
                ModelState.AddModelError("", "نام کاربری و یا کلمه عبور اشتباه است");
                ViewData["ErrorMessage"] = res?.Data?.Message ?? "نام کاربری و یا کلمه عبور اشتباه است";
                return View(model);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }
        }


        public ActionResult UserProfile()
        {

            return View();
        }
        [HttpGet]
        public ActionResult LogOut()
        {
            try
            {
                    AuthenticationManager.SignOut(DefaultAuthenticationTypes.ExternalCookie,
                        DefaultAuthenticationTypes.ApplicationCookie);

            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
            }
            return RedirectToAction("Login");
        }

        [HttpPost]
        [AllowAnonymous]
        public ActionResult ForgetPassword(ForgotPasswordViewModel model)
        {
            try
            {


                // This doesn't count login failures towards account lockout
                // To enable password failures to trigger account lockout, change to shouldLockout: true
                var request = ApiHelper.Request(ApiAddressProvider.AccountApi + "ForgotPassword", Method.POST);
                request.AddJsonBody(new Domain.DTO.ForgotPasswordViewModel()
                {
                    Email = model.Email,
                    ResetPasswprdAddress = model.Address + "/Account/ResetPassword"
                });
                var res = request.Exec<ApiResponse<AuthenticationResponse>>();

                return Json(res.Data);
            }
            catch (Exception ex)
            {

                return Json(new ApiResponse<object>
                {
                    BRuleCode = 1,
                    Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

                });
            }
        }
        [HttpPost]
        public ActionResult ValidateToken()
        {

            

                return Json(true);
            
        }

        #region Helpers
        // Used for XSRF protection when adding external logins
        private const string XsrfKey = "XsrfId";

        private IAuthenticationManager AuthenticationManager
        {
            get
            {
                return HttpContext.GetOwinContext().Authentication;
            }
        }

        private void AddErrors(IdentityResult result)
        {
            foreach (var error in result.Errors)
            {
                ModelState.AddModelError("", error);
            }
        }

        private ActionResult RedirectToLocal(string returnUrl)
        {
            if (Url.IsLocalUrl(returnUrl))
            {
                return Redirect(returnUrl);
            }
            return RedirectToAction("Index", "Home");
        }

        internal class ChallengeResult : HttpUnauthorizedResult
        {
            public ChallengeResult(string provider, string redirectUri)
                : this(provider, redirectUri, null)
            {
            }

            public ChallengeResult(string provider, string redirectUri, string userId)
            {
                LoginProvider = provider;
                RedirectUri = redirectUri;
                UserId = userId;
            }

            public string LoginProvider { get; set; }
            public string RedirectUri { get; set; }
            public string UserId { get; set; }

            public override void ExecuteResult(ControllerContext context)
            {
                var properties = new AuthenticationProperties { RedirectUri = RedirectUri };
                if (UserId != null)
                {
                    properties.Dictionary[XsrfKey] = UserId;
                }
                context.HttpContext.GetOwinContext().Authentication.Challenge(properties, LoginProvider);
            }
        }
        #endregion
    }
}