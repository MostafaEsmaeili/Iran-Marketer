using System.Data;
using TadbirPardaz.AM.Domain.Entity.Staging;
using TadbirPardaz.Infrastructure.Mapper;
using TadbirPardaz.Infrastructure.Utility;

namespace Sahra.MutualFund.UserManagement
{
    public class ServiceAccessRowMapper : BaseMapper<ServiceAccess>
    {
        public override TadbirPardaz.AM.Domain.Entity.Staging.ServiceAccess InnerMapRow(IDataRecord reader)
        {
            ColumnPrefix = string.Empty;
            var entity = new TadbirPardaz.AM.Domain.Entity.Staging.ServiceAccess
            {
                Id = reader.SafeReader(ColumnPrefix + "Id").SafeInt(),
                Allow = reader.SafeReader(ColumnPrefix + "Allow").SafeBool(),
                LastUpdate = reader.SafeReader(ColumnPrefix + "LastUpdate").SafeDateTime(),
                RoleId = reader.SafeReader(ColumnPrefix + "RoleId").SafeString(),
                UserId = reader.SafeReader(ColumnPrefix + "UserId").SafeString(),
                ServiceRepositoryId = reader.SafeReader(ColumnPrefix + "ServiceRepositoryId").SafeInt(),
                ApplicationId = reader.SafeReader(ColumnPrefix + "ApplicationId").SafeInt(),
                Username = reader.SafeReader(ColumnPrefix + "Username").SafeString(),
            };
            return entity;
        }
    }
}
