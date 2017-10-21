using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Entity
{
    public class RedemptionRequestCalculationItem
    {
        public decimal AdjustedValue { get; set; }
        public decimal TotalValue { get; set; }

        public decimal Penalty { get; set; }
        /// <summary>
        /// basenav * volume
        /// </summary>
        public decimal BaseValue { get; set; }
        public decimal TotalFeeValue { get; set; }
        public decimal TotalTaxValue { get; set; }
        public decimal GuaranteeValue { get; set; }
        public Request Request { get; set; }
    }
}
