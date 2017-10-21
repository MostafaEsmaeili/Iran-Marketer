using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.SharedData.Interface;
using Pikad.Framework.Infra.Service;

namespace IranMarketer.SharedData.Service
{
    public  class JobCategoryService :Service<Domain.Entity.JobCategory,IJobCategoryRepository,int>,IJobCategoryService
    {
       
    }
}
