using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository.Mapper;

namespace IranMarketer.SharedData.Dao.Region
{
    public class RegionRowMapper : BaseMapper<Domain.Entity.Region>
    {
        public override Domain.Entity.Region InnerMapRow(IDataRecord reader)
        {
            try
            {
                ColumnPrefix = string.Empty;
                var entity = new Domain.Entity.Region
                {
                    CodeId = reader.SafeReader(ColumnPrefix + "CodeId").SafeString(),
                    RegionType = reader.SafeReader(ColumnPrefix + "RegionType").SafeInt(),
                    ZipCode = reader.SafeReader(ColumnPrefix + "ZipCode").SafeString(),
                    Created = reader.SafeReader(ColumnPrefix + "Created").SafeDateTime(),
                    EnTitle = reader.SafeReader(ColumnPrefix + "EnTitle").SafeString(),
                    Id = reader.SafeReader(ColumnPrefix + "Id").SafeInt(),
                    Modified = reader.SafeReader(ColumnPrefix + "Modified").SafeDateTime(),
                    Title = reader.SafeReader(ColumnPrefix + "Title").SafeString(),
                    ValidFrom = reader.SafeReader(ColumnPrefix + "ValidFrom").SafeDateTime(),
                    ValidUntil = reader.SafeReader(ColumnPrefix + "ValidUntil").SafeDateTime(),
                };
                return entity;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
