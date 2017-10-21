using Pikad.Framework.Infra.Service;
using IranMarketer.PartyManagement.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Logging;
using IranMarketer.Domain.Entity;
using PersonalityRole = IranMarketer.Domain.Enum.PersonalityRole;

namespace IranMarketer.PartyManagement.Service
{
    public class PartyRolesService : Service<Domain.Entity.PartyRoles, IPartyRolesRepository,long>, IPartyRolesService
    {
        public CustomLogger Logger=>new CustomLogger(GetType().FullName);
        public List<PartyRoles> GetRolesesByPartyId(long partyId)
        {
            try
            {
                return Dao.Get(x => x.PartyId == partyId).ToList();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message,ex);
                throw;
            }
        }

        public PartyRoles GetRoleByPartyId(long partyId, PersonalityRole personalityRole)
        {
            try
            {
                return Dao.GetRoleByPartyId(partyId, (int) personalityRole);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }
        }

        public List<PartyRoles> GetPartyRoles()
        {
            try
            {
                return Dao.GetPartyRoles();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }
        }

        public bool IsPartyBoardMember(long partyId)
        {
            try
            {
                return Dao.IsPartyBoardMember(partyId);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }
        }
    }
}
