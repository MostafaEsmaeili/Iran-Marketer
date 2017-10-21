using Pikad.Framework.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.Entity;

namespace IranMarketer.PartyManagement.Service
{
    public interface IPartyRolesRepository : IRepository<Domain.Entity.PartyRoles, long>
    {
        List<PartyRoles> GetPartyRoles();
        PartyRoles GetRoleByPartyId(long partyId, int personalityRole);
        bool IsPartyBoardMember(long partyId);
    }
}
