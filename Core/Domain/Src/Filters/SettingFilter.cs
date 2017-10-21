using System;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Entity;
using AuditorSetting = IranMarketer.Domain.DTO.AuditorSetting;
using ClubMembershipCostSetting = IranMarketer.Domain.DTO.ClubMembershipCostSetting;
using EstablishmentCostSetting = IranMarketer.Domain.DTO.EstablishmentCostSetting;
using FundSettlementCostSetting = IranMarketer.Domain.DTO.FundSettlementCostSetting;
using GAMCostSetting = IranMarketer.Domain.DTO.GAMCostSetting;
using GeneralFundSetting = IranMarketer.Domain.DTO.Setting.GeneralFundSetting;
using LiquidityGuaranteeSetting = IranMarketer.Domain.DTO.LiquidityGuaranteeSetting;
using MarketMakarSetting = IranMarketer.Domain.DTO.MarketMakarSetting;
using ProfitGuaranteeSetting = IranMarketer.Domain.DTO.ProfitGuaranteeSetting;
using SoftwareAndAccessCostSetting = IranMarketer.Domain.DTO.SoftwareAndAccessCostSetting;

namespace IranMarketer.Domain.Filters
{
    public class GeneralSettingFilter : ReportFilter
    {
        public DateTime Date { get; set; }
        public string Guid { get; set; }

    }
    public class AddGeneralSettingFilter : ReportFilter
    {
        public GeneralFundSetting Setting { get; set; }

    }
    public class AddManagementSettingFilter : ReportFilter
    {
        public ManagementSetting Setting { get; set; }

    }
    public class AddSoftwareAndAccessCostSettingFilter : ReportFilter
    {
        public SoftwareAndAccessCostSetting Setting { get; set; }
    }
    public class AddClubMembershipCostSettingFilter : ReportFilter
    {
        public ClubMembershipCostSetting Setting { get; set; }

    }
    public class AddEstablishmentCostSettingFilter : ReportFilter
    {
        public EstablishmentCostSetting Setting { get; set; }

    }
    public class AddGAMCostSettingFilter : ReportFilter
    {
        public GAMCostSetting Setting { get; set; }

    }
    public class AddOtherExpensesMaxSettingFilter : ReportFilter
    {
        public OtherExpensesMaxSetting Setting { get; set; }

    }
    public class AddCustodianSettingFilter : ReportFilter
    {
        public Domain.DTO.CustodianSetting Setting { get; set; }

    }
    public class AddAllOtherExpensesSettingFilter : ReportFilter
    {
        //public OtherExpensesMaxSetting OtherExpensesMaxSetting { get; set; }
        //public GAMCostSetting GAMCostSetting { get; set; }
        //public EstablishmentCostSetting EstablishmentCostSetting { get; set; }
        //public ClubMembershipCostSetting ClubMembershipCostSetting { get; set; }
        //public SoftwareAndAccessCostSetting SoftwareAndAccessCostSetting { get; set; }
        public AllOtherExpenses Setting { get; set; }


    }
    public class AddInvestmentManagerSettingFilter : ReportFilter
    {
        public InvestmentManagerSetting Setting { get; set; }

    }
    public class AddLiquidityGuaranteeSettingFilter : ReportFilter
    {
        public LiquidityGuaranteeSetting Setting { get; set; }

    }
    public class AddBranchManagerSettingFilter : ReportFilter
    {
        public BranchManagerSetting Setting { get; set; }

    }
    public class AddProfitGuaranteeSettingFilter : ReportFilter
    {
        public ProfitGuaranteeSetting Setting { get; set; }

    }
    public class AddMarketMakarSettingFilter : ReportFilter
    {
        public MarketMakarSetting Setting { get; set; }

    }
    public class AddFundSettlementCostSettingFilter : ReportFilter
    {
        public FundSettlementCostSetting Setting { get; set; }

    }
    public class AddAuditorSettingFilter : ReportFilter
    {
        public AuditorSetting Setting { get; set; }

    }
    public class AddRequestFeeSettingFilter : ReportFilter
    {
        public RequestFeeSetting Setting { get; set; }
    }

    public class AddRequestCalculationProcessSettingFilter : ReportFilter
    {
        public RequestCalculationProcessSetting Setting { get; set; }
    }

   
}