using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using AutoMapper;
using Castle.Core.Internal;
using Microsoft.AspNet.Identity;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Infra.Validation;
using Pikad.Framework.Repository.IoC;
using Pikad.Framework.UnitOfWork;
using IranMarketer.Common;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.Domain.Filters;
using IranMarketer.PartyManagement.API;
using IranMarketer.PartyManagement.Service;
using IranMarketer.UserManagement;
using IranMarketer.UserManagement.Service;
using IranMarketer.PartyManagement.Interface;

namespace IranMarketer.Authentication
{
    public class UserManagementProvider : BaseProvider
    {
        private static string pattern = "{0}_username";
        private IServiceAccessService ServiceAccessService => CoreContainer.Container.Resolve<IServiceAccessService>();
        public PartyProvider PartyProvider => CoreContainer.Container.Resolve<PartyProvider>();
        public LegalPartyProvider LegalPartyProvider => CoreContainer.Container.Resolve<LegalPartyProvider>();

        public IPartyBranchService PartyBranchService => CoreContainer.Container.Resolve<IPartyBranchService>();
        public IUserManagementService UserManagementService => CoreContainer.Container.Resolve<IUserManagementService>();

        /// <summary>
        /// </summary>
        /// <param name="filter"></param>
        /// <returns></returns>
        public Domain.DTO.UserManagement GetUserInformationByUserName(BaseReportFilter<UserManagementEditFilter> filter)
        {
            try
            {
                var username = filter.ReportFilter?.UserName;
                BRule.Assert(!username.IsNullOrEmpty(), RuleExceptionCodeUserManagement.UserNameIsEmpty.GetEnumDescription(),
                    (int)RuleExceptionCodeUserManagement.UserNameIsEmpty);

                var key = string.Format(pattern, username);

                var dtoCache = CustomCache.Get(key) as Domain.DTO.UserManagement;
                if (dtoCache != null)
                    return dtoCache;

                //var user = AuthenticationManager.AuthenticationProvider.UserManager.FindByName(username); //TODO
                //Mapper.CreateMap<IdentityModels.ApplicationUser, Domain.DTO.UserManagement>().ForMember(dest => dest.CreateDate,
                //    opt => opt.MapFrom(src => src.CreateDate.ConvertMiladiToJalali()));
                //var model = Mapper.Map<IdentityModels.ApplicationUser, Domain.DTO.UserManagement>(user);

                var model = UserManagementService.GetUserByUserName(username);
                var party = PartyProvider.GetByUserName(username);
                if (party != null)
                {
                    var branch = PartyBranchService.GetAll().FirstOrDefault(x => x.PartyId == party.Id && x.ValidUntil == null);
                    if (branch?.BranchId != null)
                    {
                        if (branch?.BranchId != null) model.BranchId = (int)branch?.BranchId;
                    }
                }

                model.RolesCodeList = AuthenticationManager.AuthenticationProvider.UserManager.GetRoles(model.Id).ToList();

                CustomCache.Insert(key, model, 1200);
                return model;
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }
        }


        public void UpdateUserInformation(BaseReportFilter<UserManagementUpdateFilter> filter)
        {
            try
            {
                BRule.Assert(filter?.ReportFilter != null, RuleExceptionCodeCommon.FilterIsNull.GetEnumDescription(),
                    (int)RuleExceptionCodeCommon.FilterIsNull);

                BRule.Assert(filter.ReportFilter.UserName != null,
                    RuleExceptionCodeUserManagement.InvalidUserName.GetEnumDescription(),
                    (int)RuleExceptionCodeUserManagement.InvalidUserName);

                BRule.Assert(filter.ReportFilter.DisplayName != null,
                    RuleExceptionCodeUserManagement.DisplayNameIsNull.GetEnumDescription(),
                    (int)RuleExceptionCodeUserManagement.DisplayNameIsNull);

                var user =
                    AuthenticationManager.AuthenticationProvider.UserManager.FindByName(filter.ReportFilter.UserName);


                BRule.Assert(user != null,
                    RuleExceptionCodeUserManagement.UserNotFound.GetEnumDescription(),
                    (int)RuleExceptionCodeUserManagement.UserNotFound);


                var ifExistEmail = AuthenticationManager.AuthenticationProvider.UserManager.FindByEmail(filter.ReportFilter.Email);


                BRule.Assert(ifExistEmail == null || ifExistEmail.UserName == user.UserName,
                    RuleExceptionCodeUserManagement.EmailExits.GetEnumDescription(),
                    (int)RuleExceptionCodeUserManagement.EmailExits);

                BRule.Assert(!filter.ReportFilter.PhoneNumber.IsNullOrEmpty(),
                    RuleExceptionCodeUserManagement.InvalidMoileNumber.GetEnumDescription(),
                    (int)RuleExceptionCodeUserManagement.InvalidMoileNumber);


                Mapper.CreateMap<UserManagementUpdateFilter, IdentityModels.ApplicationUser>()
                    .ForMember(dest => dest.CreateDate,
                        opt => opt.MapFrom(src => DateTime.Now))
                    .ForMember(dest => dest.Status, opt => opt.MapFrom(src => (int)src.Status))
                    .ForMember(dest => dest.Id, opt => opt.Ignore())
                    .ForMember(dest => dest.UserName, opt => opt.Ignore())
                    .ForMember(dest => dest.PasswordHash,
                        opt =>
                            opt.Ignore());


                var result = Mapper.Map(filter.ReportFilter,
                    user);

                AuthenticationManager.AuthenticationProvider.UserManager.Update(result);

                var currentRole = AuthenticationManager.AuthenticationProvider.UserManager.GetRoles(user.Id);

                if (currentRole != null)
                {
                    AuthenticationManager.AuthenticationProvider.UserManager.RemoveFromRoles(user.Id,
                        currentRole.ToArray());

                    if (filter.ReportFilter.RolesCodeList != null)
                        AuthenticationManager.AuthenticationProvider.UserManager.AddToRoles(user.Id,
                            filter.ReportFilter.RolesCodeList.ToArray());
                }
                else
                {
                    if (filter.ReportFilter.RolesCodeList != null)
                        AuthenticationManager.AuthenticationProvider.UserManager.AddToRoles(user.Id,
                            filter.ReportFilter.RolesCodeList.ToArray());
                }

                var party = PartyProvider.GetByUserName(filter.ReportFilter.UserName);
                var partyBranch = PartyBranchService.GetAll().FirstOrDefault(x => x.PartyId == party.Id && x.ValidUntil == null);
                //TODO update branch
                //PartyProvider.GetByNationalId()

                var dbFactory = CoreContainer.Container.Resolve<IDbFactory>();
                using (var uow = dbFactory.Create<IUnitOfWork, ISession>(IsolationLevel.Serializable))
                {

                    try
                    {
                        partyBranch.ValidUntil = DateTime.Now;
                        partyBranch.ModifiedBy = filter.AuthenticatedUserName;
                        PartyBranchService.SaveOrUpdate(partyBranch, uow);

                       
                    }
                    catch (Exception ex)
                    {
                        uow.Rollback();
                        throw;
                    }

                }
            }
            catch
                (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }
        }

        public void AddUser(UserManagementAddFilter model)
        {
            var addedUser = new IdentityModels.ApplicationUser();
            try
            {
                BRule.Assert(model != null, RuleExceptionCodeCommon.FilterIsNull.GetEnumDescription(),
                    (int)RuleExceptionCodeCommon.FilterIsNull);

                BRule.Assert(model.UserName != null,
                    RuleExceptionCodeUserManagement.InvalidUserName.GetEnumDescription(),
                    (int)RuleExceptionCodeUserManagement.InvalidUserName);

                BRule.Assert(model.DisplayName != null,
                    RuleExceptionCodeUserManagement.DisplayNameIsNull.GetEnumDescription(),
                    (int)RuleExceptionCodeUserManagement.DisplayNameIsNull);

                var user =
                    AuthenticationManager.AuthenticationProvider.UserManager.FindByName(model.UserName);

                BRule.Assert(user == null,
                    RuleExceptionCodeUserManagement.UserNameExists.GetEnumDescription(),
                    (int)RuleExceptionCodeUserManagement.UserNameExists);

                var ifExistEmail = AuthenticationManager.AuthenticationProvider.UserManager.FindByEmail(model.Email);

                BRule.Assert(ifExistEmail == null,
                    RuleExceptionCodeUserManagement.EmailExits.GetEnumDescription(),
                    (int)RuleExceptionCodeUserManagement.EmailExits);


                AuthenticationManager.AuthenticationProvider.UserManager.PasswordValidator = new PasswordValidator
                {
                    RequireDigit = false,
                    RequireLowercase = false,
                    RequireNonLetterOrDigit = false,
                    RequireUppercase = false,
                    RequiredLength = 5
                };
                BRule.Assert(model.Password.Equals(model.ConfirmPassword),
                    RuleExceptionCodeUserManagement.ConfirmPasswordDontMatch.GetEnumDescription(),
                    (int)RuleExceptionCodeUserManagement.ConfirmPasswordDontMatch);
                BRule.Assert(
                    AuthenticationManager.AuthenticationProvider.UserManager.PasswordValidator.ValidateAsync(
                        model.Password).Result.Succeeded,
                    RuleExceptionCodeUserManagement.PasswordisInvalid.GetEnumDescription(),
                    (int)RuleExceptionCodeUserManagement.PasswordisInvalid);

                Mapper.CreateMap<UserManagementAddFilter, IdentityModels.ApplicationUser>()
                    .ForMember(dest => dest.CreateDate,
                        opt => opt.MapFrom(src => DateTime.Now))
                    .ForMember(dest => dest.Id, opt => opt.Ignore())
                    .ForMember(dest => dest.PasswordHash,
                        opt =>
                            opt.Ignore())
                    .ForMember(x => x.EmailConfirmed, y => y.UseValue(true))
                    .ForMember(x => x.PhoneNumberConfirmed, y => y.UseValue(true))
                    .ForMember(x => x.Status, y => y.UseValue(1))
                    .ForMember(x => x.LockoutEnabled, y => y.UseValue(false));
                var result = Mapper.Map<UserManagementAddFilter, IdentityModels.ApplicationUser>(model);

                result.LockoutEnabled = false;

                AuthenticationManager.AuthenticationProvider.UserManager.Create(result, model.Password);
                addedUser =
                      AuthenticationManager.AuthenticationProvider.UserManager.FindByName(model.UserName);
                var dbFactory = CoreContainer.Container.Resolve<IDbFactory>();
                using (var uow = dbFactory.Create<IUnitOfWork, ISession>(IsolationLevel.Serializable))
                {
                    try
                    {
                        switch (model.PartyType)
                        {
                            case PartyType.Retail:
                            {
                                PartyProvider.Save(new RetailParty()
                                {
                                    Created = DateTime.Now,
                                    Modified = DateTime.Now,
                                    CreatedBy = model.AuthenticatedUserName,
                                    ModifiedBy = model.AuthenticatedUserName,
                                    FullName = model.DisplayName,
                                    UserName = addedUser.UserName,
                                    UserId = addedUser.Id,

                                }, uow);
                                    break;
                            }
                            case PartyType.Institutional:
                            {
                                LegalPartyProvider.Save(new LegalParty()
                                {
                                    Created = DateTime.Now,
                                    Modified = DateTime.Now,
                                    CreatedBy = model.AuthenticatedUserName,
                                    ModifiedBy = model.AuthenticatedUserName,
                                    UserName = addedUser.UserName,
                                    UserId = addedUser.Id,
                                    CompanyName = model.DisplayName

                                }, uow);

                                    break;
                            }
                            default:
                                break;
                        }
                       
                    }
                    catch (Exception)
                    {

                        uow.Rollback();
                    }

                }
            }
            catch (Exception ex)
            {

                AuthenticationManager.AuthenticationProvider.UserManager.Delete(addedUser);

                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
        public void AddRoles(BaseReportFilter<AddRoleFilter> model)
        {
            try
            {

                BRule.Assert(model.ReportFilter.RoleName != null,
                    RuleExceptionCodeUserManagement.InvalidUserName.GetEnumDescription(),
                    (int)RuleExceptionCodeUserManagement.InvalidUserName);


                if (AuthenticationManager.AuthenticationProvider.RoleManager.FindByName(model.ReportFilter.RoleName) ==
                    null)
                    AuthenticationManager.AuthenticationProvider.CreateRole(model.ReportFilter.RoleName);
            }
            catch (Exception e)
            {

                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        /// <summary>
        /// AMSTS-17 2017-5-7
        /// </summary>
        /// <param name="filter"></param>
        /// <returns></returns>

        public List<Domain.DTO.UserManagement> GetUsersByFilter(BaseReportFilter<Domain.DTO.UserManagement> filter)
        {
            try
            {


                //var model = AuthenticationManager.AuthenticationProvider.GetApplicationUsers();
                //var result = model.Select(x => new Domain.DTO.UserManagement
                //{
                //    UserName = x.UserName,
                //    DisplayName = x.DisplayName,
                //    Email = x.Email,
                //    CreateDate = x.CreateDate.ConvertMiladiToJalali(),
                //    PhoneNumber = x.PhoneNumber,
                //    Status = (UserStatus)x.Status,
                //    RoleId = x.RoleId

                //});

                var result = UserManagementService.GetUserManagements();

                return result.ToList();
            }
            catch (Exception ex)
            {

                throw ex;
            }


        }
    }
}