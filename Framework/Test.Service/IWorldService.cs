using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Service;
using Test.Domain;

namespace Test.Service
{
    public interface IWorldService : IService<World, int>
    {
    }
}
