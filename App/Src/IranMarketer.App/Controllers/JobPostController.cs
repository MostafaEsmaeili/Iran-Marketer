using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IranMarketer.App.Attribute;
using IranMarketer.App.Helper;
using IranMarketer.Domain.Entity;
using IranMarketer.PartyManagement.Service;
using IranMarketer.SharedData.Interface;
using IranMarketer.SharedData.Service;
using IranMarketer.SharedData.Service.JobPrefer;
using Kendo.Mvc.Extensions;
using Kendo.Mvc.UI;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository.IoC;

namespace IranMarketer.App.Controllers
{
    [CustomAuthorize]
    [SetLoggedInUserInformation]
    public class JobPostController : BaseController
    {
        // GET: JobPost
        public IJobPostService JobPostRepository => CoreContainer.Container.Resolve<IJobPostService>();
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
        [HttpPost]
        public ActionResult GetJobPostWithFilter(JobPost model)
        {
            IEnumerable<Domain.Entity.JobPost> all;
            using (var db = new IranMarketerContext())
            {
                try
                {
                    db.Configuration.ProxyCreationEnabled = false;
                    var id = User.Identity.GetPartyId().SafeInt();
                    all = db.JobPosts.Where(x => x.PartyId == id)
                        .Include(x => x.IndustryIndustry).Include(x => x.JobCategory).Include(x => x.CityRegion)
                        .Where(x=>(x.Industry==model.Industry || model.Industry<=0) && (x.City==model.City || model.City<=0))
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
                IndustryIndustry = new { x.IndustryIndustry.TitleFa },
                JobCategory = new { x.JobCategory.TitleFa },
                x.GenderTitle,
                x.MaxAge,
                x.MinAge,
                x.MinYearExperience,
                CityRegion = new { x.CityRegion.Title }
            });
            return Json(da.ToList().ToDataSourceResult(request), JsonRequestBehavior.AllowGet);
        }
    }
}