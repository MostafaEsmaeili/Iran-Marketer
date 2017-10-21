using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.App.Component.Model
{
    public class CashFlowMasterReportModel
    {
        public string FromDate { get; set; }
        public string ToDate { get; set; }
        public int State { get; set; }
        public int TransactionType { get; set; }
        public int Category { get; set; }
    }
}
