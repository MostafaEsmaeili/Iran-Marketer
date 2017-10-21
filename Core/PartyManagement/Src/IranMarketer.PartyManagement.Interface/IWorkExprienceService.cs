using System.Collections.Generic;
using IranMarketer.Domain.Entity;
using Pikad.Framework.Infra.Service;

namespace IranMarketer.PartyManagement.Interface
{
    public interface IWorkExprienceService : IService<WorkExperience,int>
    {
        List<WorkExperience> GetAllWorkExperiencesWithForeinKey();
    }
}