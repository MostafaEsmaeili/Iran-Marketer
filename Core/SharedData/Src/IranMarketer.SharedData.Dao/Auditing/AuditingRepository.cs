using System;
using System.Collections.Generic;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Repository;
using Pikad.Framework.UnitOfWork;
using IranMarketer.SharedData.Service.Auditing;

namespace IranMarketer.SharedData.Dao.Auditing
{
    public class AuditingRepository :Repository<Domain.Entity.Auditing,int>,IAuditingRepository
        
    {
        private CustomLogger Logger => new CustomLogger(GetType().FullName);
       // public AuditingRowMapper AuditingRowMapper { get; set; }
        public void SaveAuditing(Domain.Entity.Auditing auditing)
        {
            try
            {
                Save(auditing);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }



        public AuditingRepository(IDbFactory factory) : base(factory)
        {
        }
    }
}