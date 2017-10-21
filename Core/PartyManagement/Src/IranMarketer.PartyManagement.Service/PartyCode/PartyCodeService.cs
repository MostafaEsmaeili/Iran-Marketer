using Pikad.Framework.Infra.Service;
using IranMarketer.PartyManagement.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.PartyManagement.Service
{
    public class PartyCodeService : Service<Domain.Entity.PartyCode,IPartyCodeRepository,long>,IPartyCodeService
    {
    }
}
