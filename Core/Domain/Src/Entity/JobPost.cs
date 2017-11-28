using System.ComponentModel.DataAnnotations.Schema;
using Pikad.Framework.Repository;

namespace IranMarketer.Domain.Entity
{
    public class JobPost : Entity<int>
    {
        public string Title { get; set; }
        public string Description { get; set; }
        public int Gender { get; set; }
        public int City { get; set; }
        public int Category { get; set; }
        public int Industry { get; set; }
        public int MinYearExperience { get; set; }
        public int MinAge { get; set; }
        public int MaxAge { get; set; }
        [ForeignKey("Party")]

        public int PartyId { get; set; }
        public virtual  LegalParty Party { get; set; }
    }
}