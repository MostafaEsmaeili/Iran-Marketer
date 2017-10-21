using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Pikad.Framework.Infra.Utility;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.BusinessRuleHelper;
using IranMarketer.Domain.Enum;
using IranMarketer.WebAPI.Models;
using Pikad.Framework.Infra.Logging;
using Swashbuckle.Swagger.Annotations;

namespace IranMarketer.WebAPI.Controllers.Common
{
    [System.Web.Http.RoutePrefix("api/common")]
    [System.Web.Http.AllowAnonymous]
    public class CommonController : ApiController
    {
        public CustomLogger Logger=>new CustomLogger(GetType().FullName);
        [System.Web.Http.Route("GetPersonalityRoleEnums")]
        [SwaggerResponse(HttpStatusCode.OK, "Return PersonalityRole.", typeof(PersonalityRole))]
        [System.Web.Http.HttpGet]
        public IHttpActionResult GetPersonalityRoleEnums()
        {
            ApiPagedCollectionResponse<EnumResponseDto> res;
            try
            {
                var personalityRoles = new List<PersonalityRole>()
                {
                    PersonalityRole.Auditor,
                    PersonalityRole.Customer,
                    PersonalityRole.Custodian,
                    PersonalityRole.Guarantor,
                    PersonalityRole.LiquidityGuarantor,
                    PersonalityRole.Manager,
                    PersonalityRole.MarketMakar,
                    PersonalityRole.ProfitGuarantor
                };

                var lsDtos = personalityRoles.Select(trType => new EnumResponseDto
                {
                    Code = ((int)trType).SafeString(),
                    Title = trType.SafeString()
                }).ToList();

                res = new ApiPagedCollectionResponse<EnumResponseDto>
                {
                    Result = lsDtos,
                    TotalRecords = lsDtos.Count,
                    Message = MessageResultEnum.OperationSuccessFullyDone.GetEnumDescription()
                };
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                res = new ApiPagedCollectionResponse<EnumResponseDto>
                {
                    Message = MessageResultEnum.OperationFailed.GetEnumDescription()
                };
                return Json(res);
            }
            return Json(res);
        }


        [System.Web.Http.Route("GetGenderEnum")]
        [SwaggerResponse(HttpStatusCode.OK, "Return Gender.", typeof(Gender))]
        [System.Web.Http.HttpGet]
        public IHttpActionResult GetGenderEnum()
        {
            ApiPagedCollectionResponse<EnumResponseDto> res;
            try
            {
                var genders = new List<Gender>()
                {
                    Gender.Female,
                    Gender.Male,
                    Gender.Unknown,
                };

                var lsDtos = genders.Select(trType => new EnumResponseDto
                {
                    Code = ((int)trType).SafeString(),
                    Title = trType.GetEnumDescription().SafeString()
                }).ToList();

                res = new ApiPagedCollectionResponse<EnumResponseDto>
                {
                    Result = lsDtos,
                    TotalRecords = lsDtos.Count,
                    Message = MessageResultEnum.OperationSuccessFullyDone.GetEnumDescription()
                };
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                res = new ApiPagedCollectionResponse<EnumResponseDto>
                {
                    Message = MessageResultEnum.OperationFailed.GetEnumDescription()
                };
                return Json(res);
            }
            return Json(res);
        }

        [System.Web.Http.Route("GetBranchTypeEnum")]
        [SwaggerResponse(HttpStatusCode.OK, "Return BranchType.", typeof(BranchType))]
        [System.Web.Http.HttpGet]
        public IHttpActionResult GetBranchTypeEnum()
        {
            ApiPagedCollectionResponse<EnumResponseDto> res;
            try
            {
                var branchTypes = new List<BranchType>()
                {
                    BranchType.Bank,
                    BranchType.Broker,
                    BranchType.InvestmentBank,
                    BranchType.Virtual
                };

                var lsDtos = branchTypes.Select(trType => new EnumResponseDto
                {
                    Code = ((int)trType).SafeString(),
                    Title = trType.GetEnumDescription().SafeString()
                }).ToList();

                res = new ApiPagedCollectionResponse<EnumResponseDto>
                {
                    Result = lsDtos,
                    TotalRecords = lsDtos.Count,
                    Message = MessageResultEnum.OperationSuccessFullyDone.GetEnumDescription()
                };
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                res = new ApiPagedCollectionResponse<EnumResponseDto>
                {
                    Message = MessageResultEnum.OperationFailed.GetEnumDescription()
                };
                return Json(res);
            }
            return Json(res);
        }

        [System.Web.Http.Route("GetBankAccountTypeEnum")]
        [SwaggerResponse(HttpStatusCode.OK, "Return BankAccountType.", typeof(BankAccountType))]
        [System.Web.Http.HttpGet]
        public IHttpActionResult GetBankAccountTypeEnum()
        {
            ApiPagedCollectionResponse<EnumResponseDto> res;
            try
            {
                var accountTypes = new List<BankAccountType>()
                {
                    BankAccountType.ShortTermDepositAccount,
                    BankAccountType.LongTermDepositAccount,
                    BankAccountType.CurrentAccount,
                    BankAccountType.DebitAccount
                };

                var lsDtos = accountTypes.Select(trType => new EnumResponseDto
                {
                    Code = ((int)trType).SafeString(),
                    Title = trType.GetEnumDescription().SafeString()
                }).ToList();

                res = new ApiPagedCollectionResponse<EnumResponseDto>
                {
                    Result = lsDtos,
                    TotalRecords = lsDtos.Count,
                    Message = MessageResultEnum.OperationSuccessFullyDone.GetEnumDescription()
                };
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                res = new ApiPagedCollectionResponse<EnumResponseDto>
                {
                    Message = MessageResultEnum.OperationFailed.GetEnumDescription()
                };
                return Json(res);
            }
            return Json(res);
        }

        [System.Web.Http.Route("GetEducationDegreeEnum")]
        [SwaggerResponse(HttpStatusCode.OK, "Return EducationDegree.", typeof(EducationDegree))]
        [System.Web.Http.HttpGet]
        public IHttpActionResult GetEducationDegreeEnum()
        {
            ApiPagedCollectionResponse<EnumResponseDto> res;
            try
            {
                var degrees = new List<EducationDegree>()
                {
                    EducationDegree.Unknown,
                    EducationDegree.UnderDiploma,
                    EducationDegree.Diploma,
                    EducationDegree.BachelorDegree,
                    EducationDegree.MasterDegree,
                    EducationDegree.PhD,
                };

                var lsDtos = degrees.Select(trType => new EnumResponseDto
                {
                    Code = ((int)trType).SafeString(),
                    Title = trType.GetEnumDescription().SafeString()
                }).ToList();

                res = new ApiPagedCollectionResponse<EnumResponseDto>
                {
                    Result = lsDtos,
                    TotalRecords = lsDtos.Count,
                    Message = MessageResultEnum.OperationSuccessFullyDone.GetEnumDescription()
                };
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                res = new ApiPagedCollectionResponse<EnumResponseDto>
                {
                    Message = MessageResultEnum.OperationFailed.GetEnumDescription()
                };
                return Json(res);
            }
            return Json(res);
        }



        [System.Web.Http.Route("GetJobPositionEnum")]
        [SwaggerResponse(HttpStatusCode.OK, "Return JobPosition.", typeof(JobPosition))]
        [System.Web.Http.HttpGet]
        public IHttpActionResult GetJobPositionEnum()
        {
            ApiPagedCollectionResponse<EnumResponseDto> res;
            try
            {
                var jobPositions = new List<JobPosition>()
                {
                    JobPosition.Unknown,
                    JobPosition.Expert,
                    JobPosition.MasterExpert,
                    JobPosition.Manager,
                    JobPosition.CEO,
                    JobPosition.MemberOfTheBoard
                };

                var lsDtos = jobPositions.Select(trType => new EnumResponseDto
                {
                    Code = ((int)trType).SafeString(),
                    Title = trType.GetEnumDescription().SafeString()
                }).ToList();

                res = new ApiPagedCollectionResponse<EnumResponseDto>
                {
                    Result = lsDtos,
                    TotalRecords = lsDtos.Count,
                    Message = MessageResultEnum.OperationSuccessFullyDone.GetEnumDescription()
                };
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                res = new ApiPagedCollectionResponse<EnumResponseDto>
                {
                    Message = MessageResultEnum.OperationFailed.GetEnumDescription()
                };
                return Json(res);
            }
            return Json(res);
        }

        [System.Web.Http.Route("GetJobTitleEnum")]
        [SwaggerResponse(HttpStatusCode.OK, "Return JobTitle.", typeof(JobTitle))]
        [System.Web.Http.HttpGet]
        public IHttpActionResult GetJobTitleEnum()
        {
            ApiPagedCollectionResponse<EnumResponseDto> res;
            try
            {
                var jobTitles = new List<JobTitle>()
                {
                    JobTitle.Unknown,
                    JobTitle.Employee,
                    JobTitle.SelfEmployed,
                    JobTitle.Worker,
                    JobTitle.Retired,
                    JobTitle.HouseWife

                };

                var lsDtos = jobTitles.Select(trType => new EnumResponseDto
                {
                    Code = ((int)trType).SafeString(),
                    Title = trType.GetEnumDescription().SafeString()
                }).ToList();

                res = new ApiPagedCollectionResponse<EnumResponseDto>
                {
                    Result = lsDtos,
                    TotalRecords = lsDtos.Count,
                    Message = MessageResultEnum.OperationSuccessFullyDone.GetEnumDescription()
                };
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                res = new ApiPagedCollectionResponse<EnumResponseDto>
                {
                    Message = MessageResultEnum.OperationFailed.GetEnumDescription()
                };
                return Json(res);
            }
            return Json(res);
        }




        [System.Web.Http.Route("GetPageTypeEnum")]
        [SwaggerResponse(HttpStatusCode.OK, "Return PageTypeEnum.", typeof(BankAccountType))]
        [System.Web.Http.HttpGet]
        public IHttpActionResult GetPageTypeEnum()
        {
            ApiPagedCollectionResponse<EnumResponseDto> res;
            try
            {
                var pageType = Enum.GetValues(typeof(PageType)).Cast<PageType>();

                var lsDtos = pageType.Select(trType => new EnumResponseDto
                {
                    Code = ((int)trType).SafeString(),
                    Title = trType.SafeString()
                }).ToList();

                res = new ApiPagedCollectionResponse<EnumResponseDto>
                {
                    Result = lsDtos,
                    TotalRecords = lsDtos.Count,
                    Message = MessageResultEnum.OperationSuccessFullyDone.GetEnumDescription()
                };
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                res = new ApiPagedCollectionResponse<EnumResponseDto>
                {
                    Message = MessageResultEnum.OperationFailed.GetEnumDescription(),
                    BRuleCode = BusinessRuleHelper.GetExceptionCode(ex)
                };
                return Json(res);
            }
            return Json(res);
        }
    }
}
