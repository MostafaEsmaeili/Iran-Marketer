using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Dapper.FastCrud;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.Domain.Enum
{
    [Table("ServiceAccess",Schema = "dbo")]
    public class ServiceAccess : IEntity<int>
    {
        [Key]
        [DatabaseGeneratedDefaultValue]
        public int Id { get; set; }
        public string RoleId { get; set; }
        public string UserId { get; set; }
        public bool? Allow { get; set; }
        public System.DateTime LastUpdate { get; set; }
        public int ServiceRepositoryId { get; set; }
        public int ApplicationId { get; set; }
        public string Username { get; set; }
    }
}