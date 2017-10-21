using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Infra.Validation;
using Pikad.Framework.Repository.IoC;
using Pikad.Framework.UnitOfWork;
using IranMarketer.Common;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Enum;
using IranMarketer.PartyManagement.Interface;
using PartyBankAccount = IranMarketer.Domain.Entity.PartyBankAccount;

namespace IranMarketer.PartyManagement.API
{
    public class PartyBankAccountProvider : BaseProvider
    {
        public IPartyBankAccountService PartyBankAccountService => CoreContainer.Container.Resolve<IPartyBankAccountService>();

        public List<PartyBankAccount> GetPartyBankAccountsByPartyId(long partyId)
        {
            try
            {
                var partyBankAccount = PartyBankAccountService.GetPartyBankAccount(partyId);
                return partyBankAccount.ToList();
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }
        public PartyBankAccount GetDefaultPartyBankAccount(long partyId)
        {
            try
            {
                return PartyBankAccountService.GetPartyDefaultBankAccount(partyId);
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public void UpdatePartyBankAccount(PartyBankAccount model)
        {
            try
            {
                BRule.Assert(model.PartyId > 0,
                    RuleExceptionCodeParty.CustomerEntityIsNull.GetEnumDescription(),
                    (int)RuleExceptionCodeParty.CustomerEntityIsNull);


                BRule.Assert(model.BankId > 0,
                    RuleExceptionCodeBankDeposit.BankIdIsInvalid.GetEnumDescription(),
                    (int)RuleExceptionCodeBankDeposit.BankIdIsInvalid);
                var def = PartyBankAccountService.GetPartyDefaultBankAccount(model.PartyId);
                model.Created = model.Modified = DateTime.Now;
                var dbFactory = CoreContainer.Container.Resolve<IDbFactory>();
                using (var uow = dbFactory.Create<IUnitOfWork, ISession>(IsolationLevel.Serializable))
                {
                    try
                    {
                        if (model.IsDefault == true)
                        {
                            if (def.Id != model.Id)
                            {
                                def.IsDefault = false;
                                PartyBankAccountService.SaveOrUpdate(def, uow);
                            }
                            else
                            {
                                model.IsDefault = true;
                                model.Status = (int)AccountStatus.Active;
                            }

                        }
                        else
                        {
                            if (def.Id == model.Id)
                            {
                                model.IsDefault = true;
                                model.Status = (int)AccountStatus.Active;
                            }

                        }
                        PartyBankAccountService.SaveOrUpdate(model, uow);

                    }
                    catch (Exception e)
                    {
                        uow.Rollback();
                        throw;
                    }
                }
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public void SavePartyBankAccount(PartyBankAccount model)
        {
            try
            {
                BRule.Assert(model.PartyId > 0,
                    RuleExceptionCodeParty.CustomerEntityIsNull.GetEnumDescription(),
                    (int)RuleExceptionCodeParty.CustomerEntityIsNull);


                BRule.Assert(model.BankId > 0,
                    RuleExceptionCodeBankDeposit.BankIdIsInvalid.GetEnumDescription(),
                    (int)RuleExceptionCodeBankDeposit.BankIdIsInvalid);


                var now = PartyBankAccountService.GetPartyBankAccount(model.PartyId, model.AccountNumber, model.BankId);

                BRule.Assert(now == null,
                    RuleExceptionCodePartyBankAccount.AccountAlreadyAdded.GetEnumDescription(),
                    (int)RuleExceptionCodePartyBankAccount.AccountAlreadyAdded);
                var def = PartyBankAccountService.GetPartyDefaultBankAccount(model.PartyId);
                BRule.Assert(def != null,
                    RuleExceptionCodePartyBankAccount.NoDefaultAccount.GetEnumDescription(),
                    (int)RuleExceptionCodePartyBankAccount.NoDefaultAccount);
                model.Created = model.Modified = DateTime.Now;


                var dbFactory = CoreContainer.Container.Resolve<IDbFactory>();
                using (var uow = dbFactory.Create<IUnitOfWork, ISession>(IsolationLevel.Serializable))
                {
                    try
                    {
                        if (model.IsDefault == true)
                        {
                            def.IsDefault = false;
                            PartyBankAccountService.SaveOrUpdate(def, uow);
                        }

                        PartyBankAccountService.SavePartyBankAccount(model, uow);
                    }
                    catch (Exception e)
                    {
                        uow.Rollback();
                        throw;
                    }
                }
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }

        }

    }
}