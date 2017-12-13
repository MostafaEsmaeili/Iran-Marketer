using IranMarketer.PartyManagement.Interface;
using Pikad.Framework.Infra.Service;

namespace IranMarketer.PartyManagement.Service.PartyProject
{
    public class PartyProjectService : Service<Domain.Entity.PartyProject,IPartyProjectRepository,int>,IPartyProjectService
    {
        
    }
}