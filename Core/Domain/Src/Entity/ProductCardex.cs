using System.Collections.Generic;
using Pikad.Framework.Infra.Utility;

namespace IranMarketer.Domain.Entity
{
    public class ProductCardex
    {
        public ProductCardex()
        {
            CardexRows = new List<SecurityTransaction>();

        }

        #region Property Members

        #region CardexRow

        public List<SecurityTransaction> CardexRows { get; set; }



        #endregion

        #region Count

        /// <summary>
        /// مقدار سهام باقی مانده
        /// </summary>
        public decimal Count
        {
            get
            {
                if (this.CardexRows.Count > 0)
                {
                    return this.CardexRows[this.CardexRows.Count - 1].RemainCount.SafeDecimal();
                }
                else
                {
                    return 0;
                }
            }

        }

        #endregion

        #region Product

        public Product Product { get; set; }

        #endregion

        #region SumSellBenefit

        /// <summary>
        /// سود (زیان) سهام فروش رفته 
        /// </summary>
        public decimal SumSellBenefit { get; set; }

        #endregion

        #region TotalRestPrice

        public decimal TotalRestPrice { get; set; }



        #endregion

        public decimal SumSell { get; set; }
        public decimal SumBuy { get; set; }
        public decimal TotalSellPrice { get; set; }
        public decimal TotalBuyPrice { get; set; }
        public decimal TotalSellBenefit { get; set; }
        public decimal TotalSellPayedPrice { get; set; }

        #endregion

    }
}
