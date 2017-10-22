// --------------------------------------------------------------------------------------------------------------------
// <copyright file="ProfileController.cs" company="">
//   
// </copyright>
// <summary>
//   Defines the ProfileController type.
// </summary>
// --------------------------------------------------------------------------------------------------------------------

using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Net.Mime;
using System.Web.Http.Results;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.Enum;
using Newtonsoft.Json;

namespace IranMarketer.App.Controllers
{
    using System;
    using System.Collections.Generic;
    using System.Data;
    using System.IO;
    using System.Linq;
    using System.Web;
    using System.Web.Mvc;

    using IranMarketer.App.Attribute;
    using IranMarketer.Domain.Entity;
    using IranMarketer.PartyManagement.API;
    using IranMarketer.PartyManagement.Interface;
    using IranMarketer.SharedData;
    using IranMarketer.SharedData.Interface;

    using Kendo.Mvc.Extensions;
    using Kendo.Mvc.UI;

    using Pikad.Framework.Infra.Utility;
    using Pikad.Framework.Repository.Extensions;
    using Pikad.Framework.Repository.IoC;
    using Pikad.Framework.UnitOfWork;

    using RestSharp.Extensions;

    using JobPrefer = IranMarketer.Domain.DTO.JobPrefer;
    using RetailParty = IranMarketer.Domain.DTO.RetailParty;
    using WorkExperience = IranMarketer.Domain.DTO.WorkExperience;

    [CustomAuthorize]
    [SetLoggedInUserInformation]
    public class ProfileController : BaseController
    {
        public DocumentProvider DocumentProvider => CoreContainer.Container.Resolve<DocumentProvider>();
        public PartyProvider PartyProvider => CoreContainer.Container.Resolve<PartyProvider>();
        public  IWorkExprienceService WorkExprienceService => CoreContainer.Container.Resolve<IWorkExprienceService>();

        public IJobPreferService JobPreferService => CoreContainer.Container.Resolve<IJobPreferService>();
        public JobCategoryProvider JobCategoryProvider => CoreContainer.Container.Resolve<JobCategoryProvider>();
        public IndustryProvider IndustryProvider => CoreContainer.Container.Resolve<IndustryProvider>();
        public IPartyUniversityService PartyUniversityService=> CoreContainer.Container.Resolve<IPartyUniversityService>();


        public ActionResult EmployeeProfile()
        {
            return View();
        }
        public ActionResult SaveBasicPartyInformarion(RetailParty party)
        {
            try
            {
                var ent = PartyProvider.Get(x => x.UserName == party.UserName).FirstOrDefault();
                var entity = ObjectMapper.BaseConverter
                    .ConvertSourceToDest<RetailParty, IranMarketer.Domain.Entity.RetailParty>(party);

                entity.BirthDate = party.BirthDateJalali.ConvertJalaliToMiladi();
                if (ent != null) entity.Id = ent.Id;

                entity.Modified=DateTime.Now;
                entity.Created = ent.Created;
                entity.CreatedBy = ent.CreatedBy;
                PartyProvider.SaveOrUpdate(entity);
                return Json(SuccessApiResponse,JsonRequestBehavior.AllowGet);
            }
            catch (Exception e)
            {
                return Json(ErrorApiResponse, JsonRequestBehavior.AllowGet);

            }
        }
        public ActionResult GetBasicPartyInformarion(RetailParty party)
        {
            try
            {
                var ent = PartyProvider.Get(x => x.UserName == party.UserName).FirstOrDefault();
                var dto = ObjectMapper.BaseConverter
                    .ConvertSourceToDest<IranMarketer.Domain.Entity.RetailParty,RetailParty >(ent);
                dto.BirthDateJalali = dto.BirthDate?.ConvertMiladiToJalali();
                SuccessApiResponse.Result = dto;
                return Json(SuccessApiResponse, JsonRequestBehavior.AllowGet);
            }
            catch (Exception e)
            {
                return Json(ErrorApiResponse, JsonRequestBehavior.AllowGet);

            }
        }
        public ActionResult GetJobPreffer(JobPrefer jobPrefer)
        {
            try
            {
                var current = JobPreferService.Get(x => x.PartyId == jobPrefer.PartyId).FirstOrDefault();

                var entity = ObjectMapper.BaseConverter
                    .ConvertSourceToDest<IranMarketer.Domain.Entity.JobPrefer, JobPrefer>(current);

                var session = CoreContainer.Container.Resolve<ISession>();
                var prefferCategoru = session.Find<JobPreferJobCategory>(x => x
                    .Where($"{nameof(JobPreferJobCategory.JobPreferId):C}=@Id")
                    .WithParameters(new {Id = current?.Id ?? 0}));
                var PrefferIndustry = session.Find<JobPreferIndustry>(x => x
                    .Where($"{nameof(JobPreferIndustry.JobPreferId):C}=@Id")
                    .WithParameters(new { Id = current?.Id ?? 0 }));

                foreach (var jobCategory in prefferCategoru)
                {
                    entity.JobCategories.Add(JobCategoryProvider.GetKey(jobCategory.jobCategoryId));

                }
                foreach (var industry in PrefferIndustry)
                {
                    entity.Industries.Add(IndustryProvider.GetKey(industry.IndustryId));

                }

                SuccessApiResponse.Result = entity;
 
                return Json(SuccessApiResponse, JsonRequestBehavior.AllowGet);
            }
            catch (Exception e)
            {
                return Json(ErrorApiResponse, JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult SaveJobPreffer(JobPrefer jobPrefer)
        {
            try
            {
                var current = JobPreferService.Get(x => x.PartyId == jobPrefer.PartyId).FirstOrDefault();

                var entity = ObjectMapper.BaseConverter
                    .ConvertSourceToDest<JobPrefer, IranMarketer.Domain.Entity.JobPrefer>(jobPrefer);
                entity.Modified=DateTime.Now;
                entity.Created = current?.Created ?? DateTime.Now;
                entity.CreatedBy = current?.CreatedBy ?? jobPrefer.UserName;
                entity.ModifiedBy =  jobPrefer.UserName;
                entity.Id = current?.Id ?? 0;
                 var dbFactory = CoreContainer.Container.Resolve<IDbFactory>();
                using (var uow = dbFactory.Create<IUnitOfWork, ISession>(IsolationLevel.Serializable))
                {
                    try
                    {
                        var id = JobPreferService.SaveOrUpdate(entity, uow);

                        uow.BulkDelete<JobPreferJobCategory>(statement => statement
                            .Where($"{nameof(JobPreferJobCategory.JobPreferId):C}=@Id").WithParameters(new { Id = id}).AttachToTransaction(uow.Transaction));


                        uow.BulkDelete<JobPreferIndustry>(statement => statement
                            .Where($"{nameof(JobPreferIndustry.JobPreferId):C}=@Id").WithParameters(new { Id = id }).AttachToTransaction(uow.Transaction));

                        foreach (var category in jobPrefer.JobCategories)
                        {
                            

                            uow.Insert(new JobPreferJobCategory
                            {
                                JobPreferId = id,
                                jobCategoryId = category.Id
                            });
                        }
                        foreach (var indusry in jobPrefer.Industries)
                        {
                            uow.Insert(new JobPreferIndustry
                            {
                                JobPreferId = id,
                                IndustryId = indusry.Id
                            });
                        }

                    }
                    catch (Exception ex)
                    {
                        uow.Rollback();
                        throw;
                    }
          
                }
                JobPreferService.SaveOrUpdate(entity);
                return Json(SuccessApiResponse, JsonRequestBehavior.AllowGet);
            }
            catch (Exception e)
            {
                return Json(ErrorApiResponse, JsonRequestBehavior.AllowGet);

            }
        }
     
        public ActionResult SaveWorkExprince(WorkExperience experience)
        {
            try
            {
                var current = WorkExprienceService.Get(x => x.PartyId == experience.PartyId && x.Id==experience.Id).FirstOrDefault();


                experience.FromDate = experience.FromDate!=null&& experience.FromDate.PersianNumberToLatin().IsValidPersianDate()
                    ? experience.FromDate.ConvertJalaliToMiladi().ToShortDateString()
                    : null;

                experience.ToDate =experience.ToDate!=null&& experience.ToDate.PersianNumberToLatin().IsValidPersianDate()
                    ? experience.ToDate.ConvertJalaliToMiladi().ToShortDateString()
                    : null;

                var entity = ObjectMapper.BaseConverter
                    .ConvertSourceToDest<WorkExperience, IranMarketer.Domain.Entity.WorkExperience>(experience);

                //if (experience.FromDate.IsValidPersianDate())
                //{
                //    entity.FromDate = experience.FromDate.ConvertJalaliToMiladi();

                //}

                //if (experience.ToDate.IsValidPersianDate())
                //{
                //    entity.ToDate = experience.ToDate.ConvertJalaliToMiladi();
                //}

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
            catch (Exception e)
            {
                return Json(ErrorApiResponse, JsonRequestBehavior.AllowGet);

            }
        }
        public ActionResult GetAllWorkExprience([DataSourceRequest] DataSourceRequest request)
        {
            try
            {

                List<Domain.Entity.WorkExperience> all;
                using (var db = new IranMarketerContext())
                {
                    try
                    {
                        db.Configuration.ProxyCreationEnabled = false;
                        all = db.WorkExperiences.Include(x => x.Region).ToList(); //.Include(x => x.Region).ToList();
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
                    Region = new {Title = x.Region.Title}
                });
                return Json(da.ToList().ToDataSourceResult(request), JsonRequestBehavior.AllowGet);
            }
            catch (Exception e)
            {
                return this.Json(this.ErrorApiResponse, JsonRequestBehavior.AllowGet);

            }
      
        }
        public ActionResult GetWorkExprienceById(WorkExperience experience)
        {
            try
            {
                var all = WorkExprienceService.GetKey(experience.Id);
                var dto= ObjectMapper.BaseConverter
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
        public ActionResult DeleteWorkExprenceById(WorkExperience experience)
        {
            try
            {

                var todelete = WorkExprienceService.GetKey(experience.Id);
                  WorkExprienceService.Delete(todelete);
                return Json(SuccessApiResponse, JsonRequestBehavior.AllowGet);
            }
            catch (Exception e)
            {
                return Json(ErrorApiResponse, JsonRequestBehavior.AllowGet);

            }
        }

        public ActionResult SavePartyUniversity(Domain.DTO.PartyUniversity partyUniversity)
        {
            try
            {
                var current = PartyUniversityService
                    .Get(x => x.PartyId == partyUniversity.PartyId && x.Id == partyUniversity.Id).FirstOrDefault();


                //partyUniversity.UniversityFromDate = partyUniversity.UniversityFromDate != null &&
                //                                     partyUniversity.UniversityFromDate.PersianNumberToLatin()
                //                                         .IsValidPersianDate()
                //    ? partyUniversity.UniversityFromDate.PersianNumberToLatin().ConvertJalaliToMiladi()
                //        .ToString()
                //    : null;

                //partyUniversity.UniversityToDate = partyUniversity.UniversityToDate != null &&
                //                                   partyUniversity.UniversityToDate.PersianNumberToLatin()
                //                                       .IsValidPersianDate()
                //    ? partyUniversity.UniversityToDate.PersianNumberToLatin().ConvertJalaliToMiladi()
                //        .ToString()
                //    : null;

                var entity = new PartyUniversity
                {
                    AcademicFieldId = partyUniversity.AcademicFieldId,
                    Average = partyUniversity.Average,
                    CountryId = partyUniversity.CountryId,
                    DegreeLevel = partyUniversity.DegreeLevel,
                    PartyId = partyUniversity.PartyId,
                    UniversityCityId = partyUniversity.UniversityCityId,
                    UniversityFromDate = partyUniversity.UniversityFromDate.IsValidPersianDate()
                        ? partyUniversity.UniversityFromDate.ConvertJalaliToMiladi()
                        : IranMarketerCustomUtility.MinDate,

                    UniversityToDate = partyUniversity.UniversityToDate.IsValidPersianDate()
                        ? partyUniversity.UniversityToDate.ConvertJalaliToMiladi()
                        : IranMarketerCustomUtility.MinDate,
                    
                };

                //if (experience.FromDate.IsValidPersianDate())
                //{
                //    entity.FromDate = experience.FromDate.ConvertJalaliToMiladi();

                //}

                //if (experience.ToDate.IsValidPersianDate())
                //{
                //    entity.ToDate = experience.ToDate.ConvertJalaliToMiladi();
                //}

                if (current != null)
                {
                    entity.Id = current.Id;
                }

                entity.Modified = DateTime.Now;
                entity.Created = current?.Created ?? DateTime.Now;
                entity.CreatedBy = current?.CreatedBy ?? partyUniversity.UserName;
                entity.ModifiedBy = partyUniversity.UserName;


                using (var db=new IranMarketerContext())
                {
                    if (current != null)
                    {
                        db.PartyUniversities.Add(entity);
                    }
                    else
                    {
                        db.Entry(entity).State=EntityState.Modified;
                    }
                    db.SaveChanges();
                }
                return this.Json(this.SuccessApiResponse, JsonRequestBehavior.AllowGet);
            }
            catch (Exception e)
            {
                return Json(ErrorApiResponse, JsonRequestBehavior.AllowGet);

            }
        }
        public ActionResult GetPartyUniversityById(Domain.DTO.PartyUniversity experience)
        {
            try
            {
                var all = PartyUniversityService.GetKey(experience.Id);
                var dto = ObjectMapper.BaseConverter
                    .ConvertSourceToDest<PartyUniversity, Domain.DTO.PartyUniversity>(all);
                dto.UniversityFromDate = all.FromDateJalali;
                dto.UniversityToDate = all.ToDateJalali;//.ConvertMiladiToJalali();

                SuccessApiResponse.Result = dto;
                return Json(SuccessApiResponse, JsonRequestBehavior.AllowGet);
            }
            catch (Exception e)
            {
                return Json(ErrorApiResponse, JsonRequestBehavior.AllowGet);

            }
        }
        public ActionResult GetAllPArtyUniversities([DataSourceRequest] DataSourceRequest request)
        {
            try
            {

                List<Domain.Entity.PartyUniversity> all;
                using (var db = new IranMarketerContext())
                {
                    try
                    {
                        db.Configuration.ProxyCreationEnabled = false;
                        all = db.PartyUniversities.Include(x => x.City).Include(x=>x.AcademicField).ToList(); //.Include(x => x.Region).ToList();
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
                    DegreeLevel= ((EducationDegree)x.DegreeLevel).GetEnumDescription(),
                    AcademicField=new {x.AcademicField.TitleFa},
                    x.FromDateJalali,
                    x.ToDateJalali,
                    City=new{x.City.Title},
                    x.Average,
                    x.University,
                });
                return Json(da.ToList().ToDataSourceResult(request), JsonRequestBehavior.AllowGet);
            }
            catch (Exception e)
            {
                return this.Json(this.ErrorApiResponse, JsonRequestBehavior.AllowGet);

            }

        }
        public ActionResult DeletePartyUniversities(PartyUniversity experience)
        {
            try
            {

                var todelete = PartyUniversityService.GetKey(experience.Id);
                PartyUniversityService.Delete(todelete);
                return Json(SuccessApiResponse, JsonRequestBehavior.AllowGet);
            }
            catch (Exception e)
            {
                return Json(ErrorApiResponse, JsonRequestBehavior.AllowGet);

            }
        }


    }
}