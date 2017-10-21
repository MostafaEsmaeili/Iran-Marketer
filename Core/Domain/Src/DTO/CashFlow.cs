using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.DTO
{
    public class CashFlow
    {
        public CashFlowMaster CashFlowMaster { get; set; }

        public List<CashFlowDetail> CashFlowDetails { get; set; }
    }
}
