using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IranMarketer.App.Attribute;
using IranMarketer.App.Helper;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.SharedData.Interface;
using Kendo.Mvc.Extensions;
using Kendo.Mvc.UI;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository.IoC;
using JobPost = IranMarketer.Domain.DTO.JobPost;

namespace IranMarketer.App.Controllers
{
    [CustomAuthorize]
    [SetLoggedInUserInformation]
    public class SearchForJobController : BaseController
    {
        // GET: SearchForJob
        public IJobPostService JobPostRepository => CoreContainer.Container.Resolve<IJobPostService>();

        public IJobRequestService JobRequestService => CoreContainer.Container.Resolve<IJobRequestService>();

        public ActionResult Index()
        {
            return View();
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
                    UserName = User.Identity.GetUserName()

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