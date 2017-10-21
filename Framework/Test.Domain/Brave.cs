using System.ComponentModel.DataAnnotations.Schema;
using Pikad.Framework.Repository;


namespace Test.Domain
{
    public class Brave : Entity<int>
    {
        [ForeignKey("News")]
        public int NewId { get; set; }
        public News News { get; set; }
    }
}
