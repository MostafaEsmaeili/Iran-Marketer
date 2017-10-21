using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Kendo.Mvc;
using Kendo.Mvc.Extensions;
using Kendo.Mvc.UI;
using Newtonsoft.Json;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository.Pagination;
using RestSharp;
using IranMarketer.App.Attrebute;
using IranMarketer.App.Component.Helper;
using IranMarketer.App.Component.Model;
using IranMarketer.App.Component.Provider;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.BusinessRuleHelper;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.Domain.Filters;
using Party = IranMarketer.Domain.Entity.Party;

namespace IranMarketer.App.Controllers
{
    public class PartyController : BaseController
    {
       
        // GET: Customer
        //[AccessToken]

        public ActionResult RetailInvestor(CustomerModel model)
        {
            if (model == null)
            {
                model = new CustomerModel();
            }
            if (model.Customer == null)
            {
                model.Customer = new Customer();
            }
            return View(model);
        }
        //[AccessToken]

        public ActionResult InstitutionalInvestor(CustomerModel model)
        {
            if (model == null)
            {
                model = new CustomerModel();
            }
            if (model.Customer == null)
            {
                model.Customer = new Customer();
            }
            return View(model);
        }



        public ActionResult RegisterRetailInvestor(CustomerModel model)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.CustomerApi + "SaveCustomer", Method.POST);
                model.Customer.Party.PartyTypeEnum = PartyType.Retail;
                var requestObj = new ApiRequest<Customer> { Entity = model.Customer };
                var json = JsonConvert.SerializeObject(requestObj);
                req.AddParameter("application/json; charset=utf-8", json, ParameterType.RequestBody);
                var res = req.Exec<ApiResponse<long>>(this);

                //TODO : notification


                if (res.Data.BRuleCode == (int)RuleExceptionCodeCommon.ValidResult)
                {
                    TempData["Success"] = RuleExceptionCodeCommon.ValidResult.GetEnumDescription();
                    return RedirectToAction("RetailInvestor");
                }
                TempData["Error"] = res.Data.Message;
                return RedirectToAction("RetailInvestor");
            }
            catch (Exception ex)
            {
                TempData["Error"] = BusinessRuleHelper.GetException(ex);
                return RedirectToAction("RetailInvestor");
            }
        }


        public ActionResult RegisterInstitutionalInvestor(CustomerModel model)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.CustomerApi + "SaveCustomer", Method.POST);
                model.Customer.Party.PartyTypeEnum = PartyType.Institutional;
                var requestObj = new ApiRequest<Customer> { Entity = model.Customer };
                var json = JsonConvert.SerializeObject(requestObj);
                req.AddParameter("application/json; charset=utf-8", json, ParameterType.RequestBody);
                var res = req.Exec<ApiResponse<long>>(this);


                if (res.Data.BRuleCode == (int)RuleExceptionCodeCommon.ValidResult)
                {
                    TempData["Success"] = RuleExceptionCodeCommon.ValidResult.GetEnumDescription();
                    return RedirectToAction("InstitutionalInvestor");
                }
                TempData["Error"] = res.Data.Message;
                return RedirectToAction("InstitutionalInvestor");
            }
            catch (Exception ex)
            {
                TempData["Error"] = BusinessRuleHelper.GetException(ex);
                return RedirectToAction("InstitutionalInvestor");
            }
        }

        public ActionResult GetPartyByFilter(string text="",int? roleId=null)
        {
            try
            {
                RestRequest req = null;
                req = Request.QueryString["roleId"] == null
                    ? ApiHelper.Request(ApiAddressProvider.PartyApi + "GetAllParties", Method.POST)
                    : ApiHelper.Request(ApiAddressProvider.PartyApi + "GetAllPartiesByRole", Method.POST);
                var requestObj = new BaseReportFilter<SearchPartyFilter>
                {
                    ReportFilter = new SearchPartyFilter
                    {
                        Pharse = text,
                        RoleCode = roleId.Value
                    }
                };

                req.AddJsonBody(requestObj);
                var res = req.Exec<ApiPagedCollectionResponse<Party>>(this);

                return Json(res.Data.Result, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {

                return Json(new ApiResponse<object>
                {
                    BRuleCode = 1,
                    Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

                });
            }
        }
             

        public ActionResult GetCustomerAutoCompleteFilter([DataSourceRequest] DataSourceRequest request)
        {
            try
            {
                var text = "";
                if (request.Filters.Count > 0)
                {
                    text = (((FilterDescriptor)(request.Filters[0])).Value).ToString();
                    request.Filters.RemoveAt(0);
                }

                if (string.IsNullOrEmpty(text))
                {
                    text = "";
                }
                var req = ApiHelper.Request(ApiAddressProvider.PartyApi + "GetAllParties", Method.POST);
                var requestObj = new BaseReportFilter<SearchPartyFilter>
                {
                    ReportFilter = new SearchPartyFilter()
                    {
                        Pharse = text
                    }
                };

                req.AddJsonBody(requestObj);
                var res = req.Exec<ApiPagedCollectionResponse<Party>>(this);
                var mapped = res.Data.Result.Select(ObjectMapper.BaseConverter.ConvertSourceToDest<Party, PartyModel>);

                return Json(mapped.ToDataSourceResult(request), JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {

                return Json(new ApiResponse<object>
                {
                    BRuleCode = 1,
                    Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

                });
            }
        }

        //[AccessToken]
        public ActionResult Customers()
        {
            return View();
        }

      


        public ActionResult GetFlatAllCustomers([DataSourceRequest] DataSourceRequest reques, FlatPartySearchModel model)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.CustomerApi + "GetFlatCustomers", Method.POST);


                var filter = new FlatCustomerReportFilter
                {
                    PartyType = model.PartyType,
                    RegionId = model.RegionId,
                    PartyId = model.PartyId,
                    BranchId = model.BranchId,
                    NamePhrase = model.NamePhrase,
                    DateFilter = new DateFilter
                    {
                       

                    },
                    PageSize = reques.PageSize,
                    PageIndex = reques.Page
                };
                var lstSort = new List<Sort>();
                if (reques.Sorts != null)
                {
                    lstSort = reques.Sorts.Select(x => new Sort
                    {
                        dir = x.SortDirection == ListSortDirection.Ascending ? "ASC" : "Desc",
                        field = x.Member.Split('.')[x.Member.Split('.').Length - 1]
                    }).ToList();
                }

                var optionalfilter = new OptionalFilter
                {
                    page = reques.Page,
                    take = reques.PageSize,
                    sort = lstSort
                };
                req.AddJsonBody(new BaseReportFilter<FlatCustomerReportFilter>
                {
                    ReportFilter = filter,
                    OptionalFilter = optionalfilter

                });
                var res = req.Exec<ApiPagedCollectionResponse<Customer>>(this);
                //var final = res.Data.Result.ToDataSourceResult(reques);
                //final.Total = (int)res.Data.TotalRecords;
                return Json(res.Data, JsonRequestBehavior.AllowGet);
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

        [HttpGet]
        public ActionResult UpdateCustomer(long id)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.CustomerApi + "GetCustomerById", Method.POST);
                var request = new ApiRequest<long> { Entity = id };
                req.AddJsonBody(request);
                var res = req.Exec<ApiResponse<Customer>>(this);
                var customer = res.Data.Result;
                //TODO : notification
                if (customer.Party.PartyTypeEnum == PartyType.Retail)
                {
                    return View("UpdateRetailInvestor", new CustomerModel
                    {
                        Customer = customer
                    });
                }
                else
                {
                    return View("UpdateInstitutionalInvestor", new CustomerModel
                    {
                        Customer = customer
                    });
                }

            }

            catch (Exception ex)
            {

                return null;
            }
        }

        public ActionResult UpdateRetailInvestor(CustomerModel model)
        {
            if (model == null)
            {
                model = new CustomerModel();
            }
            if (model.Customer == null)
            {
                model.Customer = new Customer();
            }
            return View(model);
        }

        [HttpPost]
        public ActionResult UpdateRetailInvestors(CustomerModel model)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.CustomerApi + "UpdateCustomer", Method.POST);
                model.Customer.Party.PartyTypeEnum = PartyType.Retail;
                var requestObj = new ApiRequest<Customer> { Entity = model.Customer };
                var json = JsonConvert.SerializeObject(requestObj);
                req.AddParameter("application/json; charset=utf-8", json, ParameterType.RequestBody);
                var res = req.Exec<ApiResponse<long>>(this);

                //TODO : notification


                if (res.Data.BRuleCode == (int)RuleExceptionCodeCommon.ValidResult)
                {
                    TempData["Success"] = RuleExceptionCodeCommon.ValidResult.GetEnumDescription();
                    return RedirectToAction("UpdateRetailInvestor");
                }
                TempData["Error"] = res.Data.Message;
                return RedirectToAction("UpdateRetailInvestor");
            }
            catch (Exception ex)
            {

                TempData["Error"] = BusinessRuleHelper.GetException(ex);
                return RedirectToAction("UpdateRetailInvestor", model);
            }
        }


        public ActionResult UpdateInstitutionalInvestor(CustomerModel model)
        {
            if (model == null)
            {
                model = new CustomerModel();
            }
            if (model.Customer == null)
            {
                model.Customer = new Customer();
            }
            return View(model);
        }


        [HttpPost]
        public ActionResult UpdateInstitutionalInvestors(CustomerModel model)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.CustomerApi + "UpdateCustomer", Method.POST);
                model.Customer.Party.PartyTypeEnum = PartyType.Institutional;
                var requestObj = new ApiRequest<Customer> { Entity = model.Customer };
                var json = JsonConvert.SerializeObject(requestObj);
                req.AddParameter("application/json; charset=utf-8", json, ParameterType.RequestBody);
                var res = req.Exec<ApiResponse<long>>(this);

                //TODO : notification


                if (res.Data.BRuleCode == (int)RuleExceptionCodeCommon.ValidResult)
                {
                    TempData["Success"] = RuleExceptionCodeCommon.ValidResult.GetEnumDescription();
                    return RedirectToAction("UpdateInstitutionalInvestor");
                }
                TempData["Error"] = res.Data.Message;
                return RedirectToAction("UpdateInstitutionalInvestor");
            }
            catch (Exception ex)
            {

                TempData["Error"] = BusinessRuleHelper.GetException(ex);
                return RedirectToAction("UpdateInstitutionalInvestor");
            }
        }


        //[AccessToken]
        public ActionResult PartyRoles()
        {
            var model = new PartyRole();
            return View("PartyRoleAssign", model);
        }

        //[AccessToken]
        public ActionResult SavePartyRole(PartyRole role)
        {

            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.PartyApi + "SaveOrUpdatePartyRoles", Method.POST);
                req.AddJsonBody(new ApiRequest<PartyRole>
                {
                    Entity = role
                });
                var res = req.Exec<ApiResponse<object>>(this);
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

        public JsonResult GetAllPartyRoles([DataSourceRequest] DataSourceRequest request)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.PartyApi + "GetAllPartyRoles", Method.POST);

                var res = req.Exec<ApiResponse<List<PartyRole>>>(this);

                return Json(res.Data.Result.ToDataSourceResult(request));
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


        public ActionResult CustomerView(long id)
        {
            try
            {
                if (id <= 0)
                {
                    return View(new CustomerModel() { Customer = new Customer() });
                }
                var req = ApiHelper.Request(ApiAddressProvider.CustomerApi + "GetCustomerById", Method.POST);
                var request = new ApiRequest<long> { Entity = id };
                req.AddJsonBody(request);
                var res = req.Exec<ApiResponse<Customer>>(this);
                var customer = res.Data.Result;

                var customerModel = new CustomerModel { Customer = customer };
                return View(customerModel);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

    }
}