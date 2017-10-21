using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Kendo.Mvc.Extensions;
using Kendo.Mvc.UI;
using Pikad.Framework.Infra.Utility;
using RestSharp;
using IranMarketer.App.Component.Helper;
using IranMarketer.App.Component.Model;
using IranMarketer.App.Component.Provider;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.Domain.Filters;
using VoucherDetail = IranMarketer.Domain.DTO.VoucherDetail;
using VoucherMaster = IranMarketer.Domain.DTO.VoucherMaster;

namespace IranMarketer.App.Controllers
{
    public class VoucherController : BaseController
    {
        // GET: Voucher
        private static VoucherModel _tempVoucher = new VoucherModel();
        public ActionResult Vouchers()
        {
            return View();
        }

        public ActionResult VoucherExcelReport()
        {
            return View("Vouchers");
        }

        public ActionResult GetFlatAllVouchers([DataSourceRequest] DataSourceRequest reques, FlatVoucherMasterSearchModel model)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.VoucherMasterApi + "GetFlatVoucherMasters", Method.POST);


                var filter = new FlatVoucherMasterReportFilter
                {
                    VoucherMasterId = model.VoucherMasterId,
                    VoucherNumber = model.VoucherNumber,
                    BranchId = model.BranchId,
                    DateFilter = new DateFilter
                    {
                        EndDate = CustomExtention.ConvertJalaliToMiladi(model.ToDate)
                            .GetValueOrDefault(DateTime.Now.AddDays(3)).RemoveMinutes(), 
                        StartDate = CustomExtention.ConvertJalaliToMiladi(model.FromDate)
                            .GetValueOrDefault(DateTime.Now.AddDays(-366).RemoveMinutes()), 

                    },
                    FiscalYearId = model.FiscalYearId,
                    PageSize = reques.PageSize,
                    PageIndex = reques.Page
                };

                if (model.VoucherCategoryEnum > 0)
                {
                    filter.VoucherCategoryEnum = ((VoucherCategoryEnum) model.VoucherCategoryEnum);
                }
                if (model.VoucherInsertMode > 0)
                {
                    filter.VoucherInsertMode = ((VoucherInsertMode)model.VoucherInsertMode);
                }
                var lstSort = new List<Sort>();
                if (reques.Sorts != null)
                {
                    lstSort = reques.Sorts.Select(x => new Sort
                    {
                        dir = x.SortDirection == ListSortDirection.Ascending ? "ASC" : "Desc",
                        field = x.Member.Split('.')[x.Member.Split('.').Length - 1]
                    }).ToList();
                    foreach (var sitem in lstSort)
                    {
                        if (sitem.field.ToLower() == "description")
                        {
                            sitem.field = "VouhcerMasterDescription";
                        }
                        if (sitem.field.ToLower() == "id")
                        {
                            sitem.field = "VoucherMasterId";
                        }
                    }
                }

                

                var optionalfilter = new OptionalFilter
                {
                    page = reques.Page,
                    take = reques.PageSize,
                    sort = lstSort
                };
                req.AddJsonBody(new BaseReportFilter<FlatVoucherMasterReportFilter>
                {
                    ReportFilter = filter,
                    OptionalFilter = optionalfilter

                });
                var res = req.Exec<ApiPagedCollectionResponse<VoucherMaster>>(this);
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

        public ActionResult ViewVoucherDetails(long vid, int? fid)
        {
            try
            {
                if (fid == null)
                {
                    fid = -1;
                }
                if (vid <= 0)
                {
                    return View(new IranMarketer.Domain.DTO.VoucherDetail()
                    {
                        VoucherMasterCategory = (int)VoucherCategoryEnum.General,
                        VoucherInsertMode = (int)VoucherInsertMode.Automatic,
                        VoucherMasterState = (int)VoucherMasterState.Temp
                    });
                }
                var req = ApiHelper.Request(ApiAddressProvider.VoucherDetailApi + "GetFlatVoucherDetailsByVoucehrId", Method.POST);
                var filter = new FlatVoucherDetailViewReportFilter
                {
                    VoucherMasterId = vid,
                    FiscalYearId = fid,
                    PageSize = 1,
                    PageIndex = 1
                };
                var optionalfilter = new OptionalFilter
                {
                    page = 1,
                    take = 1,
                    sort = null
                };
                req.AddJsonBody(new BaseReportFilter<FlatVoucherDetailViewReportFilter>
                {
                    ReportFilter = filter,
                    OptionalFilter = optionalfilter

                });
                var res = req.Exec<ApiPagedCollectionResponse<VoucherDetail>>(this);
                return View(res.Data.Result.FirstOrDefault());
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public ActionResult GetFlatVoucherDetails([DataSourceRequest] DataSourceRequest reques, long? vid, int? fid)
        {
            try
            {
                var req = ApiHelper.Request(ApiAddressProvider.VoucherDetailApi + "GetFlatVoucherDetailsByVoucehrId", Method.POST);
                var filter = new FlatVoucherDetailViewReportFilter
                {
                    VoucherMasterId = vid.SafeLong(),
                    FiscalYearId = fid,
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
                req.AddJsonBody(new BaseReportFilter<FlatVoucherDetailViewReportFilter>
                {
                    ReportFilter = filter,
                    OptionalFilter = optionalfilter

                });
                var res = req.Exec<ApiPagedCollectionResponse<VoucherDetail>>(this);
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

       
        public ActionResult ManualVoucher()
        {
            _tempVoucher=new VoucherModel();
            return View();
        }
        public ActionResult GetTempVoucherDetails([DataSourceRequest] DataSourceRequest reques)
        {
            try
            {
                return Json(_tempVoucher.VoucherDetails.ToDataSourceResult(reques), JsonRequestBehavior.AllowGet);
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
        public ActionResult AddTempVoucherDetail(VoucherDetailModel model)
        {
            try
            {
                model.Created=DateTime.Now;
     
                model.Modified=DateTime.Now;
                
               _tempVoucher.AddVoucherDetailRow(model);
                return Json(new ApiResponse<object>
                {
                    BRuleCode = (int) RuleExceptionCodeCommon.ValidResult,
                    Message = RuleExceptionCodeCommon.ValidResult.GetEnumDescription()

                });

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

        //public ActionResult AddVoucher(VoucherMasterModel model)
        //{

        //    try
        //    {


        //        var fiscalYearRequest = ApiHelper.Request(ApiAddressProvider.FiscalYearApi + "GetFiscalYear", Method.POST);
        //        fiscalYearRequest.AddJsonBody(new ApiRequest<DateTime>
        //        {
        //            Entity = model.VoucherDate.IsValidPersianDate() ? Extention.ConvertJalaliToMiladi(model.VoucherDate).Date : DateTime.Now,
        //        });
        //        var fiscalYearResult = fiscalYearRequest.Exec<ApiResponse<FiscalYear>>(this);


        //        if (fiscalYearResult.Data.Result==null)
        //        {
        //            return Json(new ApiResponse<object>
        //            {
        //                BRuleCode = 1,
        //                Message ="سال مالی نا معتبر است."

        //            });
        //        }

        //        var req = ApiHelper.Request(ApiAddressProvider.VoucherApi + "SaveManualVoucher", Method.POST);
        //        var filter = new ApiRequest<Domain.Entity.Voucher>
        //        {
        //            Entity = new Voucher
        //            {
        //                VoucherMasterIsRequired = true,
        //                CurrentRowNumber = _tempVoucher.CurrentRowNumber,
                       
        //                VoucherMaster=new Domain.Entity.VoucherMaster
        //                {
        //                    Description = model.Description,
        //                    Created =DateTime.Now,
        //                    Modified = DateTime.Now,
        //                   FiscalYearId = fiscalYearResult.Data.Result.Id,
        //                    VoucherDate = model.VoucherDate.IsValidPersianDate()? Extention.ConvertJalaliToMiladi(model.VoucherDate):DateTime.Now,
        //                    InsertMode = (int) VoucherInsertMode.Manual,
        //                    VoucherCategoryId = (int) VoucherCategoryEnum.General,
        //                    VoucherStateId = (int) VoucherMasterState.Temp,
        //                },
        //                VoucherDetails = _tempVoucher.VoucherDetails.Select(ObjectMapper.BaseConverter.ConvertSourceToDest<VoucherDetailModel,Domain.Entity.VoucherDetail>).ToList()

        //            }
        //        };

        //        if(!_tempVoucher.IsValidate())
        //            return Json(new ApiResponse<object>
        //            {
        //                BRuleCode = 1,
        //                Message ="جمع مبالغ بستانکار و بدهکار یکسان نیست"

        //            });

        //        req.AddJsonBody(filter);
        //        var res = req.Exec<ApiResponse<long>>(this);

        //        if(res.Data.BRuleCode==(int) RuleExceptionCodeCommon.ValidResult)
        //                        _tempVoucher=new VoucherModel();

        //        return Json(res.Data);
        //    }
        //    catch (Exception e)
        //    {

        //        return Json(new ApiResponse<object>
        //        {
        //            BRuleCode = 1,
        //            Message = RuleExceptionCodeCommon.OtherError.GetEnumDescription()

        //        });
        //    }
        //}

    }
}