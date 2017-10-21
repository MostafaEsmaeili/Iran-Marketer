using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository;
using Pikad.Framework.Repository.Command;
using Pikad.Framework.Repository.IoC;
using Pikad.Framework.Repository.Pagination;
using Pikad.Framework.UnitOfWork;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Filters;
using IranMarketer.PartyManagement.Dao.Party;
using IranMarketer.PartyManagement.Service;

namespace IranMarketer.PartyManagement.Dao
{
    public class PartyRepository : Repository<Domain.Entity.Party, long>, IPartyRepository
    {
        private CustomLogger Logger => new CustomLogger(this.GetType().FullName);
        public PartyRepository(IDbFactory factory) : base(factory)
        {
        }

        public long SaveParty(Domain.Entity.Party party)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                SetParameter(party, command);
                command.SqlCommand = "pm.SaveParty";
                return Save(command);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public long UpdateParty(Domain.Entity.Party party)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };

                SetParameter(party, command, true);
                command.SqlCommand = "pm.UpdateParty";
                return Update(command);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        private static void SetParameter(Domain.Entity.Party party, CustomCommand command, bool isUpdate = false)
        {
            command.Parameters.Add("Name", party.Name, DbType.String);
            command.Parameters.Add("EnName", party.EnName, DbType.String);
            command.Parameters.Add("FirstName", party.FirstName, DbType.String);
            command.Parameters.Add("EnFirstName", party.EnFirstName, DbType.String);
            command.Parameters.Add("LastName", party.LastName, DbType.String);
            command.Parameters.Add("EnLastName", party.EnLastName, DbType.String);
            command.Parameters.Add("FatherName", party.FatherName, DbType.String);
            command.Parameters.Add("EnFatherName", party.EnFatherName, DbType.String);
            command.Parameters.Add("NationalId", party.NationalId, DbType.String);
            command.Parameters.Add("IdentityCard", party.IdentityCard, DbType.String);
            command.Parameters.Add("IdentitySerialNumber", party.IdentitySerialNumber, DbType.String);
            command.Parameters.Add("NationalityPlaceId", party.NationalityPlaceId, DbType.Int32);
            command.Parameters.Add("NationalityText", party.NationalityText, DbType.String);
            command.Parameters.Add("DetailLedgerCode", party.DetailLedgerCode, DbType.String);
            command.Parameters.Add("DetailLedgerId", party.DetailLedgerId, DbType.Int64);
            command.Parameters.Add("IssuerName", party.IssuerName, DbType.String);
            command.Parameters.Add("EcomomicCode", party.EcomomicCode, DbType.String);
            command.Parameters.Add("FullName", party.FullName, DbType.String);
            command.Parameters.Add("BirthDate", party.BirthDate, DbType.DateTime);
            command.Parameters.Add("RegisterDate", party.RegisterDate, DbType.DateTime);
            command.Parameters.Add("RegisterPlace", party.RegisterPlace, DbType.String);
            command.Parameters.Add("IssuePlace", party.IssuePlace, DbType.String);
            command.Parameters.Add("BirthPlace", party.BirthPlace, DbType.String);
            command.Parameters.Add("Gender", party.Gender, DbType.Int32);
            command.Parameters.Add("OrganizationalType", party.OrganizationalType, DbType.Int32);
            command.Parameters.Add("UserId", party.UserId, DbType.String);
            command.Parameters.Add("UserName", party.UserName, DbType.String);
            command.Parameters.Add("DeletionDate", party.DeletionDate, DbType.DateTime);
            command.Parameters.Add("ValidFrom", party.ValidFrom, DbType.Date);
            command.Parameters.Add("ValidUntil", party.ValidUntil, DbType.Date);
            command.Parameters.Add("Position", party.Position, DbType.Int32);
            command.Parameters.Add("JobTitle", party.JobTitle, DbType.Int32);
            command.Parameters.Add("EducationDegree", party.EducationDegree, DbType.Int32);
            command.Parameters.Add("PartyType", party.PartyType, DbType.Int32);
            command.Parameters.Add("Modified", party.Modified, DbType.DateTime);
            command.Parameters.Add("Created", party.Created, DbType.DateTime);
            command.Parameters.Add("ModifiedBy", party.ModifiedBy, DbType.String);
            command.Parameters.Add("CreatedBy", party.CreatedBy, DbType.String);
            if (isUpdate)
            {
                command.Parameters.Add("Id", party.Id, DbType.Int64);
            }
        }

        public long SaveParty(Domain.Entity.Party party, IUnitOfWork unitOfWork)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                SetParameter(party, command);
                command.SqlCommand = "pm.SaveParty";
                return Save(command, unitOfWork);
            }
            catch (Exception ex)
            {
                //Logger.ErrorException(ex.Message, ex); //TODO : check it
                throw ex;
            }
        }

        public void SaveBulkParties(List<Domain.Entity.Party> parties)
        {
            try
            {
                var testsession = CoreContainer.Container.Resolve<ISession>();
               
                var transactionDataTable = GetPartyDataTable(parties);
                var bulkCopy = GetPartyiesSqlBulkCopy((SqlConnection)testsession.Connection);
                using (testsession.Connection)
                {
                    bulkCopy.WriteToServer(transactionDataTable);
                }
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public List<Domain.Entity.Party> SearchParties(string phrase)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                command.Parameters.Add("phrase", phrase, DbType.String);
                command.SqlCommand = "pm.SearchParties";
                return GetAll(command, new PartyRowMapper()).ToList();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public Domain.Entity.Party GetByNationalId(string nationalId)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                command.Parameters.Add("nationalId", nationalId, DbType.String);
                command.SqlCommand = "pm.GetByNationalId";
                return Get(command, new PartyRowMapper());

            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public string GetLastPartyDetailLedgerCode()
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = null
                };
                return Session.Query<string>("pm.GetLastPartyDetailLedgerCode", commandType: command.CommandType, param: command.Parameters).FirstOrDefault();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public string GetPartyDetailLedgerCode(string nationalId)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                command.Parameters.Add("nationalId", nationalId, DbType.String);
                return Session.Query<string>("pm.GetPartyDetailLedgerCode", commandType: command.CommandType, param: command.Parameters).FirstOrDefault();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public long GetPartyDetailLedgerId(string nationalId)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                command.Parameters.Add("nationalId", nationalId, DbType.String);
                return Session.Query<long>("pm.GetPartyDetailLedgerId", commandType: command.CommandType, param: command.Parameters).FirstOrDefault();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        //public List<FlatParty> GetFaltParties()
        //{
        //    try
        //    {
        //        return Session.Query<FlatParty>("pm.GetFaltParties", commandType: CommandType.StoredProcedure).ToList();
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.ErrorException(ex.Message, ex);
        //        throw ex;
        //    }
        //}

        public long UpdateParty(Domain.Entity.Party party, IUnitOfWork unitOfWork)
        {
            try
            {
                try
                {
                    var command = new CustomCommand
                    {
                        CommandType = CommandType.StoredProcedure,
                        Parameters = new DynamicParameters()
                    };

                    SetParameter(party, command, true);
                    command.SqlCommand = "pm.UpdateParty";
                    return Update(command, unitOfWork);
                }
                catch (Exception ex)
                {
                    Logger.ErrorException(ex.Message, ex);
                    throw ex;
                }
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public string GetPartyFullName(string userName)
        {
            IDataReader dr = null;
            var res = "";
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters(),
                    SqlCommand = "pm.GetPartyFullNameByUserName"
                };
                command.Parameters.Add("userName",userName,DbType.String);
                dr = Session.ExecuteReader(new CommandDefinition(command.SqlCommand, command.Parameters, commandType: command.CommandType));
                if (dr.Read())
                {
                    res = dr[0].SafeString();
                }
                return res;
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
            finally
            {
                if (dr != null)
                {
                    dr.Dispose();
                    dr.Close();
                }
            }
        }

        public PageCollection<Customer> GetFlatCustomers(BaseReportFilter<FlatCustomerReportFilter> filter)
        {
            try
            {
                try
                {
                    var command = new CustomCommand
                    {
                        CommandType = CommandType.StoredProcedure,
                        Parameters = new DynamicParameters()
                    };
                    command.Parameters.Add("PartyId",filter.ReportFilter.PartyId);
                    command.Parameters.Add("BranchId", filter.ReportFilter.BranchId);
                    command.Parameters.Add("NamePhrase", filter.ReportFilter.NamePhrase);
                    command.Parameters.Add("RegionId", filter.ReportFilter.RegionId);
                    command.Parameters.Add("PartyType", filter.ReportFilter.PartyType);
                    command.Parameters.Add("FromDate", filter.ReportFilter.DateFilter.StartDate.Date);
                    command.Parameters.Add("ToDate", filter.ReportFilter.DateFilter.EndDate.Date);
                    command.Parameters.Add("pageSize", filter.OptionalFilter.take);
                    command.Parameters.Add("skip", filter.OptionalFilter.page - 1);


                    var orderClause = "";
                    if (filter.OptionalFilter?.sort != null)
                        orderClause = filter.OptionalFilter.sort.Aggregate(orderClause,
                            (current, sort) => current + sort.field + " " + sort.dir + " ");
                    command.Parameters.Add("orderClause", orderClause);
                    command.SqlCommand = "pm.GetFlatCustomers";
                    return GetPageCollection(command,new FlatCustomerRowMapper());
                }
                catch (Exception ex)
                {
                    Logger.ErrorException(ex.Message, ex);
                    throw ex;
                }
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public long SaveSimpleParty(Domain.Entity.Party party, IUnitOfWork unitOfWork)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                command.Parameters.Add("FirstName", party.FirstName, DbType.String);
                command.Parameters.Add("NationalId", party.NationalId, DbType.String);
                command.Parameters.Add("LastName", party.LastName, DbType.String);
                command.Parameters.Add("Name", party.Name, DbType.String);
                command.Parameters.Add("FullName", party.FullName, DbType.String);
                command.Parameters.Add("ValidFrom", party.ValidFrom, DbType.Date);
                command.Parameters.Add("ValidUntil", party.ValidUntil, DbType.Date);
                command.Parameters.Add("PartyType", party.PartyType, DbType.Int32);
                command.Parameters.Add("Modified", party.Modified, DbType.DateTime);
                command.Parameters.Add("Created", party.Created, DbType.DateTime);
                command.Parameters.Add("ModifiedBy", party.ModifiedBy, DbType.String);
                command.Parameters.Add("CreatedBy", party.CreatedBy, DbType.String);
                command.Parameters.Add("UserId", party.UserId, DbType.String);
                command.Parameters.Add("UserName", party.UserName, DbType.String);
                command.Parameters.Add("NationalityPlaceId", party.NationalityPlaceId, DbType.Int32);
                command.Parameters.Add("DetailLedgerId", party.DetailLedgerId, DbType.Int64);
                command.Parameters.Add("DetailLedgerCode", party.DetailLedgerCode, DbType.String);

                command.SqlCommand = "pm.SaveSimpleParty";
                return Save(command,unitOfWork);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public long UpdateSimpleParty(Domain.Entity.Party party, IUnitOfWork unitOfWork)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                command.Parameters.Add("FirstName", party.FirstName, DbType.String);
                command.Parameters.Add("NationalId", party.NationalId, DbType.String);
                command.Parameters.Add("LastName", party.LastName, DbType.String);
                command.Parameters.Add("Name", party.Name, DbType.String);
                command.Parameters.Add("FullName", party.FullName, DbType.String);
                command.Parameters.Add("ValidFrom", party.ValidFrom, DbType.Date);
                command.Parameters.Add("ValidUntil", party.ValidUntil, DbType.Date);
                command.Parameters.Add("PartyType", party.PartyType, DbType.Int32);
                command.Parameters.Add("Modified", party.Modified, DbType.DateTime);
                command.Parameters.Add("Created", party.Created, DbType.DateTime);
                command.Parameters.Add("ModifiedBy", party.ModifiedBy, DbType.String);
                command.Parameters.Add("CreatedBy", party.CreatedBy, DbType.String);
                command.Parameters.Add("UserId", party.UserId, DbType.String);
                command.Parameters.Add("UserName", party.UserName, DbType.String);
                command.Parameters.Add("NationalityPlaceId", party.NationalityPlaceId, DbType.Int32);
                command.Parameters.Add("DetailLedgerId", party.DetailLedgerId, DbType.Int64);
                command.Parameters.Add("DetailLedgerCode", party.DetailLedgerCode, DbType.String);
                command.Parameters.Add("Id", party.Id, DbType.Int64);

                command.SqlCommand = "pm.UpdateSimpleParty";
                return Update(command, unitOfWork);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public List<Domain.Entity.Party> SearchParties(string phrase, int roleCode)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                command.Parameters.Add("phrase", phrase,DbType.String);
                command.Parameters.Add("rolecode", roleCode, DbType.Int32);
                command.SqlCommand = "pm.SearchPartiesByRole";
                return GetAll(command, new PartyRowMapper()).ToList();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public Domain.Entity.Party GetByUserName(string userName)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                command.Parameters.Add("userName", userName, DbType.String);
                command.SqlCommand = "pm.GetGetByUserName";
                return Get(command, new PartyRowMapper());
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        private SqlBulkCopy GetPartyiesSqlBulkCopy(SqlConnection connection)
        {
            try
            {
                var bulkCopy = new SqlBulkCopy(connection);

                bulkCopy.ColumnMappings.Add("Name", "Name");
                bulkCopy.ColumnMappings.Add("EnName", "EnName");
                bulkCopy.ColumnMappings.Add("FirstName", "FirstName");
                bulkCopy.ColumnMappings.Add("EnFirstName", "EnFirstName");
                bulkCopy.ColumnMappings.Add("LastName", "LastName");
                bulkCopy.ColumnMappings.Add("EnLastName", "EnLastName");
                bulkCopy.ColumnMappings.Add("FatherName", "FatherName");
                bulkCopy.ColumnMappings.Add("FatherName", "FatherName");
                bulkCopy.ColumnMappings.Add("NationalId", "NationalId");
                bulkCopy.ColumnMappings.Add("IdentityCard", "IdentityCard");
                bulkCopy.ColumnMappings.Add("NationalityPlaceId", "NationalityPlaceId");
                bulkCopy.ColumnMappings.Add("NationalityText", "NationalityText");
                bulkCopy.ColumnMappings.Add("IssuerId", "IssuerId");
                bulkCopy.ColumnMappings.Add("IssuerName", "IssuerName");
                bulkCopy.ColumnMappings.Add("EcomomicCode", "EcomomicCode");
                bulkCopy.ColumnMappings.Add("FullName", "FullName");
                bulkCopy.ColumnMappings.Add("BirthDateJalali", "BirthDateJalali");
                bulkCopy.ColumnMappings.Add("RegisterDateJalali", "RegisterDateJalali");
                bulkCopy.ColumnMappings.Add("RegisterPlace", "RegisterPlace");
                bulkCopy.ColumnMappings.Add("RegisterPlaceId", "RegisterPlaceId");
                bulkCopy.ColumnMappings.Add("BirthPlace", "BirthPlace");
                bulkCopy.ColumnMappings.Add("BirthPlaceId", "BirthPlaceId");
                bulkCopy.ColumnMappings.Add("Gender", "Gender");
                bulkCopy.ColumnMappings.Add("OrganizationalType", "OrganizationalType");
                bulkCopy.ColumnMappings.Add("UserId", "UserId");
                bulkCopy.ColumnMappings.Add("UserName", "UserName");
                bulkCopy.ColumnMappings.Add("DeletionDate", "DeletionDate");
                bulkCopy.ColumnMappings.Add("ValidFrom", "ValidFrom");
                bulkCopy.ColumnMappings.Add("ValidUntil", "ValidUntil");
                bulkCopy.ColumnMappings.Add("Position", "Position");
                bulkCopy.ColumnMappings.Add("JobTitle", "JobTitle");
                bulkCopy.ColumnMappings.Add("EducationDegree", "EducationDegree");
                bulkCopy.ColumnMappings.Add("Modified", "Modified");
                bulkCopy.ColumnMappings.Add("Created", "Created");
                bulkCopy.ColumnMappings.Add("ModifiedBy", "ModifiedBy");
                bulkCopy.ColumnMappings.Add("CreatedBy", "CreatedBy");
                bulkCopy.BatchSize = 2000;
                bulkCopy.DestinationTableName = "pm.Party";
                return bulkCopy;
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        private DataTable GetPartyDataTable(List<Domain.Entity.Party> parties)
        {
            try
            {
                var table = new DataTable();
                foreach (var party in parties)
                {
                    var row = table.NewRow();

                    row["Name"] = party.Name;
                    row["EnName"] = party.EnName;
                    row["FirstName"] = party.FirstName;
                    //row["EnFirstName", "EnFirstName");
                    //row["LastName", "LastName");
                    //row["EnLastName", "EnLastName");
                    //row["FatherName", "FatherName");
                    //row["FatherName", "FatherName");
                    //row["NationalId", "NationalId");
                    //row["IdentityCard", "IdentityCard");
                    //row["NationalityPlaceId", "NationalityPlaceId");
                    //row["NationalityText", "NationalityText");
                    //row["IssuerId", "IssuerId");
                    //row["IssuerName", "IssuerName");
                    //row["EcomomicCode", "EcomomicCode");
                    //row["FullName", "FullName");
                    //row["BirthDateJalali", "BirthDateJalali");
                    //row["RegisterDateJalali", "RegisterDateJalali");
                    //row["RegisterPlace", "RegisterPlace");
                    //row["RegisterPlaceId", "RegisterPlaceId");
                    //row["BirthPlace", "BirthPlace");
                    //row["BirthPlaceId", "BirthPlaceId");
                    //row["Gender", "Gender");
                    //row["OrganizationalType", "OrganizationalType");
                    //row["UserId", "UserId");
                    //row["UserName", "UserName");
                    //row["DeletionDate", "DeletionDate");
                    //row["ValidFrom", "ValidFrom");
                    //row["ValidUntil", "ValidUntil");
                    //row["Position", "Position");
                    //row["JobTitle", "JobTitle");
                    //row["EducationDegree", "EducationDegree");
                    //row["Modified", "Modified");
                    //row["Created", "Created");
                    //row["ModifiedBy", "ModifiedBy");
                    //row["CreatedBy", "CreatedBy");
                    table.Rows.Add(row);
                }
                return table;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
