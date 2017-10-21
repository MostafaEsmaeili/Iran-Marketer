using Pikad.Framework.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.PartyManagement.Service
{
    public interface IPartyBranchRepository : IRepository<Domain.Entity.PartyBranch, int>
    {
    }
}
