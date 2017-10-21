using IranMarketer.PartyManagement.Interface;
using Pikad.Framework.Infra.Service;

namespace IranMarketer.PartyManagement.Service
{
    public class PartyUniversityService : Service<Domain.Entity.PartyUniversity, IPartyUniversityRepository, int>,
        IPartyUniversityService
    {

    }
}