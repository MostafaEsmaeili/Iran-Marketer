using System.Collections.Generic;
using Pikad.Framework.Infra.Service;
using IranMarketer.Domain.Entity;

namespace IranMarketer.SharedData.Interface
{
    public interface IAuditingService : IService<Auditing,int>
    {
        void SaveAuditing(Auditing auditing);

        List<Auditing> GetAuditings();
    }
}