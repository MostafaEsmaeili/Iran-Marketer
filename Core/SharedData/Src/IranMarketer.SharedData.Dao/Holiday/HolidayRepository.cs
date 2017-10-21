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
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository.Command;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.SharedData.Dao.Holiday
{
    public class HolidayRepository : Repository<Domain.Entity.Holiday, int>, IHolidayRepository
    {
        private CustomLogger Logger => new CustomLogger(GetType().FullName);
        public HolidayRepository(IDbFactory factory) : base(factory)
        {
        }

        public bool IsHoliday(DateTime date)
        {
            IDataReader dr = null;
            bool res = false;
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
           
                command.Parameters.Add("date", date, DbType.Date);
                command.SqlCommand = "shd.IsHoliday";
                dr = Session.ExecuteReader(new CommandDefinition(command.SqlCommand, command.Parameters, commandType: command.CommandType));
                if (dr.Read())
                {
                    var isHoliday = dr[0].SafeInt();
                    if (isHoliday == 1)
                    {
                        res = true;
                    }
                }
                return res;
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
            finally
            {
                if (dr != null)
                {
                    dr.Dispose();
                    dr.Close();
                }
            }
        }
    }
}
