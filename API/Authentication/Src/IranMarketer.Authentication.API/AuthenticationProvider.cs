using System;
using System.Linq;
using System.Text.RegularExpressions;
using Castle.Core.Internal;
using NLog;
using Pikad.Framework.Infra.Validation;
using IranMarketer.Common.Utility;
using IranMarketer.Domain;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Enum;
using IranMarketer.PartyManagement.Service;
using IranMarketer.UserManagement;
using IdentityModel.Client;
using IdentityServer3.Core.Services;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Repository.IoC;
using IranMarketer.Common;

namespace IranMarketer.Authentication
{
    public class AuthenticationProvider : BaseProvider
    {
        public IServiceAccessService AccessService => CoreContainer.Container.Resolve<IServiceAccessService>();
        private CustomLogger Logger =>new CustomLogger(GetType().FullName);
        public AuthenticationResponse Login(string userName, string password, string clientId, string clientPassword, string identityServerAddress)
        {
            try
            {
                var client = new TokenClient(
                    identityServerAddress,
                    clientId,
                    clientPassword);

                var token =
                    client.RequestResourceOwnerPasswordAsync(userName, password,
                        "email profile openid iranMarketerMail").Result;
                var application = clientId.ParseEnum(Applications.UnKnown);

                IdentityModels.ApplicationUser user = null;
                Party party = null;

                if (!token.AccessToken.IsNullOrEmpty())
                {
                    user = AuthenticationManager.AuthenticationProvider.GetUserByName(userName);

                }

                var result = new AuthenticationResponse
                {
                    AccessToken = token.AccessToken,
                    LifeTime = (int)token.ExpiresIn,
                    ApplicationUser = user == null ? null : new ApplicationUserDTO
                    {
                        Email = user?.Email,
                        Status = user?.Status ?? 0,
                        IsCustomizedAccess = user.IsCustomizedAccess,
                        CreateDate = user?.CreateDate ?? DateTime.MinValue,
                        // PhoneNumber = party?.,
                        UserName = user?.UserName,
                        IsAdmin = user?.IsAdmin ?? false,

                        DisplayNameFa = party != null ? (!Regex.IsMatch(user.UserName, "^demo\\d$") ? party?.FullName : "علی احمدی") : user.DisplayName,
                        DisplayNameEn = party != null ? (!Regex.IsMatch(user.UserName, "^demo\\d$") ? party?.FullName : "Joan Smith") : user.DisplayName,
                    },
                    HasAccess = token.AccessToken != null,
                    ClientId = clientId,
                 //   Pages = AccessService.GetAccessiblePagesByUsername(userName, application).Select(x => x.ToString()).ToList()
                };
                BRule.Assert(result.AccessToken != null, RuleExceptionCodeUserManagement.LoginFaild.GetEnumDescription(),
                    (int)RuleExceptionCodeUserManagement.LoginFaild);

                BRule.Assert(result.ApplicationUser.Status == (int)UserStatus.Active, RuleExceptionCodeUserManagement.UserIsNotActive.GetEnumDescription(),
                    (int)RuleExceptionCodeUserManagement.UserIsNotActive);

                return result;
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }
        }

        public void ChangePassword(string userName, string currentPassword, string newPassword, string confirmPassword)

        {
            //try
            //{
            //    var user = PortalCustomerService.GetCustomerByEmail(userName);
            //    var party = AccessService.GetApplicationUserByUserName(userName)?.Id;

            //    BRule.Assert(user != null && party != null,
            //        RuleExceptionCodeRegisteration.UserNotFound.GetEnumDescription(),
            //        (int)RuleExceptionCodeRegisteration.UserNotFound);


            //    BRule.Assert(newPassword == confirmPassword,
            //        RuleExceptionCodeRegisteration.ConfirmPasswordDontMatch.GetEnumDescription(),
            //        (int)RuleExceptionCodeRegisteration.ConfirmPasswordDontMatch);

            //    var change = AuthenticationManager.AuthenticationProvider.ChangePassword(new ChangePasswordRequest
            //    {
            //        UserId = party,
            //        NewPassword = newPassword,
            //        OldPassword = currentPassword
            //    });
            //    BRule.Assert(change.ResponseStatus.Errors == null,
            //        RuleExceptionCodeRegisteration.CurrentPasswordIsInvalid.GetEnumDescription(),
            //        (int)RuleExceptionCodeRegisteration.CurrentPasswordIsInvalid);
            //}
            //catch (Exception ex)
            //{
            //    Logger.ErrorException(ex.Message, ex);
            //    throw;
            //}
        }
    }
}