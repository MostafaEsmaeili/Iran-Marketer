using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Pikad.Framework.Repository;

namespace IranMarketer.Domain.Entity
{
    [Table("Region", Schema = "dbo")]
    public class Region : Entity<int>
    {

        [Column(@"Title", Order = 2, TypeName = "nvarchar")]
        [MaxLength(250)]
        [StringLength(250)]
        [Display(Name = "Title")]
        public string Title { get; set; }

        [Column(@"EnTitle", Order = 3, TypeName = "nvarchar")]
        [MaxLength(250)]
        [StringLength(250)]
        [Display(Name = "En title")]
        public string EnTitle { get; set; }

        [Column(@"CodeId", Order = 4, TypeName = "nvarchar")]
        [MaxLength(20)]
        [StringLength(20)]
        [Display(Name = "Code ID")]
        public string CodeId { get; set; }

        [Column(@"RegionType", Order = 5, TypeName = "int")]
        [Display(Name = "Region type")]
        public int? RegionType { get; set; }

        [Column(@"ZipCode", Order = 6, TypeName = "nvarchar")]
        [MaxLength(20)]
        [StringLength(20)]
        [Display(Name = "Zip code")]
        public string ZipCode { get; set; }

        [Column(@"ValidFrom", Order = 7, TypeName = "date")]
        [Display(Name = "Valid from")]
        public DateTime? ValidFrom { get; set; }

        [Column(@"ValidUntil", Order = 8, TypeName = "date")]
        [Display(Name = "Valid until")]
        public DateTime? ValidUntil { get; set; }
        [NotMapped]
        public new DateTime Created { get; set; }
        [NotMapped]
        public new DateTime Modified { get; set; }
       
        [InverseProperty("City")]
        public virtual ICollection<PartyUniversity> City { get; set; } = new List<PartyUniversity>();
        [InverseProperty("Country")]
        public virtual ICollection<PartyUniversity> Country { get; set; } = new List<PartyUniversity>();

        public virtual ICollection<RetailParty> CityId { get; set; } = new List<RetailParty>();

        public virtual ICollection<RetailParty> NationalityPlace { get; set; } = new List<RetailParty>();

        [InverseProperty("Region")]
        public virtual ICollection<WorkExperience> WorkExperiences { get; set; } = new List<WorkExperience>();


        public System.Collections.Generic.ICollection<LegalParty> LegalParties { get; set; } = new List<LegalParty>(); // LegalParty.FK_LegalParty_Region

    }
}
