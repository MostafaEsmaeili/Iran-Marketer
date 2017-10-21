using System;
using System.Collections.Generic;
using Pikad.Framework.Infra.Validation;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.Domain.Filters;

namespace IranMarketer.Domain.DTO
{
    public class AllOtherExpenses : AbstractSetting
    {
        public OtherExpensesMaxSetting OtherExpensesMaxSetting { get; set; }
        public GAMCostSetting GAMCostSetting { get; set; }
        public EstablishmentCostSetting EstablishmentCostSetting { get; set; }
        public ClubMembershipCostSetting ClubMembershipCostSetting { get; set; }
        public SoftwareAndAccessCostSetting SoftwareAndAccessCostSetting { get; set; }

        public FundSettlementCostSetting FundSettlementCostSetting { get; set; }
        public RequestFeeSetting RequestFeeSetting { get; set; }

        public AllOtherExpenses()
        {
            OtherExpensesMaxSetting=new OtherExpensesMaxSetting();
            GAMCostSetting=new GAMCostSetting();
            EstablishmentCostSetting=new EstablishmentCostSetting();
            ClubMembershipCostSetting=new ClubMembershipCostSetting();
            SoftwareAndAccessCostSetting=new SoftwareAndAccessCostSetting();
            FundSettlementCostSetting=new FundSettlementCostSetting();
            RequestFeeSetting=new RequestFeeSetting();
            ;
        }

    }
}