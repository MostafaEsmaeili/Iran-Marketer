using System;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.PartyManagement.Interface;
using Pikad.Framework.Infra.Provider;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Infra.Validation;
using Party = IranMarketer.Domain.DTO.Party;

namespace IranMarketer.PartyManagement.API
{
    public class RetailPartyProvider : AbstractProvider<RetailParty,IRetailPartyService,int>
    {
        public void SaveBasicPartyInformation(Domain.DTO.RetailParty party)
        {
            try
            {
                BRule.Assert(party!=null,RuleExceptionCodeCommon.FilterIsNull.GetEnumDescription(), (int)RuleExceptionCodeCommon.FilterIsNull);
                var entity=ObjectMapper.BaseConverter.ConvertSourceToDest<Domain.DTO.RetailParty, RetailParty>(party);
                SaveOrUpdate(entity);

            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message,e);
                throw;
            }
        }
    }
}