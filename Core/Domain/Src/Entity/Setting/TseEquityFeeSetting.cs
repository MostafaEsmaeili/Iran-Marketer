using System;
using System.ComponentModel;

namespace IranMarketer.Domain.Entity
{
    public class TseEquityFeeSetting : AbstractSetting
    {

        //کارمزد کارگزاری
      
        public decimal BrokerBuyFee { get; set; }
        public decimal MaxBrokerBuyFee { get; set; }
        public decimal BrokerBuyFeeDiscount { get; set; }
        public decimal BrokerSellFee { get; set; }
        public decimal MaxBrokerSellFee { get; set; }
        public decimal BrokerSellFeeDiscount { get; set; }

        //کارمزد بورس
  
        public decimal SeoBuyFee { get; set; }
        public decimal MaxSeoBuyFee { get; set; }
        public decimal SeoBuyFeeDiscount { get; set; }
        public decimal SeoSellFee { get; set; }
        public decimal MaxSeoSellFee { get; set; }
        public decimal SeoSellFeeDiscount { get; set; }


        //کارمزد سپرده گزاری

        /// <summary>
        /// سپرده گزاری خرید
        /// </summary>
        public decimal CsdBuyFee { get; set; }
        public decimal MaxCsdBuyFee { get; set; }
        public decimal CsdBuyFeeDiscount { get; set; }
        /// <summary>
        /// سپرده گزاری خرید
        /// </summary>
        public decimal CsdSellFee { get; set; }
        public decimal MaxCsdSellFee { get; set; }
        public decimal CsdSellFeeDiscount { get; set; }



        //کارمزد مدیریت فن آوری

        public decimal TseTmcBuyFee { get; set; }
        public decimal MaxTseTmcBuyFee { get; set; }
        public decimal TseTmcBuyDiscount { get; set; }
        public decimal TseTmcSellFee { get; set; }
        public decimal MaxTseTmcSellFee { get; set; }
        public decimal TseTmcSellDiscount { get; set; }


        //حق نظارت سازمان
       
        public decimal TseBuyFee { get; set; }
        public decimal MaxTseBuyFee { get; set; }
        public decimal TseBuyFeeDiscount { get; set; }
        public decimal TseSellFee { get; set; }
        public decimal MaxTseSellFee { get; set; }
        public decimal TseSellFeeDiscount { get; set; }

        //مالیات
       
        public decimal SellTax { get; set; }
        //public decimal SellTaxDiscount { get; set; }

        public decimal TotalBuyFee => (1 + this.BrokerBuyFee * ((100 - this.BrokerBuyFeeDiscount) / 100) +
                                                  SeoBuyFee * (100 - this.SeoBuyFeeDiscount) / 100 +
                                                  CsdBuyFee * (100 - this.CsdBuyFeeDiscount) / 100 +
                                                  TseTmcBuyFee * (100 - this.TseTmcBuyDiscount) / 100 +
                                                  TseBuyFee * (100 - this.TseBuyFeeDiscount) / 100);


        public decimal TotalSellFee => 1 -
                                       (BrokerSellFee * (100 - this.BrokerSellFeeDiscount) / 100 +
                                        SeoSellFee * (100 - this.SeoSellFeeDiscount) / 100 +
                                        CsdSellFee * (100 - this.CsdSellFeeDiscount) / 100 +
                                        TseTmcSellFee * (100 - this.TseTmcSellDiscount) / 100 +
                                        TseSellFee * (100 - this.TseSellFeeDiscount) / 100 + SellTax);
    }


}
