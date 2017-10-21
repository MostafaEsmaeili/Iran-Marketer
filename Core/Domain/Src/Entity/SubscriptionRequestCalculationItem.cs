using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Entity
{
    public class SubscriptionRequestCalculationItem
    {
        public decimal AdjustedValue { get; set; }
        public decimal RemainValue { get; set; }
        /// <summary>
        /// basenav * volume
        /// </summary>
        public decimal BaseValue { get; set; }
        public decimal TotalFeeValue { get; set; }
        public decimal TotalTaxValue { get; set; }
        public Request Request { get; set; }
    }
}
