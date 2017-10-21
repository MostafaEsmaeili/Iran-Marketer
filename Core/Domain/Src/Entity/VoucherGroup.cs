using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Dapper.FastCrud;

namespace IranMarketer.Domain.Entity
{
    [Table("VoucherGroup", Schema = "acc")]
    public class VoucherGroup
    {
        [Key]
        [DatabaseGeneratedDefaultValue]
        public int Id { get; set; } // Id (Primary key)
        public string Code { get; set; } // Code
        public string Title { get; set; } // Title
        public DateTime Created { get; set; } // Created
        public DateTime Modified { get; set; } // Modified
       
    }

}
