using System;
using System.Linq;
using System.Net;
using System.Security.Claims;
using System.Web.Http;
using Castle.Core.Internal;
using IranMarketer.Authentication;
using IranMarketer.Common.Identity_Server;
using IranMarketer.Common.Utility;
using IranMarketer.Domain;
using IranMarketer.Domain.BusinessRuleHelper;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Enum;
using IranMarketer.Domain.Filters;
using IranMarketer.UserManagement;
using IranMarketer.WebAPI.Attrebute;
using Microsoft.AspNet.Identity;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Infra.Validation;
using Pikad.Framework.Repository.IoC;
using Swashbuckle.Swagger.Annotations;

namespace IranMarketer.WebAPI.Controllers
{
    [RoutePrefix("api/account")]
    public class AccountController :SimpleApiController
    {
        public static IdentityServerSettings IdentityServerSettings { get; set; }

        public AccountController()
        {
            IdentityServerSettings = IdentityServerSettings.Insance;

        }
        public CustomLogger Logger => new CustomLogger(GetType().FullName);
        public IServiceAccessService ServiceAccessService => CoreContainer.Container.Resolve<IServiceAccessService>();
        public UserManagementProvider UserManagementProvider => CoreContainer.Container.Resolve<UserManagementProvider>();
        public AuthenticationProvider AuthenticationProvider
            => CoreContainer.Container.Resolve<AuthenticationProvider>();


        /// <summary>
        /// ForgotPassword
        ///         /// </summary>
        /// <remarks>
        /// Note that the key is a GUID and not an integer.
        ///  
        ///     POST /
        ///     {
        ///        Email:a@a.com,
        ///       
        ///        ResetPasswprdAddress:"example.com/resetPassword"
        ///     }
        /// </remarks>
        /// <param name="filter"></param>
        ///  
        /// <response code="400">Operation Failed Because of Bad Input Parameter</response>
        /// 
        //[HttpPost]
        //[AllowAnonymous]
        //[Route("ForgotPassword", Name = "ForgotPassword", Order = 1)]
        //public IHttpActionResult ForgotPassword(ForgotPasswordViewModel model)
        //{
        //    ApiResponse<object> res = null;

        //    try
        //    {
        //        var UserManager = System.Net.AuthenticationManager.AuthenticationProvider.UserManager;
        //        if (ModelState.IsValid)
        //        {
        //            var user = UserManager.FindByEmail(model.Email);

        //            BRule.Assert(user != null, RuleExceptionCodeUserManagement.UserNotFound.GetEnumDescription(),
        //                (int)RuleExceptionCodeUserManagement.UserNotFound);

        //            BRule.Assert(user != null, RuleExceptionCodeUserManagement.CallBaclUrlIsEmpty.GetEnumDescription(),
        //                (int)RuleExceptionCodeUserManagement.CallBaclUrlIsEmpty);
        //            UserManager.UserTokenProvider = new EmailTokenProvider<IdentityModels.ApplicationUser, string>();

        //            // For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
        //            // Send an email with this link
        //            string code = UserManager.GeneratePasswordResetToken(user.Id);


        //            var callbackUrl = "Your Username is : <b>" + user.UserName +
        //                              "</b><br/> Please use this link to reset the password for SahraFund <br /> <a "
        //                              + "<a Href=" + model.ResetPasswprdAddress + "?userId=" + user.Email + "&code=" +
        //                              code + ">ResetPassword</a";
        //            UserManager.SendEmail(user.Id, "Forget Password", callbackUrl);
        //            //callbackUrl = UrlHelper("ResetPassword", new { userId = user.Id, code = code });

        //            //    EmailSender.SmtpSetting = SmtpSetting.Insance;
        //            //    EmailProvider.FromMailAddress = "ams@emofid.com";

        //            //    EmailSender.SendQueues(new EmailTemplate
        //            //    {
        //            //        CreateDate = DateTime.Now,
        //            //        Body = callbackUrl,
        //            //        Language = (int)Language.Persian,
        //            //        Subject = "Reset Password",
        //            //        ToAddressCollection = new MailAddressCollection
        //            //        {
        //            //            user.Email
        //            //        }
        //            //        ,
        //            //        From = new MailAddress("ams@emofid.com")
        //            //    });

        //            //    res = new WebApiSimpleResponse<object>
        //            //    {
        //            //        Message = ((int)RuleExceptionCode.ValidResult).ToString()
        //            //    };
        //            //}
        //            //else
        //            //{
        //            //    res = new WebApiSimpleResponse<object>
        //            //    {
        //            //        Message = ((int)RuleExceptionCode.InvalidEmailAddress).ToString()
        //            //    };
        //            //}
        //            res = new ApiResponse<object>
        //            {

        //                BRuleCode = (int)RuleExceptionCodeCommon.ValidResult,
        //                Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription()
        //            };

        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.ErrorException(ex.Message, ex);
        //        res = new ApiResponse<object>
        //        {
        //            Message = BusinessRuleHelper.GetException(ex),
        //            BRuleCode = BusinessRuleHelper.GetExceptionCode(ex)
        //        };
        //    }
        //    return Json(res);
        //}

        /// <summary>
        /// ResetPassword
        ///         /// </summary>
        /// <remarks>
        /// Note that the key is a GUID and not an integer.
        ///  
        ///     POST /
        ///     {
        ///        Paasword:
        ///       ConfirmPassword:
        ///       Email:
        ///       Code:
        ///        ResetPasswprdAddress:":example.com/resetPassword"
        ///     }
        /// </remarks>
        /// <param name="filter"></param>
        ///  
        /// <response code="400">Operation Failed Because of Bad Input Parameter</response>
        /// 
        //[HttpPost]
        //[AllowAnonymous]
        //[Route("ResetPassword", Name = "ResetPassword", Order = 1)]

        //public IHttpActionResult ResetPassword(ResetPasswordViewModel model)
        //{
        //    ApiResponse<object> res = null;

        //    try
        //    {
        //        var UserManager = System.Net.AuthenticationManager.AuthenticationProvider.UserManager;

        //        BRule.Assert(ModelState.IsValid, RuleExceptionCodeUserManagement.ParametersAreInvalid.GetEnumDescription(),
        //            (int)RuleExceptionCodeUserManagement.ParametersAreInvalid);

        //        var user = UserManager.FindByEmail(model.Email);
        //        BRule.Assert(user != null, RuleExceptionCodeUserManagement.UserNotFound.GetEnumDescription(),
        //            (int)RuleExceptionCodeUserManagement.UserNotFound);


        //        var result = UserManager.ResetPassword(user.Id, model.Code, model.Password);

        //        if (result.Succeeded)
        //        {
        //            res = new ApiResponse<object>
        //            {
        //                Result = 1000,
        //                Message = MessageResultEnum.OperationSuccessFullyDone.GetEnumDescription()
        //            };
        //        }
        //        else
        //        {
        //            res = new ApiResponse<object>
        //            {
        //                Result = -1,
        //                Message = MessageResultEnum.OperationFailed.GetEnumDescription()
        //            };
        //        }


        //    }
        //    catch (Exception ex)
        //    {

        //        Logger.ErrorException(ex.Message, ex);
        //        res = new ApiResponse<object>
        //        {
        //            Result = -1,
        //            Message = MessageResultEnum.OperationFailed.GetEnumDescription()
        //        };
        //    }
        //    return Json(res);
        //}
        /// <summary>
        /// ResetPassword
        ///         /// </summary>
        /// <remarks>
        /// Note that the key is a GUID and not an integer.
        ///  
        ///     POST /
        ///     {
        ///        Paasword:
        ///       ConfirmPassword:
        ///       Email:
        ///       Code:
        ///        ResetPasswprdAddress:":example.com/resetPassword"
        ///     }
        /// </remarks>
        /// <param name="filter"></param>
        ///  
        /// <response code="400">Operation Failed Because of Bad Input Parameter</response>
        /// 
        //[HttpPost]
        //[AllowAnonymous]
        //[CustomAuthorize]

        //[Route("ResetPasswordForAdmins", Name = "ResetPasswordForAdmins", Order = 1)]

        //public IHttpActionResult ResetPasswordForAdmins(BaseReportFilter<AdminResetPassword> filter)
        //{
        //    ApiResponse<object> res = null;

        //    try
        //    {

        //        var UserManager = System.Net.AuthenticationManager.AuthenticationProvider.UserManager;

        //        BRule.Assert(!filter?.ReportFilter?.NewPassword.IsNullOrEmpty() ?? false, RuleExceptionCodeUserManagement.ParametersAreInvalid.GetEnumDescription(),
        //            (int)RuleExceptionCodeUserManagement.ParametersAreInvalid);
        //        BRule.Assert(!filter?.ReportFilter?.UserNames.Any() ?? false, RuleExceptionCodeUserManagement.InvalidUserName.GetEnumDescription(),
        //            (int)RuleExceptionCodeUserManagement.InvalidUserName);


        //        var user = UserManager.FindByName(filter.ReportFilter.UserNames.FirstOrDefault());
        //        BRule.Assert(user != null && !user.Email.IsNullOrEmpty(), RuleExceptionCodeUserManagement.UserNotFound.GetEnumDescription(),
        //            (int)RuleExceptionCodeUserManagement.UserNotFound);

        //        var userId = UserManager.FindByEmail(user.Email);
        //        UserManager.RemovePassword(userId.Id);
        //        var result = UserManager.AddPasswordAsync(userId.Id, filter.ReportFilter.NewPassword);

        //        if (result.Result.Succeeded)
        //        {
        //            res = new ApiResponse<object>
        //            {
        //                Message = ((int)RuleExceptionCodeCommon.ValidResult).ToString()
        //            };
        //        }
        //        else
        //        {
        //            BRule.Assert(!(result?.Result?.Errors).Any(), RuleExceptionCodeUserManagement.PasswordisInvalid.GetEnumDescription(),
        //                (int)RuleExceptionCodeUserManagement.PasswordisInvalid);
        //        }

        //    }
        //    catch (Exception ex)
        //    {

        //        Logger.ErrorException(ex.Message, ex);
        //        res = new ApiResponse<object>
        //        {
        //            Message = BusinessRuleHelper.GetExceptionCode(ex).ToString()
        //        };
        //    }
        //    return Json(res);
        //}
        /// <summary>
        /// این اِی.پی.آی با استفاده از فیلترهایی که میگیرد، ;کاربران ثبت شده در سیستم را بر میگرداند
        /// This API Return All users in System
        /// </summary>
        /// <remarks>
        /// Sample Request:
        ///  
        ///     POST /
        ///     {
        ///       "ReportFilter": {
        ///              },
        ///       "OptionalFilter": {
        ///         "take": 0,
        ///         "skip": 0,
        ///         "page": 0,
        ///         "sort": null
        ///       }
        ///     }
        /// </remarks>
        /// <param name="filter"></param>
        ///  
        /// <response code="400">Operation Failed Because of Bad Input Parameter</response>
        /// 
        //[Route("GetAllUsers")]
        //[HttpPost]
        //[PageRepository(PageType = PageType.AllUsers)]
        //public IHttpActionResult GetAllUsers([FromBody] BaseReportFilter<Domain.DTO.UserManagement> filter)
        //{
        //    ApiPagedCollectionResponse<Domain.DTO.UserManagement> res;
        //    try
        //    {
        //        var lst = UserManagementProvider.GetUsersByFilter(filter);
        //        lst = SetKendoFilter(filter, lst);

        //        res = new ApiPagedCollectionResponse<Domain.DTO.UserManagement>
        //        {
        //            Result = lst,
        //            TotalRecords = lst.Count,
        //            Message = (RuleExceptionCodeCommon.ValidResult).GetEnumDescription(),
        //            BRuleCode = (int)RuleExceptionCodeCommon.ValidResult
        //        };
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.ErrorException(ex.Message, ex);
        //        res = new ApiPagedCollectionResponse<Domain.DTO.UserManagement>
        //        {
        //            BRuleCode = BusinessRuleHelper.GetExceptionCode(ex),
        //            Message = BusinessRuleHelper.GetException(ex)
        //        };
        //    }
        //    return Json(res);
        //}

        /// <summary>
        /// این اِی.پی.آی با استفاده از فیلترهایی که میگیرد، مشخصات کاربر انتخاب شده را بر میگرداند.
        /// This API Return All users in System
        /// </summary>
        /// <remarks>
        /// Sample Request:
        ///  
        ///     POST /
        ///     {
        ///       "ReportFilter": {
        /// "UserName":"mostafa"
        ///              },
        ///       "OptionalFilter": {
        ///         "take": 0,
        ///         "skip": 0,
        ///         "page": 0,
        ///         "sort": null
        ///       }
        ///     }
        /// </remarks>
        /// <param name="filter"></param>
        ///  
        /// <response code="400">Operation Failed Because of Bad Input Parameter</response>
        /// 
        //[Route("GetUserInformationByUserName")]
        //[HttpPost]
        //[AllowAnonymous]
        //public IHttpActionResult GetUserInformationByUserName(
        //    [FromBody] BaseReportFilter<UserManagementEditFilter> filter)
        //{
        //    ApiResponse<Domain.DTO.UserManagement> res;
        //    try
        //    {
        //        var lst = UserManagementProvider.GetUserInformationByUserName(filter);
        //        res = new ApiResponse<Domain.DTO.UserManagement>
        //        {
        //            Result = lst,
        //            Message = (RuleExceptionCodeCommon.ValidResult).GetEnumDescription(),
        //            BRuleCode = (int)RuleExceptionCodeCommon.ValidResult
        //        };
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.ErrorException(ex.Message, ex);
        //        res = new ApiResponse<Domain.DTO.UserManagement>
        //        {
        //            BRuleCode = BusinessRuleHelper.GetExceptionCode(ex),
        //            Message = BusinessRuleHelper.GetException(ex)
        //        };
        //    }


        //    return Json(res);
        //}
        /// <summary>
        /// این اِی.پی.آی با استفاده از فیلترهایی که میگیرد،کاربر مورد نظر را بروزرسانی میکند.
        /// This API Return All users in System
        /// </summary>
        /// <remarks>
        /// Sample Request:
        ///  
        ///     POST /
        ///     {
        ///       {
        ///  "ReportFilter":
        ///         {
        ///            "UserName": "Test2",
        ///            "DisplayName": "Mostafa Test",
        ///            "Email": "Test1@a.com",
        ///            "PhoneNumber": "09120174515",
        ///                "NationalIdentification": "4580090305",
        ///        "RolesCodeList":["PortalCustomer"]
        ///        
        ///            }
        ///        },
        ///       "OptionalFilter": {
        ///         "take": 0,
        ///         "skip": 0,
        ///         "page": 0,
        ///         "sort": null
        ///       }
        ///     }
        /// </remarks>
        /// <param name="filter"></param>
        ///  
        /// <response code="400">Operation Failed Because of Bad Input Parameter</response>
        /// 
        //[Route("UpdateUser")]
        //[PageRepository(PageType = PageType.UpdateUser)]
        //[HttpPost]
        //public IHttpActionResult UpdateUser([FromBody] BaseReportFilter<UserManagementUpdateFilter> filter)
        //{
        //    ApiResponse<Domain.DTO.UserManagement> res;

        //    try
        //    {
        //        try
        //        {
        //            UserManagementProvider.UpdateUserInformation(filter);

        //            res = new ApiResponse<Domain.DTO.UserManagement>
        //            {
        //                Message = (RuleExceptionCodeCommon.ValidResult).GetEnumDescription(),
        //                BRuleCode = ((int)RuleExceptionCodeCommon.ValidResult)

        //            };
        //            CustomCache.Remove(filter.ReportFilter.UserName);
        //        }
        //        catch (Exception ex)
        //        {
        //            Logger.ErrorException(ex.Message, ex);
        //            res = new ApiResponse<Domain.DTO.UserManagement>
        //            {
        //                BRuleCode = BusinessRuleHelper.GetExceptionCode(ex),
        //                Message = BusinessRuleHelper.GetException(ex)
        //            };
        //        }
        //        return Json(res);
        //    }
        //    catch (Exception ex)
        //    {

        //        Logger.ErrorException(ex.Message, ex);
        //        res = new ApiResponse<Domain.DTO.UserManagement>
        //        {
        //            Message = BusinessRuleHelper.GetException(ex),
        //            BRuleCode = BusinessRuleHelper.GetExceptionCode(ex),
        //        };
        //        return Json(res);
        //    }
        //}

        /// <summary>
        /// این اِی.پی.آی با استفاده از فیلترهایی که میگیرد،;کاربر را ایجاد میکند.
        /// This API Return All users in System
        /// </summary>
        /// <remarks>
        /// Sample Request:
        ///  
        ///     POST /
        ///     {
        ///        "ReportFilter":
        ///               {
        ///                  "UserName": "Test1",
        ///                  "DisplayName": "Mostafa Test",
        ///                  "Email": "Test1@a.com",
        ///                  "PhoneNumber": "09120174515",
        ///                  "Password": "123456sS",
        ///                  "ConfirmPassword": "123456sS",
        ///                  "NationalIdentification": "4580090306",
        ///              "RolesCodeList":["Admin"]
        ///              
        ///                  },
        ///                     "OptionalFilter": {
        ///                       "take": 0,
        ///                       "skip": 0,
        ///                       "page": 0,
        ///                       "sort": null
        ///                     }
        ///        }
        /// </remarks>
        /// <param name="filter"></param>
        ///  
        /// <response code="400">Operation Failed Because of Bad Input Parameter</response>
        /// 
        //[Route("AddUser")]
        //[HttpPost]
        //[PageRepository(PageType = PageType.AddUser)]
        //public IHttpActionResult AddUser([FromBody] BaseReportFilter<UserManagementAddFilter> filter)
        //{
        //    ApiResponse<Domain.DTO.UserManagement> res;
        //    try
        //    {
        //        UserManagementProvider.AddUser(filter);

        //        res = new ApiResponse<Domain.DTO.UserManagement>
        //        {
        //            Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription(),
        //            BRuleCode = ((int)RuleExceptionCodeCommon.ValidResult)
        //        };
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.ErrorException(ex.Message, ex);
        //        res = new ApiResponse<Domain.DTO.UserManagement>
        //        {
        //            Message = BusinessRuleHelper.GetException(ex),
        //            BRuleCode = BusinessRuleHelper.GetExceptionCode(ex),
        //        };
        //    }
        //    return Json(res);
        //}

        /// <summary>
        /// این اِی.پی.آی با استفاده از فیلترهایی که میگیرد نقش جدید  ایجاد میکند.
        /// This API Return All users in System
        /// </summary>
        /// <remarks>
        /// Sample Request:
        ///  
        ///     POST /
        ///     {
        ///        "ReportFilter": {
        ///    "RoleName": "Admin",
        ///},
        ///       "OptionalFilter": {
        ///         "take": 0,
        ///         "skip": 0,
        ///         "page": 0,
        ///         "sort": null
        ///       }
        ///     }
        /// </remarks>
        /// <param name="filter"></param>
        ///  
        /// <response code="400">Operation Failed Because of Bad Input Parameter</response>
        /// 
        //[Route("AddRole")]
        //[HttpPost]
        //public IHttpActionResult AddRole([FromBody] BaseReportFilter<AddRoleFilter> filter)
        //{
        //    ApiResponse<Domain.DTO.UserManagement> res;
        //    try
        //    {
        //        UserManagementProvider.AddRoles(filter);

        //        res = new ApiResponse<Domain.DTO.UserManagement>
        //        {
        //            Message = (RuleExceptionCodeCommon.ValidResult).GetEnumDescription(),
        //            BRuleCode = (int)RuleExceptionCodeCommon.ValidResult
        //        };
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.ErrorException(ex.Message, ex);
        //        res = new ApiResponse<Domain.DTO.UserManagement>
        //        {
        //            Message = BusinessRuleHelper.GetExceptionCode(ex).ToString()
        //        };
        //    }
        //    return Json(res);
        //}
        /// <summary>
        ///رفرش توکن را در صورت وجود بر میگرداند
        /// This API uses the filters to return the trades
        /// </summary>
        /// <remarks>
        /// Sample Request:
        ///  
        ///     POST /
        //    {
        //  
        //  },
        //  
        //}
        /// </remarks>
        /// <param name="filter"></param>
        ///  
        /// <response code="400">Operation Failed Because of Bad Input Parameter</response>
        /// 
        [AllowAnonymous]
        [Route("Login")]
        [HttpPost]
        [SwaggerResponse(HttpStatusCode.OK, "Return  Token.", typeof(AuthenticationResponse))]
        //[NatianIdFixAttributes] 
        public IHttpActionResult Login(UserLoginRequest filter)
        {
            ApiResponse<AuthenticationResponse> res;

            try
            {
                if (filter.ClientPassword.IsNullOrEmpty())
                    filter.ClientPassword = IdentityServerSettings.ClientPassword;

                var token = AuthenticationProvider.Login(filter.UserName, filter.Password, filter.ClientId,
                    filter.ClientPassword, IdentityServerSettings.TokenProviderAddress);

                res = new ApiResponse<AuthenticationResponse>
                {
                    Result = token,

                    Message = ((int)RuleExceptionCodeCommon.ValidResult).ToString()
                };

                //var session = new AccessTokenSession
                //{
                //    ClientId = filter.ClientId.ToLower(),
                //    userId = token.ApplicationUser.UserName.ToLower()
                //};

                //if (!token.AccessToken.IsNullOrEmpty())
                //    if (StaticData.AccessToken.ContainsKey(session))
                //        StaticData.AccessToken[session] = token.AccessToken;
                //    else
                //        StaticData.AccessToken.Add(session, token.AccessToken);

                return Json(res);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                res = new ApiResponse<AuthenticationResponse>
                {
                    Message = BusinessRuleHelper.GetException(ex),
                    BRuleCode = BusinessRuleHelper.GetExceptionCode(ex)

                };

                return Json(res);
            }
        }
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [Route("TokenValidation")]
        [HttpPost]
        [CustomAuthorize]
        //[Auditing]
        public IHttpActionResult TokenValidation()
        {
            try
            {
                var caller = User as ClaimsPrincipal;

                if (!caller.Identity.IsAuthenticated)

                {
                    return Unauthorized();
                }




                var userName = caller?.Claims.FirstOrDefault(x => x.Type == "preferred_username")?.Value;
                var user = UserManagementProvider.GetUsersByFilter(null).FirstOrDefault(x => x.UserName == userName);
                return Json(user);
            }
            catch (Exception ex)
            {
                return Unauthorized();
            }
        }






        /// </remarks>
        /// <param name="filter"></param>
        ///  
        /// <response code="400">Operation Failed Because of Bad Input Parameter</response>
        /// 
        /// 
        [Route("signout")]
        [HttpPost]
        [CustomAuthorize]
        [Auditing]
        [PageRepository(PageType = PageType.Profile)]
        public IHttpActionResult SignOut()
        {
            try
            {
                var caller = User as ClaimsPrincipal;

                var userName = caller?.Claims.FirstOrDefault(x => x.Type == "preferred_username")?.Value;
                var client = caller?.Claims.FirstOrDefault(x => x.Type == "client_id")?.Value;
                var session = new AccessTokenSession
                {
                    ClientId = client,
                    userId = userName

                };
                if (StaticData.AccessToken.ContainsKey(session))
                {
                    StaticData.AccessToken.Remove(session);
                }

                var res = new ApiResponse<object>
                {
                    Message = ((int)RuleExceptionCodeCommon.ValidResult).ToString()
                };
                return Json(res);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                var res = new ApiResponse<object>
                {
                    Message = BusinessRuleHelper.GetExceptionCode(ex).ToString()
                };

                return Json(res);
            }
        }


        /// <summary>
        /// تمام نقش های داخل سیستم را بر میگرداند
        /// This API Return All users in System
        /// </summary>
        /// <remarks>
        /// Sample Request:
        ///  
        ///     POST /
        ///     {
        ///        "ReportFilter": {
        ///    
        ///},
        ///       "OptionalFilter": {
        ///         "take": 0,
        ///         "skip": 0,
        ///         "page": 0,
        ///         "sort": null
        ///       }
        ///     }
        /// </remarks>
        /// <param name="filter"></param>
        ///  
        /// <response code="400">Operation Failed Because of Bad Input Parameter</response>
        /// 
        //[Route("GetRoles")]
        //[HttpPost]
        //public IHttpActionResult GetRoles([FromBody] BaseReportFilter<ReportFilter> filter)
        //{
        //    ApiPagedCollectionResponse<ApplicationRoleDto> res;
        //    try
        //    {
        //        var roles =
        //            System.Net.AuthenticationManager.AuthenticationProvider.RoleManager.Roles
        //                .Select(x => new ApplicationRoleDto
        //                {
        //                    Id = x.Id,
        //                    Name = x.Name
        //                });

        //        res = new ApiPagedCollectionResponse<ApplicationRoleDto>
        //        {
        //            Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription(),
        //            Result = roles.ToList(),
        //            BRuleCode = ((int)RuleExceptionCodeCommon.ValidResult),
        //            TotalRecords = roles.Count()
        //        };
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.ErrorException(ex.Message, ex);
        //        res = new ApiPagedCollectionResponse<ApplicationRoleDto>
        //        {
        //            BRuleCode = BusinessRuleHelper.GetExceptionCode(ex),
        //            Message = BusinessRuleHelper.GetException(ex)

        //        };
        //    }
        //    return Json(res);
        //}

    }
}
