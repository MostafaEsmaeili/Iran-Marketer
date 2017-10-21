using System;
using System.ComponentModel;
using IranMarketer.Domain.Entity;
using ClubMembershipCostSetting = IranMarketer.Domain.DTO.ClubMembershipCostSetting;
using EstablishmentCostSetting = IranMarketer.Domain.DTO.EstablishmentCostSetting;
using FundSettlementCostSetting = IranMarketer.Domain.DTO.FundSettlementCostSetting;
using GAMCostSetting = IranMarketer.Domain.DTO.GAMCostSetting;
using SoftwareAndAccessCostSetting = IranMarketer.Domain.DTO.SoftwareAndAccessCostSetting;

namespace IranMarketer.App.Component.Model
{

        public class AllOtherExpensesModel : AbstractSetting
        {
            public OtherExpensesMaxSetting OtherExpensesMaxSetting { get; set; }
            public GAMCostSetting GAMCostSetting { get; set; }
            public Domain.DTO.EstablishmentCostSetting EstablishmentCostSetting { get; set; }
            public ClubMembershipCostSetting ClubMembershipCostSetting { get; set; }
            public SoftwareAndAccessCostSetting SoftwareAndAccessCostSetting { get; set; }

            public FundSettlementCostSetting FundSettlementCostSetting { get; set; }
            public RequestFeeSettingModel RequestFeeSetting { get; set; }

            public AllOtherExpensesModel()
            {
                OtherExpensesMaxSetting = new OtherExpensesMaxSetting();
                GAMCostSetting = new GAMCostSetting();
                EstablishmentCostSetting = new EstablishmentCostSetting();
                ClubMembershipCostSetting = new ClubMembershipCostSetting();
                SoftwareAndAccessCostSetting = new SoftwareAndAccessCostSetting();
                FundSettlementCostSetting = new FundSettlementCostSetting();
                RequestFeeSetting = new RequestFeeSettingModel();
                ;
            }

        
    }

    public class RequestFeeSettingModel
    {
       
            [Description("کارمزد ثابت صدور")]
            public decimal SubscriptionFixedWage { get; set; }
            [Description("کارمزد ثابت ابطال")]
            public decimal RedemptionFixedWage { get; set; }

            [Description("ضریب کارمزد متغیر ابطال")]
            public decimal RedemptionVariableWageFactor { get; set; }
            [Description("سقف کارمزد متغیر ابطال")]
            public decimal MaxOfRedemptionVariableWageFactor { get; set; }

            [Description("ضریب کارمزد متغیر صدور")]
            public decimal SubscriptionVariableWageFactor { get; set; }
            [Description("سقف کارمزد متغیر صدور")]
            public decimal MaxOfubscriptionVariableWageFactor { get; set; }

            public RedemptionPenalty Penalty1 { get; set; }
            public RedemptionPenalty Penalty2 { get; set; }
            public RedemptionPenalty Penalty3 { get; set; }
            public RedemptionPenalty Penalty4 { get; set; }
            public RedemptionPenalty Penalty5 { get; set; }

            public DateTime? RequestVaidateFromTime { get; set; }
            public DateTime? RequestVaidateToTime { get; set; }

        }

        public class RedemptionPenalty
        {
            public string Percent { get; set; }
            public int MaxDate { get; set; }

        }
    
        

}