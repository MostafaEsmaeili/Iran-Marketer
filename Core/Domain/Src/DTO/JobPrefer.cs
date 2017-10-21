
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using IranMarketer.Domain.Entity;
using Newtonsoft.Json;
using Pikad.Framework.Repository;

namespace IranMarketer.Domain.DTO
{

    // JobPrefer
    public class JobPrefer : BaseDto<int>
    {

        [Column(@"ExpectedSalary", Order = 2, TypeName = "int")]
        [Display(Name = "Expected salary")]
        public int? ExpectedSalary { get; set; }

        [Column(@"BusinessTrips", Order = 3, TypeName = "int")]
        [Display(Name = "Business trips")]
        public int? BusinessTrips { get; set; }

        [Column(@"Relocate", Order = 4, TypeName = "int")]
        [Display(Name = "Relocate")]
        public int? Relocate { get; set; }


        [JsonIgnore]
        public virtual System.Collections.Generic.ICollection<Industry> Industries { get; set; }
        [JsonIgnore]

        public virtual System.Collections.Generic.ICollection<JobCategory> JobCategories { get; set; }

        [JsonIgnore]
        [ForeignKey("PartyId")]
        public virtual RetailParty RetailParty { get; set; }

        public JobPrefer()
        {
            JobCategories = new System.Collections.Generic.List<JobCategory>();
            Industries = new System.Collections.Generic.List<Industry>();
        }
    }

}
