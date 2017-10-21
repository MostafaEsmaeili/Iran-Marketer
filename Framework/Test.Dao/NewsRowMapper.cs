using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository.Mapper;
using Test.Domain;

namespace Test.Dao
{
    public class NewsRowMapper : BaseMapper<News>
    {
        public override News InnerMapRow(IDataRecord reader)
        {
            try
            {
                ColumnPrefix = string.Empty;
                var entity = new News
                {
                    WorldId = reader.SafeReader(ColumnPrefix + "WorldId").SafeInt(),
                    Key = reader.SafeReader(ColumnPrefix + "Key").SafeInt(),

                };
                return entity;
            }
            catch (Exception)
            {
                
                throw;
            }
        }
    }
}
