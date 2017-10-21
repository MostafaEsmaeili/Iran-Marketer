using System;
using System.ComponentModel.DataAnnotations.Schema;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.Domain.Entity
{
    public class SecurityPosition : IEntity<long>
    {
        public long Id { get; set; }
        public decimal RemainValue { get; set; }
        //public DateTime CreationDate { get; set; }
        //public DateTime LastModificationDate { get; set; }
        public string Isin { get; set; }
        public int ProductId { get; set; }
        public string PortfolioBackOfficeCode { get; set; }
        public DateTime PositionDate { get; set; }
        public decimal PercentageOfTotalAssets { get; set; }
        public decimal PercentageOfTotalSecurities { get; set; }
    
        public string Symbol { get; set; }
    
        public string ProductTitle { get; set; }

        public int Status { get; set; }
  
        public decimal LastTradePrice { get; set; }
   
        public decimal ClosePrice { get; set; }
 
        public decimal CouponAmount { get; set; }
   
        public decimal NetAmount { get; set; }
        public decimal AdjustedPrice { get; set; }
      
        public decimal BuyAvgPrice { get; set; }

        public decimal SellAvgPrice { get; set; }
 
        public decimal PercentageOfTotalSector { get; set; }
  
        public string SectorCode { get; set; }
  
        public string SectorTitle { get; set; }
    
        public int SectorParentId { get; set; }
  
        public string StockExchange { get; set; }

        //public decimal AvgBookCost { get; set; }

        //public decimal ProfitOrLossOfCurrent => RemainValue * (ClosePrice - AvgBookCost) * 0;

    }

   

}

