using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Repository;
using Pikad.Framework.Repository.Command;
using Pikad.Framework.UnitOfWork;
using IranMarketer.Domain.Entity;
using IranMarketer.SharedData.Dao.Product;
using IranMarketer.SharedData.Service;

namespace IranMarketer.SharedData.Dao
{
    public class SectorRepository : Repository<Domain.Entity.Sector, int>, ISectorRepository
    {
        private CustomLogger Logger => new CustomLogger(GetType().FullName);
        public SectorRepository(IDbFactory factory) : base(factory)
        {
        }

        public Sector GetSectorByCode(string code)
        {
            try
            {
                var customCommand = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters(),
                    SqlCommand = "shd.GetSectorByCode"
                };
                customCommand.Parameters.Add("code", code, DbType.String);
                return Get(customCommand, new SectorRowMapper());
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
    }
}
