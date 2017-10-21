using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.Domain.Entity
{
    public class SimpleSecurityPosition : IEntity<long>
    {
        public long Id { get; set; }
        public DateTime PositionDate { get; set; }
        public string Isin { get; set; }
        public int ProductId { get; set; }
        public string Symbol { get; set; }
        public string ProductTitle { get; set; }
        public decimal RemainVolume { get; set; }
        public decimal CouponAmount { get; set; }
        public decimal ClosePrice { get; set; }
        public decimal AdjustedPrice { get; set; }
        public int AdjustedPriceType { get; set; }

    }
}
