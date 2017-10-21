using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.App.Component.Model
{
    public class TradeReportModel
    {
        public string FromDate { get; set; }
        public string ToDate { get; set; }
        public string BrokerCode { get; set; }
        public int TradeType { get; set; }
        public int ProductId { get; set; }
    }
}
