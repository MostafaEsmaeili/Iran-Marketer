using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper.FastCrud;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.Domain.Entity
{
    [Table("Sector", Schema = "shd")]
    public class Sector : IEntity<int>
    {
        [Key]
        [DatabaseGeneratedDefaultValue]
        public int Id { get; set; } // Id (Primary key)
        public string Code { get; set; } // Code
        public string Title { get; set; } // Title
        public string EnTitle { get; set; } // EnTitle
        public string ParentCode { get; set; } // ParentCode
        public int? Level { get; set; } // Level
        public string Color { get; set; } //Color
    }
}
