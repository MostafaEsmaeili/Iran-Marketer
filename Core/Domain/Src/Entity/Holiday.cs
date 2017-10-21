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
    [Table("Holiday", Schema = "shd")]
    public class Holiday : IEntity<int>
    {
        [Key]
        [DatabaseGeneratedDefaultValue]
        public int Id { get; set; }
        public DateTime? Date { get; set; }
        public int? MarketCode { get; set; }
    }
}
