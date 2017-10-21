using System.Data;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository.Mapper;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;


namespace IranMarketer.UserManagement
{
    public class ServiceRepositoryRowMapper : BaseMapper<ServiceRepository>
    {
        public override ServiceRepository InnerMapRow(IDataRecord reader)
        {
            ColumnPrefix = string.Empty;
            var entity = new ServiceRepository
            {
                Id = reader.SafeReader(ColumnPrefix + "Id").SafeInt(),
                Code = reader.SafeReader(ColumnPrefix + "Code").SafeString(),
                MethodName = reader.SafeReader(ColumnPrefix + "MethodName").SafeString(),
                ServiceName = reader.SafeReader(ColumnPrefix + "ServiceName").SafeString(),
                Title = reader.SafeReader(ColumnPrefix + "Title").SafeString(),
            };
            return entity;
        }
    }

    public class PageRepositoryRowMapper : BaseMapper<PageRepository>
    {
        public override PageRepository InnerMapRow(IDataRecord reader)
        {
            ColumnPrefix = string.Empty;
            var entity = new PageRepository
            {
                Id = reader.SafeReader(ColumnPrefix + "Id").SafeInt(),
                ServiceRepositoryId = reader.SafeReader(ColumnPrefix + "ServiceRepositoryId").SafeInt(),
                PageType = reader.SafeReader(ColumnPrefix + "PageType").SafeInt(),
            };

            return entity;
        }
    }
}
