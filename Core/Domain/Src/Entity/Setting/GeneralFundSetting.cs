using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;
using Pikad.Framework.Infra.Utility;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.Entity
{
    public class GeneralFundSetting : AbstractSetting
    {
        [Description("نام صندوق")]
        public string FundTitle { get; set; }

        [Description("نام اختصاصی صندوق")]
        public string ProprietaryFundName { get; set; }

        [Description("اندازه صندوق")]
        public int FundSize { get; set; }

        [Description("اندازه صندوق")]
        [JsonIgnore]
        public string FundSizeTitle => ((FundSize)FundSize).GetDescription();


        [Description("تضمین سود آوری")]
        public int DividendGuarantee { get; set; }

        [Description("تضمین سود آوری")]
        [JsonIgnore]
        public string DividendGuaranteeTitle => ((DividendsGuaranteeType)DividendGuarantee).GetDescription();

        [Description("مقاطع تقسیم سود")]
        public int DividendPeriod { get; set; }

        [Description("مقاطع تقسیم سود")]
        [JsonIgnore]
        public string DividendPeriodTitle => ((FundDividendsPeriod)DividendPeriod).GetDescription();

        [Description("نرخ تضمین سود آوری")]
        public decimal DividendGuaranteePercent { get; set; }

        [Description("حداقل روز مشمول تضمین")]
        public int DividendGuaranteeDays { get; set; }

        [Description("تاریخ مجوز تاسیس")]
        public DateTime EstablishmentLicenseDate { get; set; }

        [Description("شماره ثبت نزد شرکت ها")]
        public string CompanyRegisterNumber { get; set; }

        [Description("شماره ثبت نزد سازمان")]
        public string SeoRegisterNumber { get; set; }

        [Description("شماره ملی")]
        public string NationalIdentification { get; set; }

        [Description("حداقل واحد مجاز")]
        public int MinUnit { get; set; }

        [Description("تعداد واحد های عادی")]
        public int RegularUnitCount { get; set; }

        [Description("نام لاتین")]
        public string FundEnglishName { get; set; }

        [Description("نوع صندوق")]
        public int FundType { get; set; }

        [Description("نوع صندوق")]
        [JsonIgnore]
        public string FundTypeTitle => ((FundType)FundType).GetDescription();

        [Description("ارزش مبنا")]
        public decimal FundNav { get; set; }

        [Description("کد بورسی")]
        public string BourseCode { get; set; }
        [Description("کد معاملاتی")]
        public string PamCode { get; set; }

        [Description("روز تقسیم سود هر دوره")]
        public int DayOfProfitSharing { get; set; }

        [Description("تاریخ دریافت مجوز سبد گردانی")]
        public DateTime DateOfPortfolioManagementLicense { get; set; }

        [Description("دوره فعالیت از تاریخ")]
        public DateTime ActivityFromDate { get; set; }

        [Description("دوره فعالیت تا تاریخ")]
        public DateTime ActivitytoDate { get; set; }

        [Description("حداکثر تعداد واحد صندوق")]
        public int FundMaxUints { get; set; }

        [Description("حداکثر تعداد واحد موسسان")]
        public decimal BoardMembersMaxUnits { get; set; }

        [Description("حداکثر تعداد واحد غیر موسسان و ارکان")]
        public decimal NoneFundBoardMembersMaxUnitsType { get; set; }

        [Description("حداقل تعداد درخواست")]
        public int FundMinRequest { get; set; }

        [Description("تعداد واحد ممتاز")]
        public int PrefferedUnitCount { get; set; }

    }
}
