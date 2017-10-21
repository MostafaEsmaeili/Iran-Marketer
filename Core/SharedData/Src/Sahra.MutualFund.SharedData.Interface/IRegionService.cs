using Pikad.Framework.Infra.Service;
using IranMarketer.Domain.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.Enum;

namespace IranMarketer.SharedData.Interface
{
    public interface IRegionService : IService<Region, int>
    {
        List<Region> SearchRegions(string filter, RegionType regionType);
    }
}
