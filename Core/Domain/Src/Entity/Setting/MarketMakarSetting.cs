using System;
using System.Collections.Generic;
using System.ComponentModel;
using Pikad.Framework.Infra.Utility;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.Entity
{
    public class MarketMakarSetting : AbstractSetting
    {
        [Description("بازارگردان")]
        public List<SimpleParty> MarketMakar { get; set; }

        [Description("دوره قرارداد از تاریخ")]
        public DateTime MarketMakarFromDate { get; set; }
        [Description("دوره قرار داد تا تاریخ")]
        public DateTime MarketMakarToDate { get; set; }
        [Description("ضریب سالانه کارمزد بازارگردان (خالص ارزش دارییها)")]
        public decimal MarkertMakerFeeOnNetAssetValue { get; set; }

        [Description("ضریب سالانه کارمزد بازارگردان(سهم و حق تقدم)")]
        public decimal MarketMakerFeeOnEquity { get; set; }
        [Description("ضریب سالانه کارمزد بازارگردان(داراییها بدون سهم و حق تقدم)")]
        public decimal MarketMakerFeeOnOtherAssetNotEquity { get; set; }

        [Description("در نظر گرفتن مالیات و عوارض برای بازارگردان")]
        public bool ConsiderTaxAndToll { get; set; }
    }
}