using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.App.Component.Model
{
    public class CloseNAVModel : BaseModel
    {
        public string StartCloseNAVDate { get; set; }
        public string EndCloseNAVDate { get; set; }
        public decimal TotalUnits { get; set; }
        public decimal BrokerAccountRemain { get; set; }
        public decimal RedemptionVolume { get; set; }
        public decimal SubscriptionValue { get; set; }
        public string LastNAVDate { get; set; }
        public decimal LastRedemptionNAV { get; set; }
        public decimal LastSubscriptionNAV { get; set; }
        public decimal LastStaticalNAV { get; set; }


    }
}
