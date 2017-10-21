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
    [Table("Attachment", Schema = "shd")]
    public class Attachment : IEntity<int>
    {
        [Key]
        [DatabaseGeneratedDefaultValue]
        public int Id { get; set; }
        public string Title { get; set; }
        public string SystemName { get; set; }
        public int ContentType { get; set; }
        public int CategoryId { get; set; }
        public byte[] Content { get; set; }
        public DateTime ValidFrom { get; set; }
        public DateTime? ValidTo { get; set; }
        public DateTime? UserCustomDate { get; set; }
        public int State { get; set; }
        public string Link { get; set; }
        public string CreatedBy { get; set; }
        public string ModfiedBy { get; set; }
        public DateTime Created { get; set; }
        public DateTime Modified { get; set; }
    }
}
