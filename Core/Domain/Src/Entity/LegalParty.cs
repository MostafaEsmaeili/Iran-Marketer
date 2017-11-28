using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Pikad.Framework.Repository;

namespace IranMarketer.Domain.Entity
{
    [Table("LegalParty", Schema = "dbo")]
    public class LegalParty :Entity<int>
    {

        [Column(@"CompanyName", Order = 2, TypeName = "nvarchar")]
        [Required]
        [MaxLength(500)]
        [StringLength(500)]
        [Display(Name = "Company name")]
        public string CompanyName { get; set; } // CompanyName (length: 500)

        [Column(@"WebSite", Order = 3, TypeName = "nvarchar")]
        [MaxLength(500)]
        [StringLength(500)]
        [Display(Name = "Web site")]
        public string WebSite { get; set; } // WebSite (length: 500)

        [Column(@"Phone", Order = 4, TypeName = "nvarchar")]
        [MaxLength(50)]
        [StringLength(50)]
        [Phone]
        [Display(Name = "Phone")]
        public string Phone { get; set; } // Phone (length: 50)

        [Column(@"IndustryId", Order = 5, TypeName = "int")]
        [Display(Name = "Industry ID")]
        public int? IndustryId { get; set; } // IndustryId

        [Column(@"LegalPartyCityId", Order = 6, TypeName = "int")]
        [Display(Name = "Legal party city ID")]
        public int? LegalPartyCityId { get; set; } // LegalPartyCityId

        [Column(@"Address", Order = 7, TypeName = "nvarchar(max)")]
        [Display(Name = "Address")]
        public string Address { get; set; } // Address

        [Column(@"About", Order = 8, TypeName = "nvarchar(max)")]
        [Display(Name = "About")]
        public string About { get; set; } // About

        [Column(@"BrandSize", Order = 9, TypeName = "int")]
        [Display(Name = "Brand size")]
        public int? BrandSize { get; set; } // BrandSize

        [Column(@"CompanyOwnershipType", Order = 11, TypeName = "int")]
        [Display(Name = "Company ownership type")]
        public int? CompanyOwnershipType { get; set; } // CompanyOwnershipType

        [Column(@"EstablishmentYear", Order = 12, TypeName = "date")]
        [Display(Name = "Establishment year")]
        public System.DateTime? EstablishmentYear { get; set; } // EstablishmentYear

        [Column(@"UserId", Order = 13, TypeName = "nvarchar")]
        [Required]
        [MaxLength(128)]
        [StringLength(128)]
        [Display(Name = "User ID")]
        public string UserId { get; set; }

        [Column(@"UserName", Order = 14, TypeName = "nvarchar")]
        [Required]
        [MaxLength(100)]
        [StringLength(100)]
        [DataType(DataType.Text)]
        [Display(Name = "User name")]
        public string UserName { get; set; }

        public System.Collections.Generic.ICollection<JobPost> JobPosts { get; set; } = new System.Collections.Generic.List<JobPost>();



        // Foreign keys

        /// <summary>
        /// Parent Industry pointed by [LegalParty].([IndustryId]) (FK_LegalParty_Industries)
        /// </summary>
        [ForeignKey("IndustryId")] public Industry Industry { get; set; } // FK_LegalParty_Industries

        /// <summary>
        /// Parent Region pointed by [LegalParty].([LegalPartyCityId]) (FK_LegalParty_Region)
        /// </summary>
        [ForeignKey("LegalPartyCityId")] public Region Region { get; set; } // FK_LegalParty_Region


    }
}