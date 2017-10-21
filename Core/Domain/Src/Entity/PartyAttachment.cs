using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper.FastCrud;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.Domain.Entity
{
    [Table("PartyAttachment", Schema = "pm")]
    public class PartyAttachment : IEntity<int>
    {
        public long? PartyId { get; set; }
        public int? AttachmentId { get; set; }
        public string CreatedBy { get; set; }
        [Key]
        [DatabaseGeneratedDefaultValue]
        public int Id { get; set; }
        public string ModifiedBy { get; set; }
        public int? Status { get; set; }
    }
}
