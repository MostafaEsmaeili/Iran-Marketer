using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IranMarketer.App.Attribute;
using IranMarketer.App.Helper;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.SharedData;
using IranMarketer.SharedData.Interface;
using Kendo.Mvc.Extensions;
using Kendo.Mvc.UI;
using Microsoft.AspNet.Identity;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository.IoC;
using JobPost = IranMarketer.Domain.DTO.JobPost;

namespace IranMarketer.App.Controllers
{
    [RetailPartyAuthenticationAttrebute]
    [SetLoggedInUserInformation]
    public class SearchForJobController : BaseController
    {
        // GET: SearchForJob
        public IJobPostService JobPostRepository => CoreContainer.Container.Resolve<IJobPostService>();
        public DocumentProvider DocumentProvider => CoreContainer.Container.Resolve<DocumentProvider>();

        public IJobRequestService JobRequestService => CoreContainer.Container.Resolve<IJobRequestService>();

        public ActionResult Index()
        {
            return View();
        }


        [HttpPost]
        public ActionResult GetJobPostWithFilter([DataSourceRequest] DataSourceRequest request, JobPost model)
        {
            List<Domain.Entity.JobPost> all;
            using (var db = new IranMarketerContext())
            {
                try
                {
                    db.Configuration.ProxyCreationEnabled = false;
                    all = db.JobPosts.Where(x =>
                            (model.Industry == null || model.Industry <= 0 || x.Industry == model.Industry)
                            && (model.City == null || model.City <= 0 || x.City == model.City)
                            && (model.Gender == null || model.Gender <= 0 || x.Gender == model.Gender)
                            &&
                            (model.MinYearExperience == null || model.MinYearExperience <= 0 ||
                            x.MinYearExperience >= model.MinYearExperience))
                        .Include(x => x.IndustryIndustry).Include(x => x.JobCategory).Include(x => x.CityRegion).Include(x => x.LegalParty)
                        .Include(x => x.JobRequests).ToList();

                }
                finally
                {

                    db.Configuration.ProxyCreationEnabled = true;
                }
            }
            const int logoType = (int)DocumentType.CompanyLogo;

            var da = all.Select(x => new JobPost
            {
                Id = x.Id,
                Title = x.Title,
                Description = x.Description,
                Industry = x.Industry,
                Category = x.Category,
                Requested = x.JobRequests.FirstOrDefault(y => y.PartyId == User.Identity.GetPartyId().SafeInt()) != null,
                IndustryIndustry = new Industry { TitleFa = x.IndustryIndustry.TitleFa },
                JobCategory = new JobCategory { TitleFa = x.JobCategory.TitleFa },
                Gender = x.Gender,
                MaxAge = x.MaxAge,
                MinAge = x.MinAge,
                Base64Logo = DocumentProvider.Get(y=>y.UserId==x.LegalParty.UserId && y.DocType== logoType).FirstOrDefault()?.Binery.ConvertToBase64String(),
                MinYearExperience = x.MinYearExperience,
                LegalParty = new Domain.DTO.LegalParty { CompanyName = x.LegalParty?.CompanyName },
                CityRegion = new Region { Title = x.CityRegion.Title }
            });
            return Json(da.ToDataSourceResult(request), JsonRequestBehavior.AllowGet);
        }
        [HttpGet]
        public ActionResult SendResumeForJob(int jobPostId)
        {
             
            try
            {
                if (jobPostId > 0)
                {
                    var request = new JobRequest
                    {Created = DateTime.Now,
                    CreatedBy = User.Identity.Name,
                    DateOfRequest = DateTime.Now,
                    IsRequested = true,
                    JobPostId = jobPostId,
                    Modified = DateTime.Now,
                    ModifiedBy = User.Identity.Name,
                    PartyId = User.Identity.GetPartyId().SafeInt(),
                    RequestStatus = (int)JobRequestStatus.Requested,
                    UserName = Extentions.GetUserName(User.Identity)

                    };
                    JobRequestService.Save(request);

                    SuccessApiResponse.Result = request;
                    return Json(SuccessApiResponse, JsonRequestBehavior.AllowGet);
                }
                return Json(ErrorApiResponse, JsonRequestBehavior.AllowGet);

            }
            catch (Exception e)
            {
                return Json(ErrorApiResponse, JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult GetAllOfMyRequest([DataSourceRequest] DataSourceRequest request)
        {
            try
            {

                List<Domain.Entity.JobRequest> all;
                using (var db = new IranMarketerContext())
                {
                    try
                    {
                        db.Configuration.ProxyCreationEnabled = false;
                        var id = User.Identity.GetPartyId().SafeInt();
                        all = db.JobRequests.Where(x => x.PartyId == id)
                            .Include(x => x.JobPost).Include(x => x.JobPost.LegalParty)
                            .ToList(); //.Include(x => x.Region).ToList();
                    }
                    finally
                    {

                        db.Configuration.ProxyCreationEnabled = true;
                    }
                }
                ////   all = WorkExprienceService.GetAllWorkExperiencesWithForeinKey();
                //var result = JsonConvert.SerializeObject(all.ToDataSourceResult(request), Formatting.None,
                //    new JsonSerializerSettings
                //    {
                //        //  ReferenceLoopHandling = ReferenceLoopHandling.Ignore,
                //        MaxDepth = 2
                //    });
                var da = all.Select(x => new Domain.DTO.JobRequest
                {
                    Id = x.Id,
                    JobPost = new Domain.Entity.JobPost
                    {
                        Title = x.JobPost.Title,
                        LegalParty = new LegalParty
                        {
                            CompanyName = x.JobPost.LegalParty.CompanyName
                        }
                    },
                    DateOfRequest = x.DateOfRequest,
                    RequestStatus = x.RequestStatus
                });
                return Json(da.ToList().ToDataSourceResult(request), JsonRequestBehavior.AllowGet);
            }
            catch (Exception e)
            {
                return this.Json(this.ErrorApiResponse, JsonRequestBehavior.AllowGet);

            }

        }
    }
}