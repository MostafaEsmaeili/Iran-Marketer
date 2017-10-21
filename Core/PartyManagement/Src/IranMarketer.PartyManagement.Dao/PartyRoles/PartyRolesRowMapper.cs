using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository.Mapper;

namespace IranMarketer.PartyManagement.Dao.PartyRoles
{
    public class PartyRolesRowMapper : BaseMapper<Domain.Entity.PartyRoles>
    {
        public override Domain.Entity.PartyRoles InnerMapRow(IDataRecord reader)
        {
            try
            {
                ColumnPrefix = string.Empty;
                var entity = new Domain.Entity.PartyRoles
                {
                    Created = reader.SafeReader(ColumnPrefix + "Created").SafeDateTime(),
                    NationalId = reader.SafeReader(ColumnPrefix + "NationalId").SafeString(),
                    Id = reader.SafeReader(ColumnPrefix + "Id").SafeLong(),
                    ValidFrom = reader.SafeReader(ColumnPrefix + "ValidFrom").SafeDateTime(),
                    PartyType = reader.SafeReader(ColumnPrefix + "PartyType").SafeInt(),
                    ValidUntil = reader.SafeReader(ColumnPrefix + "ValidUntil").SafeDateTime(),
                    CreatedBy = reader.SafeReader(ColumnPrefix + "CreatedBy").SafeString(),
                    ModifiedBy = reader.SafeReader(ColumnPrefix + "ModifiedBy").SafeString(),
                    Modified = reader.SafeReader(ColumnPrefix + "Modified").SafeDateTime(),
                    PartyId = reader.SafeReader(ColumnPrefix + "PartyId").SafeLong(),
                    PartyFirstName = reader.SafeReader(ColumnPrefix + "PartyFirstName").SafeString(),
                    PartyFullName = reader.SafeReader(ColumnPrefix + "PartyFullName").SafeString(),
                    PartyLastName = reader.SafeReader(ColumnPrefix + "PartyLastName").SafeString(),
                    PartyName = reader.SafeReader(ColumnPrefix + "PartyName").SafeString(),
                    PartyTypeTitle = reader.SafeReader(ColumnPrefix + "PartyTypeTitle").SafeString(),
                    PersonalityRoleCodeId = reader.SafeReader(ColumnPrefix + "PersonalityRoleCodeId").SafeInt(),

                };
                return entity;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
