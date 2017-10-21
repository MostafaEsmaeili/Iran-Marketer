using Pikad.Framework.Repository;
using IranMarketer.Domain.Entity;
using IranMarketer.PartyManagement.Service;
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
using IranMarketer.PartyManagement.Dao.PartyRoles;

namespace IranMarketer.PartyManagement.Dao
{
    public class PartyRolesRepository : Repository<Domain.Entity.PartyRoles, long>, IPartyRolesRepository
    {
        private CustomLogger Logger => new CustomLogger(this.GetType().FullName);
        public PartyRolesRepository(IDbFactory factory) : base(factory)
        {
        }

        public List<Domain.Entity.PartyRoles> GetPartyRoles()
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = null
                };
                command.SqlCommand = "pm.GetPartyRoles";
                return GetAll(command, new PartyRolesRowMapper()).ToList();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public Domain.Entity.PartyRoles GetRoleByPartyId(long partyId, int personalityRole)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                command.Parameters.Add("partyId", partyId, DbType.Int64);
                command.Parameters.Add("personalityRole", personalityRole, DbType.Int32);
                command.SqlCommand = "pm.GetRoleByPartyId";
                return Get(command, new PartyRolesRowMapper());
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public bool IsPartyBoardMember(long partyId)
        {
            IDataReader dr = null;
            bool res = false;
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters(),
                    SqlCommand = "pm.IsPartyBoardMember"
                };
                command.Parameters.Add("partyId", partyId, DbType.Int16);
                dr = Session.ExecuteReader(new CommandDefinition(command.SqlCommand, command.Parameters, commandType: command.CommandType));
                if (dr.Read())
                {
                    var id = dr[0].SafeInt();
                    if (id > 0)
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
