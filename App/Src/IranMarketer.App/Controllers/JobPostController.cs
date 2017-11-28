using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IranMarketer.Domain.Entity;
using Pikad.Framework.Infra.Utility;

namespace IranMarketer.App.Controllers
{
    public class JobPostController : BaseController
    {
        // GET: JobPost
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
                                     .ConvertSourceToDest < (Domain.DTO.JobPost, IranMarketer.Domain.Entity.JobPost > (JobPost);

                    if (current != null)
                    {
                        entity.Id = current.Id;
                    }

                    entity.Modified = DateTime.Now;
                    entity.Created = current?.Created ?? DateTime.Now;
                    entity.CreatedBy = current?.CreatedBy ?? experience.UserName;
                    entity.ModifiedBy = experience.UserName;

                    WorkExprienceService.SaveOrUpdate(entity);
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
                var all = WorkExprienceService.GetKey(experience.Id);
                var dto = ObjectMapper.BaseConverter
                    .ConvertSourceToDest<IranMarketer.Domain.Entity.WorkExperience, WorkExperience>(all);
                dto.FromDate = all.FromDateJalali;
                dto.ToDate = all.ToDateJalali;//.ConvertMiladiToJalali();

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

                List<Domain.Entity.WorkExperience> all;
                using (var db = new IranMarketerContext())
                {
                    try
                    {
                        db.Configuration.ProxyCreationEnabled = false;
                        all = db.WorkExperiences.Where(x => x.PartyId == User.Identity.GetPartyId().SafeInt()).Include(x => x.Region).ToList(); //.Include(x => x.Region).ToList();
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
                    x.JobTitle,
                    x.CompanyName,
                    x.FromDateJalali,
                    x.ToDateJalali,
                    x.StillInThisWork,
                    Region = new { Title = x.Region.Title }
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