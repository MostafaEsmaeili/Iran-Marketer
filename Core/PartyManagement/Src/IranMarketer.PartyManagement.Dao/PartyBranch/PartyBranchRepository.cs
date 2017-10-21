using Pikad.Framework.Repository;
using IranMarketer.Domain.Entity;
using IranMarketer.PartyManagement.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.PartyManagement.Dao
{
    public class PartyBranchRepository : Repository<PartyBranch, int>, IPartyBranchRepository
    {
        public PartyBranchRepository(IDbFactory factory) : base(factory)
        {
        }
    }
}
