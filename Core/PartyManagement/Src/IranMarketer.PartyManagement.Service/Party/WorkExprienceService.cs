using System;
using System.Collections.Generic;
using IranMarketer.Domain.Entity;
using IranMarketer.PartyManagement.Interface;
using Pikad.Framework.Infra.Service;

namespace IranMarketer.PartyManagement.Service
{
    public class WorkExprienceService:Service<WorkExperience,IWorkExprienceRepository,int>,IWorkExprienceService
    {
        public List<WorkExperience> GetAllWorkExperiencesWithForeinKey()
        {
            try
            {
                return Dao.GetAllWorkExperiencesWithForeinKey();
            }
            catch (Exception e)
            {
               
                throw;
            }
        }
    }
}