using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using IranMarketer.Domain.Entity;

namespace IranMarketer.Domain.DTO
{
    public class MarketMakarSetting : AbstractSetting
    {
        [Description("بازارگردان")]
        public List<SimpleParty> MarketMakar { get; set; }

        [Description("دوره قرارداد از تاریخ")]
        public string MarketMakarFromDate { get; set; }
        [Description("دوره قرار داد تا تاریخ")]
        public string MarketMakarToDate { get; set; }
        [Description("ضریب سالانه کارمزد بازارگردان (خالص ارزش دارییها)")]
        public decimal MarkertMakerFeeOnnetAsst { get; set; }

        [Description("ضریب سالانه کارمزد بازارگردان(سهم و حق تقدم)")]
        public decimal MarketMakerFeeOnEquity { get; set; }
        [Description("ضریب سالانه کارمزد بازارگردان(داراییها بدون سهم و حق تقدم)")]
        public decimal MarketMakerFeeOnOtherAssetNotEquity { get; set; }

        [Description("در نظر گرفتن مالیات و عوارض برای بازارگردان")]
        public bool ConsiderTaxAndToll { get; set; }

        public string MarketMakarString => MarketMakar!=null? string.Join("،", MarketMakar.Select(x => x.FullName).ToList()):"";

    }
}