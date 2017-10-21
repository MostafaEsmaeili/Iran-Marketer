using System.ComponentModel.DataAnnotations.Schema;
using System.Data;
using System.Data.SqlClient;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;

namespace IranMarketer.UserManagement
{
    public class IdentityModels
    {
        [Table("AspNetUsers", Schema = "sec")]

        public class ApplicationUser : IdentityUser
        {
        
        }
        [Table("AspNetRoles",Schema = "sec")]
        public class ApplicationRole : IdentityRole
        {
        }

        public class ApplicationDbContext : DapperIdentityDbContext<ApplicationUser, ApplicationRole>
        {
            public ApplicationDbContext(IDbConnection connection)
                : base(connection)
            {
            }

            public static ApplicationDbContext Create()
            {
                var connString = System.Configuration.ConfigurationManager.ConnectionStrings["MutualFund"].ConnectionString;
                var conn = new SqlConnection(connString);
                return new ApplicationDbContext(conn);
            }
        }
    }
}