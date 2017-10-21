using System;
using System.Collections.Generic;
using System.ComponentModel;
using Pikad.Framework.Infra.Utility;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.DTO
{
    public class ProfitGuaranteeSetting : AbstractSetting
    {
        [Description("ضامن سود آوری")]
        public SimpleParty ProfitGuarantor { get; set; }
        [Description(" نرخ سود تضمینی سالانه")]
        public decimal GuaranteedAnnualProfitRate { get; set; }
        [Description("دوره تضمین از تاریخ")]
        public string GuaranteePeriodFromDate { get; set; }



        [Description("دوره تضمین تا تاریخ")]
        public string GuaranteePeriodToDate { get; set; }

        [Description("ضریب سالانه کارمزد ضامن سودآوری(سهم و حق تقدم)")]
        public decimal ProfitGuarantorFeeOnEquity { get; set; }

        [Description("ضریب سالانه کارمزد ضامن سودآوری(داراییها بدون سهم و حق تقدم)")]
        public decimal ProfitGuarantorFeeOnOtherAssetWithOutEquity { get; set; }


        [Description("ضریب سالانه کارمزد ضامن سود آوری ( ارزش روزانه ی اوراق بهادار بادرآمد ثابت)")]
        public decimal ProfitGuarantorFeeOnFixedIncome { get; set; }

        [Description("ضریب سالانه کارمزد ضامن سودآوری(داراییهاِ اوراق بادرآمد ثابت و سپرده بانکی بدون سهم و حق تقدم)")]
        public decimal ProfitGuarantorFeeOnFixedIncomeAndBankDepositOnly { get; set; }
        [Description("در نظر گرفتن مالیات و عوارض برای ضامن سود آوری")]
        public bool ConsiderTaxAndToll { get; set; }
    }
}