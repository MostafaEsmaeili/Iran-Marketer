using IranMarketer.PartyManagement.Interface;
using Pikad.Framework.Infra.Service;

namespace IranMarketer.PartyManagement.Service.LegalParty
{
    public class LegalPartyService : Service<Domain.Entity.LegalParty, ILegalPartyRepository, int>, ILegalPartyService
    {
        
    }
}