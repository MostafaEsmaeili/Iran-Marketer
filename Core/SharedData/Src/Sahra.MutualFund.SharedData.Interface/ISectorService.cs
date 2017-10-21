using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Service;
using IranMarketer.Domain.Entity;

namespace IranMarketer.SharedData.Interface
{
    public interface ISectorService : IService<Sector,int>
    {
        Sector GetSectorByCode(string code);
    }
}
