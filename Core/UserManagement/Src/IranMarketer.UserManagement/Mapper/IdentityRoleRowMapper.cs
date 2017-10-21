using System.Data;
using Microsoft.AspNet.Identity.EntityFramework;
using TadbirPardaz.Infrastructure.Mapper;
using TadbirPardaz.Infrastructure.Utility;

namespace Sahra.MutualFund.UserManagement
{
    public class IdentityRoleRowMapper : BaseMapper<IdentityRole>
    {
        public override IdentityRole InnerMapRow(IDataRecord reader)
        {
            ColumnPrefix = string.Empty;
            var entity = new IdentityRole
            {
                Id = reader.SafeReader(ColumnPrefix + "Id").SafeString(),
                Name = reader.SafeReader(ColumnPrefix + "Name").SafeString(),
            };
            return entity;
        }
    }
}
