using Pikad.Framework.Repository;
using IranMarketer.SharedData.Service;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Repository.Command;
using Pikad.Framework.UnitOfWork;
using IranMarketer.Domain.Entity;
using IranMarketer.SharedData.Dao.Region;

namespace IranMarketer.SharedData.Dao
{
    public class RegionRepository : Repository<Domain.Entity.Region, int>, IRegionRepository
    {
        private CustomLogger Logger => new CustomLogger(this.GetType().FullName);
        public RegionRepository(IDbFactory factory) : base(factory)
        {
        }

        public List<Domain.Entity.Region> SearchRegions(string filter, int regionType)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                command.Parameters.Add("filter", filter, DbType.String);
                command.Parameters.Add("type", regionType, DbType.Int32);
                command.SqlCommand = "dbo.SearchRegions";
                return GetAll(command, new RegionRowMapper()).ToList();
            }
            catch (Exception ex)
            {

                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
    }
}
