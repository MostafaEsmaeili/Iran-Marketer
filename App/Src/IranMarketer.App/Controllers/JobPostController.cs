using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IranMarketer.App.Attribute;
using IranMarketer.App.Helper;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.PartyManagement.Interface;
using IranMarketer.PartyManagement.Service;
using IranMarketer.SharedData.Interface;
using IranMarketer.SharedData.Service;
using IranMarketer.SharedData.Service.JobPrefer;
using Kendo.Mvc.Extensions;
using Kendo.Mvc.UI;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository.IoC;
using JobPost = IranMarketer.Domain.DTO.JobPost;
using JobRequest = IranMarketer.Domain.DTO.JobRequest;

namespace IranMarketer.App.Controllers
{
    [CustomAuthorize]
    [SetLoggedInUserInformation]
    public class JobPostController : BaseController
    {
        // GET: JobPost
        public IJobPostService JobPostRepository => CoreContainer.Container.Resolve<IJobPostService>();

        public IRetailPartyService RetailPartyService => CoreContainer.Container.Resolve<IRetailPartyService>();
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult SaveOrUpdate(Domain.DTO.JobPost JobPost)
        {
            
            try
            {

                using (var db=new IranMarketerContext())
                {
                    var current =
                        db.JobPosts.FirstOrDefault(x => x.PartyId == JobPost.PartyId && x.Id == JobPost.Id);

                    var entity = ObjectMapper.BaseConverter
                                     .ConvertSourceToDest<Domain.DTO.JobPost, IranMarketer.Domain.Entity.JobPost > (JobPost);

                    if (current != null)
                    {
                        entity.Id = current.Id;
                    }

                    entity.Modified = DateTime.Now;
                    entity.Created = current?.Created ?? DateTime.Now;
                    entity.CreatedBy = current?.CreatedBy ?? JobPost.UserName;
                    entity.ModifiedBy = JobPost.UserName;

                    JobPostRepository.SaveOrUpdate(entity);
                    return this.Json(this.SuccessApiResponse, JsonRequestBehavior.AllowGet);

                }

                
            }
            catch (Exception e)
            {
                return Json(ErrorApiResponse, JsonRequestBehavior.AllowGet);

            }

        }
        public ActionResult GetJobPostById(Domain.DTO.JobPost JobPost)
        {
            try
            {
                var all = JobPostRepository.GetKey(JobPost.Id);
                var dto = ObjectMapper.BaseConverter
                    .ConvertSourceToDest<IranMarketer.Domain.Entity.JobPost, Domain.DTO.JobPost>(all);
              

                SuccessApiResponse.Result = dto;
                return Json(SuccessApiResponse, JsonRequestBehavior.AllowGet);
            }
            catch (Exception e)
            {
                return Json(ErrorApiResponse, JsonRequestBehavior.AllowGet);

            }
        }

        
        public ActionResult GetAllJobPosts([DataSourceRequest] DataSourceRequest request)
        {
            try
            {

                List<Domain.Entity.JobPost> all;
                using (var db = new IranMarketerContext())
                {
                    try
                    {
                        db.Configuration.ProxyCreationEnabled = false;
                        var id = User.Identity.GetPartyId().SafeInt();
                        all = db.JobPosts.Where(x => x.PartyId == id)
                            .Include(x => x.IndustryIndustry).Include(x => x.JobCategory).Include(x=>x.CityRegion)
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
                var da = all.Select(x => new
                {
                    x.Id,
                    x.Title,
                    x.Description,
                    IndustryIndustry=new{x.IndustryIndustry.TitleFa},
                    JobCategory=new {x.JobCategory.TitleFa},
                    x.GenderTitle,
                    x.MaxAge,
                    x.MinAge,
                    x.MinYearExperience,
                    CityRegion = new { x.CityRegion.Title}
                });
                return Json(da.ToList().ToDataSourceResult(request), JsonRequestBehavior.AllowGet);
            }
            catch (Exception e)
            {
                return this.Json(this.ErrorApiResponse, JsonRequestBehavior.AllowGet);

            }

        }

        [HttpGet]
        public ActionResult GetAllRequestForJobPost()
        {
            return View();
        }


        [HttpPost]
        public ActionResult GetAllRequestForJobPost([DataSourceRequest] DataSourceRequest request, JobRequest model)
        {
            List<Domain.Entity.JobRequest> all;
            using (var db = new IranMarketerContext())
            {
                try
                {
                    db.Configuration.ProxyCreationEnabled = false;
                    
                    var id = User.Identity.GetPartyId().SafeInt();
                    all = db.JobRequests.Where(x =>
                            x.JobPost.LegalParty.Id == id &&
                            (x.RequestStatus == model.RequestStatus || model.RequestStatus <= 0))
                   //     .Include(x => x.RetailParty)
                        .Include(x => x.JobPost)
                        .OrderByDescending(x=>x.DateOfRequest)
                        .ToList();
                    }
                finally
                {

                    db.Configuration.ProxyCreationEnabled = true;
                }
            }
            foreach (var jobRequest in all)
            {
                if (jobRequest.PartyId != null)
                    jobRequest.RetailParty = RetailPartyService.GetKey(jobRequest.PartyId.Value);
            }
            //  var res = all.Select(ObjectMapper.BaseConverter.ConvertSourceToDest<Domain.Entity.JobRequest, JobRequest>).ToList();



            var da = all.Select(x => new JobRequest
            {
                Id = x.Id,
                JobPost=new Domain.Entity.JobPost { Title = x.JobPost.Title},
                RetailParty = new Domain.Entity.RetailParty
                {
                    FirstName = x.RetailParty.FirstName,
                    LastName = x.RetailParty.LastName,
                    Gender = x.RetailParty.Gender
                },

            });
            return Json(da.ToDataSourceResult(request), JsonRequestBehavior.AllowGet);
        }




        [HttpPost]
        public ActionResult GetJobPostWithFilter([DataSourceRequest] DataSourceRequest request,JobPost model)
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
                        .Include(x => x.IndustryIndustry).Include(x => x.JobCategory).Include(x => x.CityRegion).Include(x=>x.LegalParty)
                        .Include(x => x.JobRequests).ToList();

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
            var da = all.Select(x => new JobPost
            {
               Id= x.Id,
               Title = x.Title,
               Description = x.Description,
               Industry = x.Industry,
               Category = x.Category,
                Requested= x.JobRequests.FirstOrDefault(y=>y.PartyId== User.Identity.GetPartyId().SafeInt())!=null,
                IndustryIndustry = new Industry{ TitleFa = x.IndustryIndustry.TitleFa },
                JobCategory = new JobCategory{TitleFa = x.JobCategory.TitleFa },
                Gender=x.Gender,
                MaxAge = x.MaxAge,
                MinAge = x.MinAge,
              MinYearExperience  = x.MinYearExperience,
              LegalParty = new Domain.DTO.LegalParty { CompanyName = x.LegalParty?.CompanyName},
                CityRegion = new Region{ Title=x.CityRegion.Title }
            });
            return Json(da.ToDataSourceResult(request), JsonRequestBehavior.AllowGet);
        }

        public ActionResult ChangeJobRequestStatus(int jobRequestId,int status)
        {
            try
            {
                using (var db=new IranMarketerContext())
                {
                    try
                    {
                        db.Configuration.ProxyCreationEnabled = false;
                        var request = db.JobRequests.Where(x => x.Id == jobRequestId).Include(x => x.JobPost).Include(x => x.JobPost.LegalParty).FirstOrDefault();
                        if (request?.JobPost.LegalParty.Id != User.Identity.GetPartyId().SafeInt())
                        {
                            ErrorApiResponse.Message = "خطای دسترسی";
                            return Json(ErrorApiResponse);
                        }
                        var isvalidStaus = status.SafeNullableEnum<JobRequestStatus>();
                        if (isvalidStaus == null)
                            return Json(ErrorApiResponse);
                        request.RequestStatus = status;
                        request.ModifiedBy = User.Identity.GetUserName();
                        request.Modified = DateTime.Now;

                        db.SaveChanges();
                    }
                    finally
                    {
                        db.Configuration.ProxyCreationEnabled = true;
                    }

                    return Json(SuccessApiResponse);
                }
            }
            catch (Exception )
            {

                return Json(ErrorApiResponse);
            }
        }
    }
}