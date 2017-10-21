using System.Collections.Generic;
using IranMarketer.Domain.Entity;
using Pikad.Framework.Repository;

namespace IranMarketer.PartyManagement.Service
{
    public interface IWorkExprienceRepository : IRepository<WorkExperience,int>
    {
        List<WorkExperience> GetAllWorkExperiencesWithForeinKey();

    }
}