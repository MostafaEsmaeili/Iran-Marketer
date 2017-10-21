using Pikad.Framework.Infra.Utility;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.App.Component.Model
{
    public class NAVModel
    {
        public DateTime Date { get; set; }
        public string JDate => Date.ConvertMiladiToJalali();
        public decimal SubscriptionNAV { get; set; }
        public decimal RedemptionNAV { get; set; }
        public decimal StaticalNAV { get; set; }
        public decimal TotalUnit { get; set; }
        public decimal TotalSubscriptionUnit { get; set; }
        public decimal TotalRedemptionUnit { get; set; }
        public decimal SubscriptionUnit { get; set; }
        public decimal RedemptionUnit { get; set; }
        public decimal TotalInvestor { get; set; }
        public decimal TotalRetailInvestor { get; set; }
        public decimal TotalInstitutionalInvestor { get; set; }
        public decimal InstitutionalInvestorUnits { get; set; }
        public decimal RetailInvestorUnits { get; set; }
        public decimal InstitutionalInvestorUnitPercent { get; set; }
        public decimal RetailInvestorUnitsPercent { get; set; }
        public int Status { get; set; }
        public int CalculationMode { get; set; }
        public decimal NetAssetValue { get; set; }
    }
}
