using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Repository;
using IranMarketer.Domain.Entity;

namespace IranMarketer.SharedData.Service
{
    public interface ISectorRepository : IRepository<Sector, int>
    {
        Sector GetSectorByCode(string code);
    }
}
