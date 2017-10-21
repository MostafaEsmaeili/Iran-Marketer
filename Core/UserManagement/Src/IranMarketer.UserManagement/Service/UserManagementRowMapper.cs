using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository.Mapper;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Enum;

namespace IranMarketer.UserManagement.Service
{
    public class UserManagementRowMapper : BaseMapper<Domain.DTO.UserManagement>
    {
        public override Domain.DTO.UserManagement InnerMapRow(IDataRecord reader)
        {
            try
            {

                ColumnPrefix = string.Empty;
                var entity = new Domain.DTO.UserManagement()
                {
                    DisplayName = reader.SafeReader(ColumnPrefix + "FullName").SafeString(),
                    CreateDate = reader.SafeReader(ColumnPrefix + "CreateDate").SafeString(),
                    BranchCode = reader.SafeReader(ColumnPrefix + "BranchCode").SafeString(),
                    Id = reader.SafeReader(ColumnPrefix + "Id").SafeString(),
                    NationalId = reader.SafeReader(ColumnPrefix + "NationalId").SafeString(),
                    Status = ((UserStatus)reader.SafeReader(ColumnPrefix + "Status").SafeInt()),
                    BranchId = reader.SafeReader(ColumnPrefix + "BranchId").SafeInt(),
                    BranchTitle = reader.SafeReader(ColumnPrefix + "BranchTitle").SafeString(),
                    Email = reader.SafeReader(ColumnPrefix + "Email").SafeString(),
                    UserName = reader.SafeReader(ColumnPrefix + "UserName").SafeString(),
                    PhoneNumber = reader.SafeReader(ColumnPrefix + "PhoneNumber").SafeString(),
                    RoleId = reader.SafeReader(ColumnPrefix + "RoleId").SafeString(),
                    RoleName = reader.SafeReader(ColumnPrefix + "RoleName").SafeString(),

                };

                return entity;
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }
        }
    }
}
