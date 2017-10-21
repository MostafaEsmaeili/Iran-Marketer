using System;
using System.ComponentModel;
using Newtonsoft.Json;
using Pikad.Framework.Infra.Utility;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.DTO.Setting
{
    public class GeneralFundSetting:AbstractSetting
    {
        [Description("نام صندوق")]
        public string FundTitle { get; set; }

        [Description("نام اختصاصی صندوق")]
        public string ProprietaryFundName { get; set; }

        [Description("اندازه صندوق")]
        public FundSize FundSize { get; set; }
        public string FundSizeTitle { get; set; }


        [Description("تضمین سود آوری")]
        public DividendsGuaranteeType DividendGuarantee { get; set; }

        public string DividendGuaranteeTitle { get; set; }


        [Description("مقاطع تقسیم سود")]
        public FundDividendsPeriod DividendPeriod { get; set; }

        public string DividendPeriodTitle { get; set; }


        [Description("تاریخ مجوز تاسیس")]
        public string EstablishmentLicenseDate { get; set; }

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
        public FundType FundType { get; set; }
        public string FundTypeTitle { get; set; }


        [Description("ارزش مبنا")]
        public decimal FundNav { get; set; }


        [Description("کد بورسی")]
        public string BourseCode { get; set; }
        [Description("کد معاملاتی")]
        public string PamCode { get; set; }

        [Description("روز تقسیم سود هر دوره")]
        public int DayOfProfitSharing { get; set; }

        [Description("تاریخ دریافت مجوز سبد گردانی")]
        public string DateOfPortfolioManagementLicense { get; set; }

        [Description("دوره فعالیت از تاریخ")]
        public string ActivityFromDate { get; set; }

        [Description("دوره فعالیت تا تاریخ")]
        public string ActivitytoDate { get; set; }

        [Description("حداکثر تعداد واحد صندوق")]
        public int FundMaxUints { get; set; }

        [Description("حداکثر تعداد واحد موسسان")]
        public double BoardMembersMaxUnits { get; set; }

        [Description("حداکثر تعداد واحد غیر موسسان و ارکان")]
        public double NoneFundBoardMembersMaxUnitsType { get; set; }

        [Description("حداقل تعداد درخواست")]
        public int FundMinRequest { get; set; }

        [Description("تعداد واحد ممتاز")]
        public int PrefferedUnitCount { get; set; }
        public string Guid { get; set; }

    }
}