using System;
using System.Collections.Generic;
using System.ComponentModel;
using Pikad.Framework.Infra.Utility;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.Entity
{
    public class CustodianSetting : AbstractSetting
    {
        [Description("متولی")]
        public SimpleParty Custodian { get; set; }

        [Description("از تاریخ")]
        public DateTime CustodianFromDate { get; set; }
        [Description("تا تاریخ")]
        public DateTime CustodianToDate { get; set; }


        [Description("حداقل کارمزد برای متولی")]
        public decimal CustodianMinFeeValue { get; set; }

        [Description("حداکثر کارمزد برای متولی")]
        public decimal CustodianMaxFeeValue { get; set; }

        [Description("مالیات بر ارزش افزوده برای متولی")]
        public decimal CustodianFeeTax { get; set; }
        [Description("عوارض برای متولی")]
        public decimal CustodianFeeToll { get; set; }

        [Description("ضریب سالانه کارمزد متولی")]
        public decimal YearlyFeeFactorOnNetAsset { get; set; }
        [Description("کارمزد ثابت سالانه متولی")]
        public decimal YearlyFixedFeeValue { get; set; }

        //[Description("کارمزد متولی")]
        //public int CustodianFee { get; set; }

        //[Description(" کارمزد بازارگردان")]
        //public string CustodianTitle => ((CustodianFee)CustodianFee).GetDescription();
    }

    
}