using IranMarketer.PartyManagement.Interface;
using Pikad.Framework.Infra.Service;

namespace IranMarketer.PartyManagement.Service.RetailParty
{
    public class RetailPartyService : Service<Domain.Entity.RetailParty,IRetailPartyRepository,int>,IRetailPartyService
    {
        
    }
}