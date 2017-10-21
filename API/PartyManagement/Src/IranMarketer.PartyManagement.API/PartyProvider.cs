using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Repository.IoC;
using Pikad.Framework.UnitOfWork;
using IranMarketer.Common;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.Domain.Filters;
using IranMarketer.PartyManagement.Interface;
using IranMarketer.SharedData;
using Pikad.Framework.Infra.Provider;
using Pikad.Framework.Infra.Utility;

namespace IranMarketer.PartyManagement.API
{
    public class PartyProvider : AbstractProvider<RetailParty, IRetailPartyService,int>
    {
        public DocumentProvider DocumentProvider => CoreContainer.Container.Resolve<DocumentProvider>();
        //public IPartyService PartyService => CoreContainer.Container.Resolve<IPartyService>();
        //public IPartyBranchService PartyBranchService => CoreContainer.Container.Resolve<IPartyBranchService>();

        //public List<Domain.Entity.Party> SearchParties(string pharse)
        //{
        //    try
        //    {
        //        var result = PartyService.SearchParties(pharse);
        //        return result;
        //    }
        //    catch (Exception e)
        //    {
        //        Logger.ErrorException(e.Message, e);
        //        throw;
        //    }
        //}

        //public List<Party> SearchParties(string filter, int roleCode)
        //{
        //    try
        //    {
        //        return PartyService.SearchParties(filter,roleCode);
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.ErrorException(ex.Message, ex);
        //        throw ex;
        //    }
        //}
        public void SavePartyBasicInformation(ApiRequest<Domain.DTO.RetailParty> model)
        {
            try
            {
                
                var party = GetByUserName(model.AuthenticatedUserName);
                var entity = ObjectMapper.BaseConverter.ConvertSourceToDest<Domain.DTO.RetailParty, RetailParty>(model.Entity);
                entity.Id = party.Id;
                entity.Modified=DateTime.Now;
                entity.ModifiedBy = model.AuthenticatedUserName;
                model.Entity.BirthCertificate.DocType = (int) DocumentType.BirthCertificate;

                var dbFactory = CoreContainer.Container.Resolve<IDbFactory>();

                using (var uow = dbFactory.Create<IUnitOfWork, ISession>(IsolationLevel.Serializable))
                {
                    try
                    {
                        SaveOrUpdate(entity, uow);
                        DocumentProvider.SaveOrUpdate(model.Entity.BirthCertificate);
                    }
                    catch (Exception ex)
                    {
                        Logger.ErrorException(ex.Message,ex);
                        uow.Rollback();
                        throw;
                    }
                }
                //save attachment

            }
            catch (Exception e)
            {

                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public void JobPrefer(ApiRequest<JobPrefer> model)
        {
            try
            {

            }
            catch (Exception e)
            {

                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public RetailParty GetByNationalId(string nationalId)
        {
            try
            {
                return Service.Get(x => x.NationalId == nationalId).FirstOrDefault();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public RetailParty GetByUserName(string userName)
        {
            try
            {
                return Service.Get(x=>x.UserName==userName).FirstOrDefault();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        //public string GetPartyFullName(string userName)
        //{
        //    try
        //    {
        //        return PartyService.GetPartyFullName(userName);
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.ErrorException(ex.Message, ex);
        //        throw ex;
        //    }
        //}

        public RetailParty GetById(int partyId)
        {
            try
            {
                return Service.GetKey(partyId);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }


        }

        public long SaveParty(RetailParty party, IUnitOfWork unitOfWork)
        {
            try
            {
                return Service.SaveOrUpdate(party, unitOfWork);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
        //public long SaveSimpleParty(Party party, IUnitOfWork unitOfWork)
        //{
        //    try
        //    {
        //        return PartyService.SaveSimpleParty(party, unitOfWork);
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.ErrorException(ex.Message, ex);
        //        throw ex;
        //    }
        //}

    }
}
