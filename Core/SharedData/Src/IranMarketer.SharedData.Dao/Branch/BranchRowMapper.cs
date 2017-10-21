//using System;
//using System.Collections.Generic;
//using System.Data;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;
//using Pikad.Framework.Infra.Utility;
//using Pikad.Framework.Repository.Mapper;
//using IranMarketer.Domain.Entity;

//namespace IranMarketer.SharedData.Dao.Branch
//{
//    public class BranchRowMapper : BaseMapper<Domain.Entity.Branch>
//    {
//        public override Domain.Entity.Branch InnerMapRow(IDataRecord reader)
//        {
//            try
//            {
//                ColumnPrefix = string.Empty;
//                var entity = new Domain.Entity.Branch
//                {
//                    Address = reader.SafeReader(ColumnPrefix + "Address").SafeString(),
//                    BankNameId = reader.SafeReader(ColumnPrefix + "BankNameId").SafeInt(),
//                    Code = reader.SafeReader(ColumnPrefix + "Code").SafeString(),
//                    BankName = reader.SafeReader(ColumnPrefix + "BankName").SafeString(),
//                    Created = reader.SafeReader(ColumnPrefix + "Created").SafeDateTime(),
//                    EnTitle = reader.SafeReader(ColumnPrefix + "EnTitle").SafeString(),
//                    Id = reader.SafeReader(ColumnPrefix + "Id").SafeInt(),
//                    Fax = reader.SafeReader(ColumnPrefix + "Fax").SafeString(),
//                    ManagerName = reader.SafeReader(ColumnPrefix + "ManagerName").SafeString(),
//                    Modified = reader.SafeReader(ColumnPrefix + "Modified").SafeDateTime(),
//                    Tel = reader.SafeReader(ColumnPrefix + "Tel").SafeString(),
//                    Title = reader.SafeReader(ColumnPrefix + "Title").SafeString(),
//                    Type = reader.SafeReader(ColumnPrefix + "Type").SafeInt(),
//                    ValidFrom = reader.SafeReader(ColumnPrefix + "ValidFrom").SafeDateTime(),
//                    ValidUntil = reader.SafeReader(ColumnPrefix + "ValidUntil").SafeDateTime(),
//                    EnAddress = reader.SafeReader(ColumnPrefix + "EnAddress").SafeString(),
//                    EnManagerName = reader.SafeReader(ColumnPrefix + "EnManagerName").SafeString()

//                };
//                return entity;
//            }
//            catch (Exception ex)
//            {
//                throw ex;
//            }
//        }
//    }
//}
