using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Entity
{
    public class CommonTaxAndTollFactorSetting : AbstractSetting
    {

        public decimal Tax { get; set; } = 6;

        public decimal Toll { get; set; } = 3;
    }
}
