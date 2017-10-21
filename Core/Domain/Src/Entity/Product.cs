using Pikad.Framework.UnitOfWork;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper.FastCrud;

namespace IranMarketer.Domain.Entity
{
    [Table("Product", Schema = "shd")]
    public class Product : IEntity<int>
    {
        [Key]
        [DatabaseGeneratedDefaultValue]
        public int Id { get; set; }
        public string Title { get; set; }
        public string TitleEN { get; set; }
        public string CompanyTitle { get; set; }
        public string Symbol { get; set; }
        public string SymbolEN { get; set; }
        public string SymbolNameCode { get; set; }
        public string CompanyNameCode { get; set; }
        public string CompanyISIN { get; set; }
        public string ISIN { get; set; }
        public string ProductCode { get; set; }
        public DateTime? StartDate { get; set; }
        public DateTime? EndDate { get; set; }
        public DateTime ValidFrom { get; set; }
        public DateTime? ValidTo { get; set; }
        public int Status { get; set; }
        public DateTime? PublishDate { get; set; }
        public DateTime? UsanceDate { get; set; }
        public DateTime? SubscriptionStart { get; set; }
        public DateTime? SubscriptionEnd { get; set; }
        public int? ProductClassification { get; set; }
        public int? AssetType { get; set; }
        public int? ProductType { get; set; }
        public int? StockExchangeId { get; set; }
        public int? SettlementDays { get; set; }
        public int? LOT { get; set; }
        public int? SectorId { get; set; }
        [NotMapped]
        public string SectorCode { get; set; }

        public string TseInsCode { get; set; }
        public string MarketCode { get; set; }
        public decimal? MarketCap { get; set; }
        public decimal? BaseVolume { get; set; }
        public DateTime? FirstTradeDate { get; set; }
        public DateTime LastModifiedDate { get; set; }
        public DateTime CreateDate { get; set; }
    }
}
