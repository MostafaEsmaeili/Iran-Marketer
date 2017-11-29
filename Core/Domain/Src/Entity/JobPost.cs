using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Web.Mvc;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.Enum;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository;

namespace IranMarketer.Domain.Entity
{
    [Table("JobPost", Schema = "dbo")]
    public class JobPost : Entity<int>
    {


        [Column(@"Title", Order = 2, TypeName = "nvarchar(max)")]
        [Display(Name = "Title")]
        public string Title { get; set; }

        [Column(@"description", Order = 3, TypeName = "nvarchar(max)")]
        [Display(Name = "Description")]
        [AllowHtml]
        public string Description { get; set; }

        [Column(@"Category", Order = 4, TypeName = "int")]
        [Display(Name = "Category")]
        public int? Category { get; set; }

        [Column(@"Gender", Order = 5, TypeName = "int")]
        [Display(Name = "Gender")]
        public int? Gender { get; set; }

        [Column(@"City", Order = 6, TypeName = "int")]
        [Display(Name = "City")]
        public int? City { get; set; }

        [Column(@"Industry", Order = 7, TypeName = "int")]
        [Display(Name = "Industry")]
        public int? Industry { get; set; }

        [Column(@"MinAge", Order = 8, TypeName = "int")]
        [Display(Name = "Min age")]
        public int? MinAge { get; set; }

        [Column(@"MaxAge", Order = 9, TypeName = "int")]
        [Display(Name = "Max age")]
        public int? MaxAge { get; set; }

        [Column(@"MinYearExperience", Order = 10, TypeName = "int")]
        [Display(Name = "Min year experience")]
        public int? MinYearExperience { get; set; }

        [Column(@"PartyId", Order = 11, TypeName = "int")]
        [Display(Name = "Party ID")]
        public int? PartyId { get; set; }
        [NotMapped]
        public string GenderTitle => Gender.SafeEnum<Gender>().GetEnumDescription();


        [ForeignKey("Category")] public JobCategory JobCategory { get; set; }

        [ForeignKey("City")] public Region CityRegion { get; set; }

        [ForeignKey("Industry")] public Industry IndustryIndustry { get; set; }

        [ForeignKey("PartyId")] public LegalParty LegalParty { get; set; }
    }

}