using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Pikad.Framework.UnitOfWork;
using IranMarketer.Domain.Enum;
using Dapper.FastCrud;

namespace IranMarketer.Domain.Entity
{
    [Table("ServiceRepository",Schema = "dbo")]
    public class ServiceRepository : IEntity<int>
    {
        [Key]
        [DatabaseGeneratedDefaultValue]
        public int Id { get; set; }
        public string ServiceName { get; set; }
        public string MethodName { get; set; }
        public string Code { get; set; }
        public string Title { get; set; }
    }
    [Table("PageRepository", Schema = "dbo")]

    public class PageRepository : IEntity<int>
    {
        [Key]
        [DatabaseGeneratedDefaultValue]
        public int Id { get; set; }
        public int ServiceRepositoryId { get; set; }
        public int PageType { get; set; }
    }

}