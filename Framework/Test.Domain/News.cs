using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Dapper.FastCrud;

namespace Test.Domain
{
    [Table("New")]
    public class News
    {
        [Key]
        [DatabaseGeneratedDefaultValue]
        public int Key { get; set; }
        [ForeignKey("World")]
        public int? WorldId { get; set; }
        public World World { get; set; }

    }
}
