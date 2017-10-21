using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository.Mapper;

namespace IranMarketer.PartyManagement.Dao.PartyBankAccount
{
    public class PartyBankAccountRowMapper : BaseMapper<Domain.Entity.PartyBankAccount>
    {
        public override Domain.Entity.PartyBankAccount InnerMapRow(IDataRecord reader)
        {
            try
            {
                ColumnPrefix = string.Empty;
                var entity = new Domain.Entity.PartyBankAccount
                {
                    Created = reader.SafeReader(ColumnPrefix + "Created").SafeDateTime(),
                    BankId = reader.SafeReader(ColumnPrefix + "BankId").SafeInt(),
                    AccountNumber = reader.SafeReader(ColumnPrefix + "AccountNumber").SafeString(),
                    BranchName = reader.SafeReader(ColumnPrefix + "BranchName").SafeString(),
                    AccountType = reader.SafeReader(ColumnPrefix + "AccountType").SafeInt(),
                    BankTitle = reader.SafeReader(ColumnPrefix + "BankTitle").SafeString(),
                    BankTitleEn = reader.SafeReader(ColumnPrefix + "BankTitleEn").SafeString(),
                    BranchCode = reader.SafeReader(ColumnPrefix + "BranchCode").SafeString(),
                    IBAN = reader.SafeReader(ColumnPrefix + "IBAN").SafeString(),
                    Modified = reader.SafeReader(ColumnPrefix + "Modified").SafeDateTime(),
                    IsDefault = reader.SafeReader(ColumnPrefix + "IsDefault").SafeBool(),
                    PartyId = reader.SafeReader(ColumnPrefix + "PartyId").SafeLong(),
                    Status = reader.SafeReader(ColumnPrefix + "Status").SafeInt(),
                    Id = reader.SafeReader(ColumnPrefix + "Id").SafeLong()
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
