using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Bargozideh.Framework.Infra.Utility;
using Bargozideh.Framework.UnitOfWork;
using Dapper.FastCrud;

namespace Bargozideh.Framework.Repository
{
    public abstract class Entity<TPk> :IEntity<TPk> where TPk : IComparable
    {
        [Key]
        [DatabaseGeneratedDefaultValue]
        public TPk Id { get; set; }



        [Column(@"Modified", TypeName = "datetime")]
        [Display(Name = "Modified")]
        public DateTime? Modified { get; set; }

        [Column(@"CreatedBy", TypeName = "nvarchar")]
        [MaxLength(50)]
        [StringLength(50)]
        [Display(Name = "Created by")]
        public string CreatedBy { get; set; }

        [Column(@"ModifiedBy", TypeName = "nvarchar")]
        [MaxLength(50)]
        [StringLength(50)]
        [Display(Name = "Modified by")]
        public string ModifiedBy { get; set; }


        [Column(@"Created", TypeName = "datetime")]
        [Display(Name = "Created")]
        public DateTime? Created { get; set; }

        public string CreatedJalali => Created!=null && Created > new DateTime(1907, 1, 1)
            ? Created.ConvertMiladiToJalali()
            : null;
        public string ModifiedJalali => Modified!=null&& Modified > new DateTime(1907, 1, 1)
            ? Modified.ConvertMiladiToJalali()
            : null;



    }
}