using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace IranMarketer.UserManagement
{
    [Table("AspNetUserRoles", Schema = "sec")]
    public  class IdentityUserRole<TKey,TRoleKey>
    {
        public TKey UserId { get; set; }
        public TRoleKey RoleId { get; set; }
    }
}
