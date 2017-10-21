using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Utility;
using IranMarketer.Domain.DTO;

namespace IranMarketer.Domain.Entity
{
    public class ManagementSetting : AbstractSetting
    {
        /// <summary>
        /// صندوق های پروژه و زمین و ساختمان
        /// </summary>
        [Description("مدیر اجرا")]
        public SimpleParty OperatinalAdministrator { get; set; }
        [Description("مدیر صندوق")]
        public SimpleParty FundManager { get; set; }

        [Description("حداقل تعداد واحد مدیر")]
        public int MinManagerUnit { get; set; }
        [Description("حداکثر تعداد واحد مدیر")]
        public int MaxManagerUnit { get; set; }

        [Description("درصد از سهام و حق تقدم")]
        public decimal PercentageFromEquity { get; set; }
        [Description("درصد از اوراق با درآمد ثابت")]
        public decimal PercentageFromBond { get; set; }
        [Description("درصد از اوراق گواهی سپرده")]
        public decimal  PercentageFromCoupon { get; set; }
        [Description("درصد از تفاوت سود بانکی")]
        public decimal DiffPercentFromBankDeposit { get; set; }
        [Description("درصد از خالص ارزش دارایی ها")]
        public decimal PercentageFromNetAssetValue { get; set; }
        [Description("نرخ ثابت سالیانه")]
        public decimal YearlyFixedRate { get; set; }

        /// <summary>
        /// در نظر گرفتن مالیات و عوارض برای مدیر
        /// </summary>
        public bool ConsiderTaxAndToll { get; set; }
        public bool ConsiderTaxAndTollFromDiffOfBankDeposit { get; set; }


    }

    //TODO performance fee
}
