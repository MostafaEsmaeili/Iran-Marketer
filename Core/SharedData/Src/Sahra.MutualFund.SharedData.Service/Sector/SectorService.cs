using System;
using System.Collections.Generic;
using System.Linq;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Infra.Service;
using IranMarketer.Domain.Entity;
using IranMarketer.SharedData.Interface;

namespace IranMarketer.SharedData.Service
{
    public class SectorService : Service<Sector, ISectorRepository,int>, ISectorService
    {
        private CustomLogger Logger => new CustomLogger(this.GetType().FullName);
        public Sector GetSectorByCode(string code)
        {
            try
            {
                return Dao.GetSectorByCode(code);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message,ex);
                throw;
            }
        }

    }
}
