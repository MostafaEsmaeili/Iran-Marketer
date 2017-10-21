using System;
using System.Collections.Generic;
using System.Linq;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Infra.Service;
using IranMarketer.SharedData.Interface;

namespace IranMarketer.SharedData.Service.Auditing
{
    public class AuditingService : Service<Domain.Entity.Auditing, IAuditingRepository,int>, IAuditingService
    {
        private CustomLogger Logger => new CustomLogger(GetType().FullName);
        public void SaveAuditing(Domain.Entity.Auditing auditing)
        {
            try
            {
                Dao.SaveAuditing(auditing);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public List<Domain.Entity.Auditing> GetAuditings()
        {
            try
            {
                return Dao.GetAll().ToList();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
    }
}