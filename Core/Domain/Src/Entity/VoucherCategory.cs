using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Dapper.FastCrud;

namespace IranMarketer.Domain.Entity
{
    // VoucherCategory
    [Table("VoucherCategory", Schema = "acc")]
    public class VoucherCategory
    {
        [Key]
        public int Code { get; set; } // Code
        public string Title { get; set; } // Title
        public DateTime Created { get; set; } // Created
        public DateTime Modified { get; set; } // Modified
    }

}
