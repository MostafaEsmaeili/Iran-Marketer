using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Logging;

namespace IranMarketer.Common
{
    public abstract class BaseProvider
    {
        public CustomLogger Logger => new CustomLogger(GetType().FullName);
    }
}
