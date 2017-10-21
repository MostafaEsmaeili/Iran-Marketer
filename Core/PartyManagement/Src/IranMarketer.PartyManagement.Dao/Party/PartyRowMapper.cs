using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository.Mapper;

namespace IranMarketer.PartyManagement.Dao.Party
{
    public class PartyRowMapper : BaseMapper<Domain.Entity.Party>
    {
        public override Domain.Entity.Party InnerMapRow(IDataRecord reader)
        {
            try
            {
                ColumnPrefix = string.Empty;
                var entity = new Domain.Entity.Party
                {
                    FullName = reader.SafeReader(ColumnPrefix + "FullName").SafeString(),
                    FirstName = reader.SafeReader(ColumnPrefix + "FirstName").SafeString(),
                    LastName = reader.SafeReader(ColumnPrefix + "LastName").SafeString(),
                    FatherName = reader.SafeReader(ColumnPrefix + "FatherName").SafeString(),
                    EnFatherName = reader.SafeReader(ColumnPrefix + "EnFatherName").SafeString(),
                    EnLastName = reader.SafeReader(ColumnPrefix + "EnLastName").SafeString(),
                    Id = reader.SafeReader(ColumnPrefix + "Id").SafeLong(),
                    BirthPlace = reader.SafeReader(ColumnPrefix + "BirthPlace").SafeString(),
                    BirthDate = reader.SafeReader(ColumnPrefix + "BirthDate").SafeDateTime(),
                    Modified = reader.SafeReader(ColumnPrefix + "Modified").SafeDateTime(),
                    Gender = reader.SafeReader(ColumnPrefix + "Gender").SafeInt(),
                    DeletionDate = reader.SafeReader(ColumnPrefix + "DeletionDate").SafeDateTime(),
                    EcomomicCode = reader.SafeReader(ColumnPrefix + "EcomomicCode").SafeString(),
                    NationalId = reader.SafeReader(ColumnPrefix + "NationalId").SafeString(),
                    Name = reader.SafeReader(ColumnPrefix + "Name").SafeString(),
                    ValidFrom = reader.SafeReader(ColumnPrefix + "ValidFrom").SafeDateTime(),
                    ValidUntil = reader.SafeReader(ColumnPrefix + "ValidUntil").SafeDateTime(),
                    JobTitle = reader.SafeReader(ColumnPrefix + "JobTitle").SafeInt(),
                    Created = reader.SafeReader(ColumnPrefix + "Created").SafeDateTime(),
                    CreatedBy = reader.SafeReader(ColumnPrefix + "CreatedBy").SafeString(),
                    EducationDegree = reader.SafeReader(ColumnPrefix + "EducationDegree").SafeInt(),
                    EducationDegreeName = reader.SafeReader(ColumnPrefix + "EducationDegreeName").SafeString(),
                    EnFirstName = reader.SafeReader(ColumnPrefix + "EnName").SafeString(),
                    EnName = reader.SafeReader(ColumnPrefix + "EnName").SafeString(),
                    IdentityCard = reader.SafeReader(ColumnPrefix + "IdentityCard").SafeString(),
                    IdentitySerialNumber = reader.SafeReader(ColumnPrefix + "IdentitySerialNumber").SafeString(),
                    IssuerName = reader.SafeReader(ColumnPrefix + "IssuerName").SafeString(),
                    JobTitleName = reader.SafeReader(ColumnPrefix + "JobTitleName").SafeString(),
                    ModifiedBy = reader.SafeReader(ColumnPrefix + "ModifiedBy").SafeString(),
                    NationalityPlaceId = reader.SafeReader(ColumnPrefix + "NationalityPlaceId").SafeInt(),
                    NationalityText = reader.SafeReader(ColumnPrefix + "NationalityText").SafeString(),
                    OrganizationalType = reader.SafeReader(ColumnPrefix + "OrganizationalType").SafeInt(),
                    Position = reader.SafeReader(ColumnPrefix + "Position").SafeInt(),
                    PositionName = reader.SafeReader(ColumnPrefix + "PositionName").SafeString(),
                    RegisterDate = reader.SafeReader(ColumnPrefix + "RegisterDate").SafeDateTime(),
                    RegisterPlace = reader.SafeReader(ColumnPrefix + "RegisterPlace").SafeString(),
                    UserId = reader.SafeReader(ColumnPrefix + "UserId").SafeString(),
                    UserName = reader.SafeReader(ColumnPrefix + "UserName").SafeString(),
                    DetailLedgerCode = reader.SafeReader(ColumnPrefix + "DetailLedgerCode").SafeString(),
                    IssuePlace = reader.SafeReader(ColumnPrefix + "IssuePlace").SafeString(),
                    PartyType = reader.SafeReader(ColumnPrefix + "PartyType").SafeInt()

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
