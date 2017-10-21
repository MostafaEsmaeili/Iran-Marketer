using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.Domain.Entity
{
    [Table("ProductDetailLedger", Schema = "shd")]
    public class ProductDetailLedger : IEntity<int>
    {
        public int Id { get; set; }
        public string ISIN { get; set; }
        public int ProductId { get; set; }
        public string DetailLedgerCode { get; set; }
        public long DetailLedgerId { get; set; }


    }
}
