using Pikad.Framework.Infra.Service;
using IranMarketer.Domain.Entity;
using IranMarketer.SharedData.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Logging;
using IranMarketer.Domain.Enum;

namespace IranMarketer.SharedData.Service
{
    public class RegionService : Service<Region, IRegionRepository, int>, IRegionService
    {
        private CustomLogger Logger => new CustomLogger(this.GetType().FullName);
        public List<Region> SearchRegions(string filter, RegionType regionType)
        {
            try
            {
                return Dao.SearchRegions(filter, (int)regionType);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
    }
}
