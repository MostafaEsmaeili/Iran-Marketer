using Pikad.Framework.Infra.Service;
using IranMarketer.Domain.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PersonalityRole = IranMarketer.Domain.Enum.PersonalityRole;

namespace IranMarketer.PartyManagement.Interface
{
    public interface IPartyRolesService : IService<PartyRoles, long>
    {
        List<PartyRoles> GetRolesesByPartyId(long partyId);
        PartyRoles GetRoleByPartyId(long partyId, PersonalityRole personalityRole);
        List<PartyRoles> GetPartyRoles();
        bool IsPartyBoardMember(long partyId);
    }
}
