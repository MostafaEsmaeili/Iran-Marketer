using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository.Mapper;

namespace IranMarketer.SharedData.Dao.Product
{
    public class SectorRowMapper : BaseMapper<Domain.Entity.Sector>
    {
        public override Domain.Entity.Sector InnerMapRow(IDataRecord reader)
        {
            try
            {
                ColumnPrefix = string.Empty;
                var entity = new Domain.Entity.Sector
                {
                    Id = reader.SafeReader(ColumnPrefix + "Id").SafeInt(),
                    Title = reader.SafeReader(ColumnPrefix + "Title").SafeString(),
                    Code = reader.SafeReader(ColumnPrefix + "Code").SafeString(),
                    Color = reader.SafeReader(ColumnPrefix + "Color").SafeString(),
                    EnTitle = reader.SafeReader(ColumnPrefix + "EnTitle").SafeString(),
                    Level = reader.SafeReader(ColumnPrefix + "Level").SafeInt(),
                    ParentCode = reader.SafeReader(ColumnPrefix + "ParentCode").SafeString()
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
