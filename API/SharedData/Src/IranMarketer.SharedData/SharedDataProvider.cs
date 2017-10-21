using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using IranMarketer.Common;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.Domain.Filters;
using IranMarketer.SharedData.Interface;
using Pikad.Framework.Infra.Provider;
using Pikad.Framework.Infra.Validation;
using Pikad.Framework.Repository.IoC;

namespace IranMarketer.SharedData
{
    public class AcademicFieldProvider : AbstractProvider<AcademicField, IAcademicFieldService, int>
    {
        

    }
    public class IndustryProvider : AbstractProvider<Industry, IIndustryService, int>
    {


    }
    public class DocumentProvider: AbstractProvider<Document, IDocumentService, int>
    {


    }
    public class JobCategoryProvider : AbstractProvider<JobCategory, IJobCategoryService, int>
    {

        
    }
    public class RegionProvider : AbstractProvider<Region, IRegionService, int>
    {
        public List<Region> SearchRegion(string filter, RegionType regionType)
        {
            try
            {
                if (string.IsNullOrEmpty(filter))
                {
                    return Service.GetAll().Where(x => x.RegionType == (int)regionType).ToList();
                }
                return Service.SearchRegions(filter, regionType);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

    }


    //public class SharedDataProvider : BaseProvider
    //{
    //    public IAcademicFieldService AcademicFieldService => CoreContainer.Container.Resolve<IAcademicFieldService>();
    //    public IIndustryService IndustryService => CoreContainer.Container.Resolve<IIndustryService>();
    //    public IJobCategoryService JobCategoryService => CoreContainer.Container.Resolve<IJobCategoryService>();
    //    public IRegionService RegionService => CoreContainer.Container.Resolve<IRegionService>();

    //    public List<AcademicField> GetAcademicFields()
    //    {
    //        try
    //        {
    //            var result = AcademicFieldService.GetAll();
    //            return result.ToList();
    //        }
    //        catch (Exception e)
    //        {
    //            Logger.ErrorException(e.Message, e);
    //            throw;
    //        }

    //    }

    //    public List<AcademicField> GetAcademicFields(Expression<Func<AcademicField, bool>> predicate)
    //    {
    //        try
    //        {
    //            var result = AcademicFieldService.Get(predicate);
    //            return result.ToList();
    //        }
    //        catch (Exception e)
    //        {
    //            Logger.ErrorException(e.Message, e);
    //            throw;
    //        }

    //    }

    //    public int SaveOrUpdateAcademicField(ApiRequest<AcademicField>  filter)
    //    {
    //        try
    //        {
    //            BRule.Assert(filter?.Entity != null,
    //                RuleExceptionCodeCommon.FilterIsNull.GetEnumDescription(),
    //                (int)RuleExceptionCodeCommon.FilterIsNull);
    //            var model = filter.Entity;

    //            if (model.Id>0)
    //            {
    //                model.Modified=DateTime.Now;
    //                model.ModifiedBy = filter.AuthenticatedUserName;
    //            }
    //            else
    //            {
    //                model.Created = DateTime.Now;
    //                model.CreatedBy = filter.AuthenticatedUserName;
    //            }
    //            var result = AcademicFieldService.SaveOrUpdate(model);
    //            return result;
    //        }
    //        catch (Exception e)
    //        {
    //            Logger.ErrorException(e.Message, e);
    //            throw;
    //        }

    //    }


    //    public List<Industry> GetIndustriess()
    //    {
    //        try
    //        {
    //            var result = IndustryService.GetAll();
    //            return result.ToList();
    //        }
    //        catch (Exception e)
    //        {
    //            Logger.ErrorException(e.Message, e);
    //            throw;
    //        }

    //    }

    //    public List<Industry> GetIndustries(Expression<Func<Industry, bool>> predicate)
    //    {
    //        try
    //        {
    //            var result = IndustryService.Get(predicate);
    //            return result.ToList();
    //        }
    //        catch (Exception e)
    //        {
    //            Logger.ErrorException(e.Message, e);
    //            throw;
    //        }

    //    }

    //    public int SaveOrUpdateIndusry(ApiRequest<Industry> filter)
    //    {
    //        try
    //        {
    //            BRule.Assert(filter?.Entity != null,
    //                RuleExceptionCodeCommon.FilterIsNull.GetEnumDescription(),
    //                (int)RuleExceptionCodeCommon.FilterIsNull);
    //            var model = filter.Entity;

    //            if (model.Id > 0)
    //            {
    //                model.Modified = DateTime.Now;
    //                model.ModifiedBy = filter.AuthenticatedUserName;
    //            }
    //            else
    //            {
    //                model.Created = DateTime.Now;
    //                model.CreatedBy = filter.AuthenticatedUserName;
    //            }
    //            var result = IndustryService.SaveOrUpdate(model);
    //            return result;
    //        }
    //        catch (Exception e)
    //        {
    //            Logger.ErrorException(e.Message, e);
    //            throw;
    //        }

    //    }



    //    public List<JobCategory> GetJobCategories()
    //    {
    //        try
    //        {
    //            var result = JobCategoryService.GetAll();
    //            return result.ToList();
    //        }
    //        catch (Exception e)
    //        {
    //            Logger.ErrorException(e.Message, e);
    //            throw;
    //        }

    //    }

    //    public List<JobCategory> GetIndustries(Expression<Func<JobCategory, bool>> predicate)
    //    {
    //        try
    //        {
    //            var result = JobCategoryService.Get(predicate);
    //            return result.ToList();
    //        }
    //        catch (Exception e)
    //        {
    //            Logger.ErrorException(e.Message, e);
    //            throw;
    //        }

    //    }

    //    public int SaveOrUpdateJobCategory(ApiRequest<JobCategory> filter)
    //    {
    //        try
    //        {
    //            BRule.Assert(filter?.Entity != null,
    //                RuleExceptionCodeCommon.FilterIsNull.GetEnumDescription(),
    //                (int)RuleExceptionCodeCommon.FilterIsNull);
    //            var model = filter.Entity;

    //            if (model.Id > 0)
    //            {
    //                model.Modified = DateTime.Now;
    //                model.ModifiedBy = filter.AuthenticatedUserName;
    //            }
    //            else
    //            {
    //                model.Created = DateTime.Now;
    //                model.CreatedBy = filter.AuthenticatedUserName;
    //            }
    //            var result = JobCategoryService.SaveOrUpdate(model);
    //            return result;
    //        }
    //        catch (Exception e)
    //        {
    //            Logger.ErrorException(e.Message, e);
    //            throw;
    //        }

    //    }
    //}
}