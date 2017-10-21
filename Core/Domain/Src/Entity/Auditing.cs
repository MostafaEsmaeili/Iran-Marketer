using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Dapper.FastCrud;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.Domain.Entity
{
    [Table("Auditing",Schema = "mon")]
    public class Auditing :IEntity<int>
    {
        [Key]
        [DatabaseGeneratedDefaultValue]
        public int Id { get; set; }
        public string UserName { get; set; }
        public string UserId { get; set; }
        public string IpAddress { get; set; }
        public string Action { get; set; }
        public string Controller { get; set; }
        public string AreaAccessed { get; set; }
        public string MachinName { get; set; }
        public System.DateTime? TimeAccessed { get; set; }
        public int ApplicationId { get; set; }
    }
}