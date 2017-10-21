using System;
using System.Collections.Generic;
using System.Linq;
using Dapper.FastCrud;
using IranMarketer.Domain.Entity;
using IranMarketer.PartyManagement.Service;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Repository;
using Pikad.Framework.Repository.IoC;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.PartyManagement.Dao.Party
{
    public class WorkExprienceRepository : Repository<WorkExperience,int>,IWorkExprienceRepository
    {

        public CustomLogger Logger=>new CustomLogger(GetType().FullName);
        public WorkExprienceRepository(IDbFactory factory) : base(factory)
        {
        }

        public List<WorkExperience> GetAllWorkExperiencesWithForeinKey()
        {
            try
            {
                var testsession = CoreContainer.Container.Resolve<ISession>();
                var all = testsession.Find<WorkExperience>(x => x.Include<Industry>(t => t.InnerJoin())
                    .Include<JobCategory>(t => t.InnerJoin()).Include<Domain.Entity.RetailParty>(t => t.InnerJoin()));
                return all.ToList();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }

        }
    }
}