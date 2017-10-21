using System.ComponentModel;

namespace IranMarketer.Domain.Enum
{
    public enum SettingType
    {
        [Description("Unknown")]
        Unknown = 0,
        [Description("GeneralFundSetting")]
        GeneralFundSetting = 1,
        [Description("ManagementSetting")]
        ManagementSetting = 2,
        [Description("BranchManagerSetting")]
        BranchManagerSetting = 3,
        [Description("InvestmentManagerSetting")]
        InvestmentManagerSetting = 4,
        [Description("ProfitGuaranteeSetting")]
        ProfitGuaranteeSetting = 5,
        [Description("LiquidityGuaranteeSetting")]
        LiquidityGuaranteeSetting = 6,
        [Description("MarketMakarSetting")]
        MarketMakarSetting = 7,
        [Description("CustodianSetting")]
        CustodianSetting = 8,
        [Description("AuditorSetting")]
        AuditorSetting = 9,
        [Description("OtherExpensesMaxSetting")]
        OtherExpensesMaxSetting = 10,
        [Description("FundSettlementCostSetting")]
        FundSettlementCostSetting = 11,
        [Description("SoftwareAndAccessCostSetting")]
        SoftwareAndAccessCostSetting = 12,
        [Description("RequestFeeSetting")]
        RequestFeeSetting = 13,
        [Description("EstablishmentCostSetting")]
        EstablishmentCostSetting = 14,
        [Description("ClubMembershipCostSetting")]
        ClubMembershipCostSetting = 15,
        [Description("GAMCostSetting")]
        GAMCostSetting = 16,
        [Description("CommonTaxAndTollFactorSetting")]
        CommonTaxAndTollFactorSetting = 17,
        [Description("AllOtherExpensesSetting")]
        AllOtherExpensesSetting = 18,
        [Description("RequestCalculationProcessSetting")]
        RequestCalculationProcessSetting = 19,
        [Description("TseEquityFeeSetting")]
        TseEquityFeeSetting = 20,
        [Description("IFBEquityFeeSetting")]
        IFBEquityFeeSetting = 21,
        [Description("TseBondFeeSetting")]
        TseBondFeeSetting = 22,
        [Description("IFBBondFeeSettingService")]
        IFBBondFeeSetting = 23
    }
}