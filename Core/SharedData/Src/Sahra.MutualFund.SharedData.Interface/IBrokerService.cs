using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Service;
using IranMarketer.Domain.Entity;

namespace IranMarketer.SharedData.Interface
{
    public interface IBrokerService : IService<Broker, int>
    {
        List<Broker> GetBrokers();
        Broker GetBrokerByCode(string code);
        
    }
}
