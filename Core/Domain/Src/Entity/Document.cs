using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Newtonsoft.Json;
using Pikad.Framework.Repository;

namespace IranMarketer.Domain.Entity
{
   [Table("Documents", Schema = "dbo")]
    public class Document : Entity<int>
    {
        [Column(@"DocType", Order = 2, TypeName = "int")]
        [Required]
        [Display(Name = "Doc type")]
        public int DocType { get; set; }

        [Column(@"DocTitle", Order = 3, TypeName = "nchar")]
        [MaxLength(10)]
        [StringLength(10)]
        [Display(Name = "Doc title")]
        public string DocTitle { get; set; }

        [Column(@"binery", Order = 4, TypeName = "varbinary(max)")]
        [Display(Name = "Binery")]
        public byte[] Binery { get; set; }


        [Column(@"PartyId", Order = 7, TypeName = "int")]
        [Display(Name = "Party ID")]
        public int? PartyId { get; set; }

        [Column(@"UserId", Order = 8, TypeName = "nvarchar")]
        [MaxLength(256)]
        [StringLength(256)]
        [Display(Name = "User ID")]
        public string UserId { get; set; }
        [Column(@"Size", Order = 9, TypeName = "int")]
        [Display(Name = "File SIze")]
        public  int Size { get; set; }

        [Column(@"Extention", Order = 10, TypeName = "nvarchar")]
        [MaxLength(50)]
        [StringLength(50)]
        [Display(Name = "Extention")]
        public string Extention { get; set; }


        [JsonIgnore]
        [ForeignKey("PartyId")] public virtual RetailParty RetailParty { get; set; }





    }
}