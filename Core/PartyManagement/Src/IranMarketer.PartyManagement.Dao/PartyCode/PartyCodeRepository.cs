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
    public class PartyCodeRepository : Repository<PartyCode, long>, IPartyCodeRepository
    {
        public PartyCodeRepository(IDbFactory factory) : base(factory)
        {
        }
    }
}
