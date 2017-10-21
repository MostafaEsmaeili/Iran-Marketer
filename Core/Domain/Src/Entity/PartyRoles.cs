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
    [Table("PartyRoles", Schema = "pm")]
    public class PartyRoles : IEntity<long>
    {
        [Key]
        [DatabaseGeneratedDefaultValue]
        public long Id { get; set; }
        public long PartyId { get; set; }
        public int PersonalityRoleCodeId { get; set; }
        public DateTime? ValidFrom { get; set; }
        public DateTime? ValidUntil { get; set; }
        public DateTime? Created { get; set; }
        public DateTime? Modified { get; set; }
        public string CreatedBy { get; set; }
        public string ModifiedBy { get; set; }

        [NotMapped]
        public string PartyFullName { get; set; }
        [NotMapped]
        public string PartyFirstName { get; set; }
        [NotMapped]
        public string PartyLastName { get; set; }
        [NotMapped]
        public string PartyName { get; set; }
        [NotMapped]
        public int PartyType { get; set; }
        [NotMapped]
        public string PartyTypeTitle { get; set; }
        [NotMapped]
        public string NationalId { get; set; }
      
    }
}
