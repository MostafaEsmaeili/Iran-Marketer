using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Utility;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.DTO
{
    public class PartyRole
    {
        public long Id { get; set; }
        public long PartyId { get; set; }
        public string PartyFullName { get; set; }
        public string PartyFirstName { get; set; }
        public string PartyLastName { get; set; }
        public string PartyName { get; set; }
        public int PartyType { get; set; }
        public string PartyTypeTitle { get; set; }
        public string  NationalId { get; set; }
        public int PersonalityRoleCodeId { get; set; }
        public string PersonalityRoleCodeIdTite => ((PersonalityRole) PersonalityRoleCodeId).GetDescription();

        public string ValidFrom { get; set; }
        public string ValidUntil { get; set; }
        public DateTime? Created { get; set; }
        public DateTime? Modified { get; set; }
        public string CreatedBy { get; set; }
        public string ModifiedBy { get; set; }
    }
}
