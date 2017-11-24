using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Bargozideh.Framework.Infra.Service;
using Test.Dao;
using Test.Domain;

namespace Test.Service
{
    public class WorldService : Service<World,IWorldRepository,int>, IWorldService
    {

    }
}
