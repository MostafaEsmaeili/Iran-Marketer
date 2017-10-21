using System.Collections.Generic;
using Pikad.Framework.Repository;

namespace IranMarketer.SharedData.Service.Auditing
{
    public interface IAuditingRepository : IRepository<Domain.Entity.Auditing,int>
    {
        void SaveAuditing(Domain.Entity.Auditing auditing);
    }
}