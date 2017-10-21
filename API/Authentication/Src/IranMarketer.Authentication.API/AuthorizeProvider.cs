using System;
using System.Collections.Generic;
using System.Linq;
using Castle.Core.Internal;
//using Microsoft.Ajax.Utilities;
//using Microsoft.AspNet.Identity;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Infra.Validation;
using Pikad.Framework.Repository.IoC;
using IranMarketer.Common;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.DTO.ServiceAcces;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.Domain.Filters;
using IranMarketer.UserManagement;
using FlatServiceAccess = IranMarketer.Domain.DTO.ServiceAcces.FlatServiceAccess;


namespace IranMarketer.Authentication
{
    public class AuthorizeProvider : BaseProvider
    {
        public CustomLogger Logger => new CustomLogger(GetType().FullName);
        public IServiceAccessService ServiceAccessService => CoreContainer.Container.Resolve<IServiceAccessService>();
        public IServiceRepositoryService ServiceRepositoryService => CoreContainer.Container.Resolve<IServiceRepositoryService>();
        private static IServiceAccessService AccessService => CoreContainer.Container.Resolve<IServiceAccessService>();

        private IPageRepositoryService PageRepositoryService =>
            CoreContainer.Container.Resolve<IPageRepositoryService>();
        public void AddApiToServiceRepository(ServiceRepository repository)
        {
            try
            {
                if (ServiceRepositoryService.GetServiceRepository(repository.ServiceName, repository.MethodName) == null)
                {
                    repository.MethodName = repository.MethodName.Substring(repository.MethodName.IndexOf("api"));
                    ServiceRepositoryService.SaveServiceRepository(repository);
                    //var id = ServiceRepositoryService.GetServiceRepository(repository.ServiceName, repository.MethodName).Id;
                    //var customersRo
                    //    le =
                    //    AuthenticationManager.AuthenticationProvider.RoleManager
                    //        .FindByName(Role.PortalCustomer.ToString());
                    //ServiceAccessService.SaveAccess(new ServiceAccess
                    //{
                    //    Allow = true,
                    //    ApplicationId = (int)Applications.AmsPortal,
                    //    LastUpdate = DateTime.Now,
                    //    RoleId = customersRole.Id,
                    //    ServiceRepositoryId = id,
                    //});
                }
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }
        }

        public bool IsAccess(string controllerName, string apiAddress, string userId, string roleId, string clientId)
        {
            try
            {
                apiAddress = apiAddress.Substring(apiAddress.IndexOf("/api") + 1);
                var service = ServiceRepositoryService.GetServiceRepository(controllerName, apiAddress);
                if (service == null)
                {
                    return false;
                }
                var access = ServiceAccessService.IsAccess(roleId, userId, service.Id,
                    (int)clientId.ParseEnum(Applications.UnKnown));
                return access;
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                return false;
            }
        }
        public bool IsAccessByEmailAddress(string controllerName, string apiAddress, string email, string roleId, string clientId)
        {
            try
            {
                apiAddress = apiAddress.Substring(apiAddress.IndexOf("/api") + 1);
                var service = ServiceRepositoryService.GetServiceRepository(controllerName, apiAddress);
                if (service == null)
                {
                    return false;
                }
                var access = ServiceAccessService.IsAccessByUsername(roleId, email, service.Id,
                    (int)clientId.ParseEnum(Applications.UnKnown));
                return access;
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                return false;
            }
        }

        public List<ServiceRepositoryDto> GetAllServiceRepositories(BaseReportFilter<ReportFilter> filter)
        {
            try
            {
                var repo = ServiceRepositoryService.GetServiceRepositories();
                var model = repo.Select(x => new ServiceRepositoryDto
                {
                    Code = x.Code,
                    MethodName = x.MethodName,
                    ServiceName = x.ServiceName,
                    Title = x.Title
                }).ToList();
                return model;

            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;

            }
        }

        public void AddServiceRepository(BaseReportFilter<ServiceRepositoryDto> model)
        {
            try
            {
                BRule.Assert(
                    model.ReportFilter.Code != null && model.ReportFilter.MethodName != null &&
                    model.ReportFilter.ServiceName != null && model.ReportFilter.Title != null,
                    RuleExceptionCodeCommon.AllParametersAreRequired.GetEnumDescription(),
                    (int) RuleExceptionCodeCommon.AllParametersAreRequired);

                var repo = ServiceRepositoryService.GetServiceRepositories();
                var entity = new ServiceRepository
                {
                    Code = model.ReportFilter.Code,
                    MethodName = model.ReportFilter.MethodName,
                    ServiceName = model.ReportFilter.ServiceName,
                    Title = model.ReportFilter.Title
                };
                ServiceRepositoryService.Save(entity);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;

            }
        }
        public List<ApplicationUserDTO> GetUsers(string text)
        {
            try
            {
                var lst = AuthenticationManager.AuthenticationProvider.GetApplicationUsers();
                //var res = lst.Select(x => new
                //{
                //    Title = x.UserName,
                //    Value = x.UserName.ToString(),
                //    Alias = x.DisplayName
                //}).ToList();
                if (!string.IsNullOrEmpty(text))
                {
                    lst = lst.Where(p => p.UserName.Contains(text)).ToList();
                }
                return lst;
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }
        }

        //public List<ServiceAccessDto> GetAllServiceAccessByUserName(BaseReportFilter<ReportFilter> filter)
        //{
        //    try
        //    {
        //        var service = AccessService.GetServiceAccesses().Where(x => x.UserId != null && x.Allow = true);

        //        foreach (var serviceAccess in service)
        //        {


        //        }


        //        var result = service.Select(t =>
        //            {
        //                var serviceRep =
        //                    RepositoryService.GetServiceRepositories()
        //                        .FirstOrDefault(x => x.Id == t.ServiceRepositoryId);
        //                return new ServiceAccessDto
        //                {
        //                    Allow = t.Allow,
        //                    Id = t.Id,
        //                    UserName =
        //                        !t.UserId.IsNullOrEmpty()
        //                            ? AuthenticationManager.AuthenticationProvider.UserManager.FindByIdAsync(t.UserId)
        //                                .Result.UserName
        //                            : null,
        //                    LastUpdate = t.LastUpdate.ConvertMiladiToJalali(),
        //                    RoleName =
        //                        AuthenticationManager.AuthenticationProvider.RoleManager.FindByIdAsync(t.RoleId)
        //                            .Result?.Name,
        //                    ControllerName = serviceRep?.ServiceName,
        //                    MethodNameEn = serviceRep?.MethodName,
        //                    MethodNameFa = serviceRep?.Title,
        //                    Code = serviceRep?.Code,
        //                    ApplicationTitle = ((Applications)t.ApplicationId).ToString()
        //                };
        //            }
        //        );

        //        return result.ToList();
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.ErrorException(ex.Message, ex);
        //        throw;
        //    }
        //}

        //public void UpdateAccess(BaseReportFilter<ServiceAccessUpdateFilter> model)
        //{
        //    try
        //    {
        //        foreach (var access in model.ReportFilter.AccessDtos)
        //        {
        //            BRule.Assert(access.Allow != null && access.Id > 0,
        //                RuleExceptionCode.AllParametersAreRequired.GetEnumDescription(),
        //                (int)RuleExceptionCode.AllParametersAreRequired);

        //            AccessService.UpdateAccess(new ServiceAccess
        //            {
        //                Id = access.Id,
        //                Allow = access.Allow,
        //                LastUpdate = DateTime.Now
        //            });
        //        }

        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.ErrorException(ex.Message, ex);
        //        throw ex;
        //    }
        //}


        public void AddServiceAccessByUserNameAndPage(BaseReportFilter<ServiceAccessAddFilter> filter)
        {
            try
            {
                BRule.Assert((bool)!filter?.ReportFilter?.UserNames?.FirstOrDefault().IsNullOrEmpty(),
                    RuleExceptionCodeCommon.AllParametersAreRequired.GetEnumDescription(),
                    (int)RuleExceptionCodeCommon.AllParametersAreRequired);


                ServiceAccessService.AddServiceAccessByUserNameAndPage(filter.ReportFilter.UserNames.FirstOrDefault(),
                    null, Applications.IranMarketerFund);
            }
            catch (Exception e)
            {

                Logger.ErrorException(e.Message, e);
                throw;
            }


        }

        public void GetAccesseblePagesByRoleName(string roleName, Applications applications)
        {

            try
            {
                //var setviceAvvrss=ServiceAccessService.
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message,ex);
                throw;
            }
        }

        public List<FlatServiceAccess> GetAllPageAccessBasedOnRoles(Applications applications)
        {
            try
            {
                var res = new List<FlatServiceAccess>();
                var allPage = Enum.GetValues(typeof(PageType)).Cast<PageType>().ToList();
                var serviceAccess = ServiceAccessService.GetFlatServiceAccessBasedOnRoles(applications);
                foreach (var p in serviceAccess.DistinctBy(x => x.PageType).GroupBy(x => new { x.RoleId }))
                {
                    var pageInDb = new FlatServiceAccess
                    {
                        RoleId = p.Key.RoleId,
                        RoleName = p.FirstOrDefault()?.RoleName,
                        PageTypes = p.ToList()

                    };
                    foreach (var pageType in allPage)
                    {
                        if (!pageInDb.PageTypes.Select(y => (PageType)y.PageType).Contains(pageType))
                        {
                            pageInDb.PageTypes.Add(new Domain.Entity.FlatServiceAccess
                            {
                                PageType = (int)pageType,
                                RoleId = p.Key.RoleId,
                                RoleName = p.FirstOrDefault()?.RoleName,
                                Allow = false,

                            });


                        }
                    }
                    res.Add(pageInDb);
                }


                return res;
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message,ex);
                throw;
            }
        }




        public void AddServiceAccessByRoleIdAndPage(BaseReportFilter<ServiceAccessAddFilter> filter)
        {
            try
            {
                BRule.Assert( filter?.ReportFilter?.ApplicationRole != null,
                    RuleExceptionCodeCommon.AllParametersAreRequired.GetEnumDescription(),
                    (int)RuleExceptionCodeCommon.AllParametersAreRequired);


                ServiceAccessService.AddServiceAccessByRoleIdAndPage(filter.ReportFilter.ApplicationRole.Id,
                    filter.ReportFilter.PageTypes, Applications.IranMarketerFund);
            }
            catch (Exception e)
            {

                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

    }
}