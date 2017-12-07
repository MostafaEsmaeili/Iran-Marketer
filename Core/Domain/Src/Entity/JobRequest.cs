
#pragma warning disable 1591    //  Ignore "Missing XML Comment" warning

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Pikad.Framework.Repository;

namespace IranMarketer.Domain.Entity
{

    [Table("JobRequest", Schema = "dbo")]
    public class JobRequest : Entity<int>
    {

        [Column(@"JobPostId", Order = 2, TypeName = "int")]
        [Display(Name = "Job post ID")]
        public int? JobPostId { get; set; }

        [Column(@"PartyId", Order = 3, TypeName = "int")]
        [Display(Name = "Party ID")]
        public int? PartyId { get; set; }

        [Column(@"UserName", Order = 4, TypeName = "nvarchar")]
        [MaxLength(256)]
        [StringLength(256)]
        [DataType(DataType.Text)]
        [Display(Name = "User name")]
        public string UserName { get; set; }

        [Column(@"DateOfRequest", Order = 5, TypeName = "datetime")]
        [Display(Name = "Date of request")]
        public System.DateTime? DateOfRequest { get; set; }

        [Column(@"IsRequested", Order = 6, TypeName = "bit")]
        [Display(Name = "Is requested")]
        public bool? IsRequested { get; set; }

        [Column(@"RequestStatus", Order = 7, TypeName = "int")]
        [Display(Name = "Request status")]
        public int RequestStatus { get; set; }


        [ForeignKey("JobPostId")] public JobPost JobPost { get; set; }

        [ForeignKey("PartyId")] public RetailParty RetailParty { get; set; }
    }

}
// </auto-generated>
