using Pikad.Framework.Repository;
using IranMarketer.Domain.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.SharedData.Service
{
    public interface IRegionRepository : IRepository<Region, int>
    {
        List<Region> SearchRegions(string filter,int type);
    }
}
