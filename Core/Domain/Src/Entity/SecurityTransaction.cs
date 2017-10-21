using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Dapper.FastCrud;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.Domain.Entity
{
    [Table("SecurityTransaction", Schema = "am")]
    public class SecurityTransaction : IEntity<long>
    {
        [Key]
        [DatabaseGeneratedDefaultValue]
        public long Id { get; set; }
        public string ProductCode { get; set; }
        public string ProductName { get; set; }
        public int ProductId { get; set; }
        public string Symbol { get; set; }
        public decimal Volume { get; set; }
        public decimal Price { get; set; }
        public decimal BrokerFee { get; set; }
        public decimal ExtraTax { get; set; }
        public decimal TotalFee { get; set; }
        public decimal CSDFee { get; set; }
        public decimal TseTmcFee { get; set; }
        public decimal TseFee { get; set; }
        public decimal SeoFee { get; set; }
        public decimal Tax { get; set; }
        public decimal SellAvjPrice { get; set; }
        public decimal BuyAvjPrice { get; set; }
        public string PamCode { get; set; }
        public string TraderCode { get; set; }
        public string TicketNumber { get; set; }
        public DateTime Date { get; set; }
        public int TransactionType { get; set; }
        public int? Status { get; set; }
        public decimal Discount { get; set; }
        public int StationType { get; set; }
        public string StationTitle { get; set; }
        public decimal TotalBuyPrice { get; set; }
        public decimal TotalSellPrice { get; set; }
        public decimal TotalRestPrice { get; set; }
        public decimal RemainCount { get; set; }
        public decimal TotalPrice { get; set; }
        public decimal SellProfitOrLoss { get; set; }
        public decimal TotalSellPayedPrice { get; set; }
        public DateTime? CorporateApplyEventDate { get; set; }
        public decimal? TotalProfitCount { get; set; }
        public decimal? RemainProfitCount { get; set; }
        public decimal? ExersiceRightCount { get; set; }
        public decimal? RemainExersiceRightCount { get; set; }
        public decimal? ExersiceStockCount { get; set; }
        public decimal? RemainExersiceStockCount { get; set; }
        public int? CorporateActionId { get; set; }
        public DateTime Created { get; set; }
        public string CreatedBy { get; set; }
        public DateTime Modified { get; set; }
        public string ModifiedBy { get; set; }
        public int DataSource { get; set; }
        public decimal CouponAmount { get; set; }
        public long VoucherMasterId { get; set; }
    }
}

