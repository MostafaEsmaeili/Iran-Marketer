// <auto-generated>
// ReSharper disable ConvertPropertyToExpressionBody
// ReSharper disable DoNotCallOverridableMethodsInConstructor
// ReSharper disable InconsistentNaming
// ReSharper disable PartialMethodWithSinglePart
// ReSharper disable PartialTypeWithSinglePart
// ReSharper disable RedundantNameQualifier
// ReSharper disable RedundantOverridenMember
// ReSharper disable UseNameofExpression
// TargetFrameworkVersion = 4.6
#pragma warning disable 1591    //  Ignore "Missing XML Comment" warning

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Newtonsoft.Json;
using Pikad.Framework.Repository;

namespace IranMarketer.Domain.Entity
{

    // JobCategories
    [Table("JobCategories", Schema = "dbo")]
    public class JobCategory : Entity<int>
    {


        [Column(@"TitleFa", Order = 2, TypeName = "nvarchar")]
        [MaxLength(1000)]
        [StringLength(1000)]
        [Display(Name = "Title fa")]
        public string TitleFa { get; set; }

        [Column(@"TitleEn", Order = 3, TypeName = "nvarchar")]
        [MaxLength(1000)]
        [StringLength(1000)]
        [Display(Name = "Title en")]
        public string TitleEn { get; set; }

        [JsonIgnore]
        public virtual System.Collections.Generic.ICollection<JobPrefer> JobPrefers { get; set; }
        [JsonIgnore]

        public virtual System.Collections.Generic.ICollection<WorkExperience> WorkExperiences { get; set; }
        public System.Collections.Generic.ICollection<JobPost> JobPosts { get; set; } = new System.Collections.Generic.List<JobPost>();


        public JobCategory()
        {
            WorkExperiences = new System.Collections.Generic.List<WorkExperience>();
            JobPrefers = new System.Collections.Generic.List<JobPrefer>();
        }
    }

}
// </auto-generated>
