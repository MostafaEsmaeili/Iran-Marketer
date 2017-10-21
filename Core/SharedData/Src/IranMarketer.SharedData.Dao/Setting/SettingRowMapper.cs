using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository.Mapper;
using IranMarketer.Domain.Entity;

namespace IranMarketer.SharedData.Dao.Setting
{
    public class SettingRowMapper : BaseMapper<BaseSetting>
    {
        public override BaseSetting InnerMapRow(IDataRecord reader)
        {
            try
            {
                ColumnPrefix = string.Empty;
                var entity = new BaseSetting
                {
                    SettingType = reader.SafeReader(ColumnPrefix + "SettingType").SafeString(),
                    Value = reader.SafeReader(ColumnPrefix + "Value").SafeString(),
                    CreatedBy = reader.SafeReader(ColumnPrefix + "CreatedBy").SafeString(),
                    FromDate = reader.SafeReader(ColumnPrefix + "FromDate").SafeDateTime(),
                    ModifiedBy = reader.SafeReader(ColumnPrefix + "ModifiedBy").SafeString(),
                    ToDate = reader.SafeReader(ColumnPrefix + "ToDate").SafeDateTime(),
                    Id = reader.SafeReader(ColumnPrefix + "Id").SafeLong(),

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
