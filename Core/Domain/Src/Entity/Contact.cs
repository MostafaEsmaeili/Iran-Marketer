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
    [Table("Contact", Schema = "pm")]
    public class Contact : IEntity<long>
    {
        [Key]
        [DatabaseGeneratedDefaultValue]
        public long Id { get; set; }
        public long PartyId { get; set; }
        public string HomePhone { get; set; }
        public string BusinessPhone { get; set; }
        public string Mobile { get; set; }
        public string Fax { get; set; }
        public string HomeAddress { get; set; }
        public string BusinessAddress { get; set; }
        public string PostalCode { get; set; }
        public string WebPage { get; set; }
        public string IMAddress { get; set; }
        public string Email1 { get; set; }
        public string Email2 { get; set; }
        public string Email3 { get; set; }
        public int? RegionId { get; set; }
        public string RegionTitle { get; set; }
        public DateTime? Created { get; set; }
        public DateTime? Modified { get; set; }
        public string CreatedBy { get; set; }
        public string ModifiedBy { get; set; }
    }
}
