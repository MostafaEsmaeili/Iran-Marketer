using System;
using System.Collections.Generic;
using System.ComponentModel;
using Pikad.Framework.Infra.Utility;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.DTO
{
    public class LiquidityGuaranteeSetting : AbstractSetting
    {
        [Description("ضامن نقد شوندگی اول")]
        public SimpleParty LiquidityGuarantorFirst { get; set; }

        [Description("ضامن نقد شوندگی دوم")]
        public SimpleParty LiquidityGuarantorTwo { get; set; }

        public LiquidityGuaranteeFee LiquidityGuaranteeFeeForFirst { get; set; }

        public LiquidityGuaranteeFee LiquidityGuaranteeFeeForTwo { get; set; }

    }

    public class LiquidityGuaranteeFee
    {


        [Description("ضریب سالانه کارمزد ضامن(سهم و حق تقدم)")]
        public decimal LiquidityGuarantorFeeFactorOnEquity { get; set; }
        [Description("ضریب سالانه کارمزد ضامن(داراییها بدون سهم و حق تقدم)")]
        public decimal LiquidityGuarantorFeeFactorOnOtherAssetWitoutEquity { get; set; }
        [Description("ضریب سالانه کارمزد ضامن(داراییهای اوراق با درآمد ثابت و سپرده بانکی بدون سهم و حق تقدم)")]
        public decimal LiquidityGuarantorFeeFactorFixedIncomeAndbankDepositOnly { get; set; }
        [Description("ضریب سالانه کارمزد ضامن سود آوری ( ارزش روزانه ی اوراق بهادار بادرآمد ثابت)")]
        public decimal LiquidityGuarantorFeeFactorOnFixedIncome { get; set; }


        [Description("دوره تضمین  ضامن  از تاریخ")]
        public string GuaranteePeriodFromDate { get; set; }
        [Description("دوره تضمین  تا تاریخ")]
        public string GuaranteePeriodToDate { get; set; }

        public bool ConsiderTaxAndToll { get; set; }

        //[Description("دوره تضمین  دوم از تاریخ")]
        //public DateTime SecoundGuaranteePeriodFromDate { get; set; }
        //[Description("دوره تضمین دوم تا تاریخ")]
        //public DateTime SecoundGuaranteePeriodToDate { get; set; }
    }
}