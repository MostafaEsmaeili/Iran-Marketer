using Pikad.Framework.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.UnitOfWork;
using Pikad.Framework.Infra.Logging;
using IranMarketer.Domain.Entity;
using Pikad.Framework.Repository.Command;
using System.Data;
using Dapper;
using IranMarketer.PartyManagement.Service;

namespace IranMarketer.PartyManagement.Dao
{
    public class ContactRepository : Repository<Contact, long>, IContactRepository
    {
        private CustomLogger Logger => new CustomLogger(this.GetType().FullName);
        public ContactRepository(IDbFactory factory) : base(factory)
        {
        }
        public long SaveContact(Contact contact)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                SetParameter(contact, command);
                command.SqlCommand = "pm.SaveContact";
                return Save(command);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
        public long UpdateContact(Contact contact)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                SetParameter(contact, command, true);
                command.SqlCommand = "pm.UpdateContact";
                return Update(command);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public long UpdateContact(Contact contact, IUnitOfWork unitOfWork)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                SetParameter(contact, command);
                command.SqlCommand = "pm.UpdateContact";
                return Update(command, unitOfWork);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public long SaveContact(Contact contact, IUnitOfWork unitOfWork)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                SetParameter(contact, command);
                command.SqlCommand = "pm.SaveContact";
                return Save(command,unitOfWork);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        private static void SetParameter(Contact contact, CustomCommand command, bool isUpdate = false)
        {
            command.Parameters.Add("PartyId", contact.PartyId, DbType.Int64);
            command.Parameters.Add("HomePhone", contact.HomePhone, DbType.String);
            command.Parameters.Add("BusinessPhone", contact.BusinessPhone, DbType.String);
            command.Parameters.Add("Mobile", contact.Mobile, DbType.String);
            command.Parameters.Add("Fax", contact.Fax, DbType.String);
            command.Parameters.Add("HomeAddress", contact.HomeAddress, DbType.String);
            command.Parameters.Add("BusinessAddress", contact.BusinessAddress, DbType.String);
            command.Parameters.Add("PostalCode", contact.PostalCode, DbType.String);
            command.Parameters.Add("WebPage", contact.WebPage, DbType.String);
            command.Parameters.Add("IMAddress", contact.IMAddress, DbType.String);
            command.Parameters.Add("Email1", contact.Email1, DbType.String);
            command.Parameters.Add("Email2", contact.Email2, DbType.String);
            command.Parameters.Add("Email3", contact.Email3, DbType.String);
            command.Parameters.Add("RegionId", contact.RegionId, DbType.Int32);
            command.Parameters.Add("RegionTitle", contact.RegionTitle, DbType.String);
            command.Parameters.Add("Created", contact.Created, DbType.DateTime);
            command.Parameters.Add("Modified", contact.Modified, DbType.DateTime);
            command.Parameters.Add("CreatedBy", contact.CreatedBy, DbType.String);
            command.Parameters.Add("ModifiedBy", contact.ModifiedBy, DbType.String);
            if (isUpdate)
            {
                command.Parameters.Add("Id", contact.Id, DbType.Int64);
            }
        }
    }
}
