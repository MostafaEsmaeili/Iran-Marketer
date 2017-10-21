//using System;
//using System.Collections.Generic;
//using System.Data;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;
//using Castle.Core.Internal;
//using Pikad.Framework.Infra.Logging;
//using Pikad.Framework.Infra.Utility;
//using Pikad.Framework.Infra.Validation;
//using Pikad.Framework.Repository.IoC;
//using Pikad.Framework.Repository.Pagination;
//using Pikad.Framework.UnitOfWork;
//using IranMarketer.Common;
//using IranMarketer.Common.Utility;
//using IranMarketer.Domain.DTO;
//using IranMarketer.Domain.Entity;
//using IranMarketer.Domain.Enum;
//using IranMarketer.Domain.Filters;
//using IranMarketer.PartyManagement.Interface;
//using Contact = IranMarketer.Domain.DTO.Contact;
//using Party = IranMarketer.Domain.DTO.Party;
//using PartyBankAccount = IranMarketer.Domain.Entity.PartyBankAccount;

//namespace IranMarketer.PartyManagement.API
//{
//    public class CustomerProvider : BaseProvider
//    {
//        public IPartyService PartyService => CoreContainer.Container.Resolve<IPartyService>();
//        public IContactService ContactService => CoreContainer.Container.Resolve<IContactService>();
//        public IPersonalityRoleService PersonalityRoleService => CoreContainer.Container.Resolve<IPersonalityRoleService>();
//        public IPartyRolesService PartyRolesService => CoreContainer.Container.Resolve<IPartyRolesService>();
//        public IPartyBankAccountService PartyBankAccountService => CoreContainer.Container.Resolve<IPartyBankAccountService>();


//        private CustomLogger Logger => new CustomLogger(GetType().FullName);

//        public long SaveCustomer(Customer customer)
//        {
//            try
//            {
//                CustomerSaveRuleCheck(customer);
//                SetNames(customer);
//                var fullCustomer = SetCustomer(customer);
//                var customerDetailLedger = SetCustomerDetailLedger(fullCustomer.Party);
//                fullCustomer.PartyBankAccount.Created = fullCustomer.PartyBankAccount.Modified = DateTime.Now;

//                var dbFactory = CoreContainer.Container.Resolve<IDbFactory>();
//                using (var uow = dbFactory.Create<IUnitOfWork, ISession>(IsolationLevel.Serializable))
//                {
//                    try
//                    {
//                        var id = LedgerProvider.SaveDetailLedger(customerDetailLedger, uow);
//                        fullCustomer.Party.DetailLedgerId = id;
//                        fullCustomer.Party.DetailLedgerCode = customerDetailLedger.Code;
//                        var partyId = PartyService.SaveParty(fullCustomer.Party, uow);
//                        fullCustomer.Contact.PartyId = partyId;
//                        ContactService.SaveContact(fullCustomer.Contact, uow);
//                        fullCustomer.PartyRoles.PartyId = partyId;
//                        PartyRolesService.Save(fullCustomer.PartyRoles, uow);
//                        fullCustomer.PartyBankAccount.PartyId = partyId;
//                        PartyBankAccountService.SavePartyBankAccount(fullCustomer.PartyBankAccount, uow);
//                    }
//                    catch (Exception ex)
//                    {
//                        uow.Rollback();
//                        throw ex;
//                    }
//                }
//                return fullCustomer.Party.Id;
//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw;
//            }
//        }

//        private static void SetNames(Customer customer)
//        {
//            if (!customer.Party.Name.IsNullOrEmpty())
//            {
//                customer.Party.Name = customer.Party.Name.SafeString().SafePersianPhrase().Replace("@", "")
//                    .Replace("|", "")
//                    .Replace("*", "").Replace(">", "").Replace("<", "").Replace(".", "").Replace("!", "")
//                    .Replace("#", "")
//                    .SafeTrim();
//            }
//            else if (!customer.Party.LastName.IsNullOrEmpty() && !customer.Party.FullName.IsNullOrEmpty() && !customer.Party.FatherName.IsNullOrEmpty())
//            {
//                customer.Party.LastName = customer.Party.LastName.SafeString().SafePersianPhrase().Replace("@", "").Replace("|", "")
//                    .Replace("*", "").Replace(">", "").Replace("<", "").Replace(".", "").Replace("!", "").Replace("#", "")
//                    .SafeTrim();
//                customer.Party.FirstName = customer.Party.FirstName.SafeString().SafePersianPhrase().Replace("@", "")
//                    .Replace("|", "").Replace("*", "").Replace(">", "").Replace("<", "").Replace(".", "").Replace("!", "")
//                    .Replace("#", "").SafeTrim();
//                customer.Party.FatherName = customer.Party.FatherName.SafeString().SafePersianPhrase().Replace("@", "")
//                    .Replace("|", "").Replace("*", "").Replace(">", "").Replace("<", "").Replace(".", "").Replace("!", "")
//                    .Replace("#", "").SafeTrim();
//            }

//        }

//        public void UpdateCustomer(Customer customer)

//        {
//            try
//            {
               
//                CustomerSaveRuleCheck(customer, true);
//                SetNames(customer);
//                var fullCustomer = SetCustomerForEdit(customer);
//                var detailLedgerCode = PartyService.GetPartyDetailLedgerCode(fullCustomer.Party.NationalId);
//                var detailDedgerId = LedgerProvider.GetDetailLedgerId(detailLedgerCode);
//                BRule.Assert(detailDedgerId > 0, RuleExceptionCodeParty.CustomerDetailLedgerIsIsInvalid.GetDescription(),
//                    (int)RuleExceptionCodeParty.CustomerDetailLedgerIsIsInvalid);

//                var dbFactory = CoreContainer.Container.Resolve<IDbFactory>();
//                using (var uow = dbFactory.Create<IUnitOfWork, ISession>(IsolationLevel.Serializable))
//                {
//                    try
//                    {
//                        LedgerProvider.UpdateDetailLedgerTitle(detailLedgerCode, fullCustomer.Party.FullName, uow);
//                        PartyService.UpdateParty(fullCustomer.Party, uow);
//                        ContactService.SaveOrUpdate(fullCustomer.Contact, uow);
//                        PartyBankAccountService.UpdatePartyBankAccount(fullCustomer.PartyBankAccount, uow);
//                    }
//                    catch (Exception ex)
//                    {
//                        uow.Rollback();
//                        throw ex;
//                    }
//                }

//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw;
//            }
//        }

//        private Domain.Entity.FullCustomer SetCustomerForEdit(Customer customer)
//        {
//            try
//            {
//                var fullCustomer = new FullCustomer();

//                var partyEntity = ObjectMapper.BaseConverter.ConvertSourceToDest<Party, Domain.Entity.Party>(customer.Party);
//                fullCustomer.Party = partyEntity;
//                fullCustomer.Party.Modified = DateTime.Now;
//                if (!string.IsNullOrEmpty(customer.Party.BirthDateJalali))
//                    fullCustomer.Party.BirthDate = customer.Party.BirthDateJalali.ConvertJalaliToMiladi();
//                else
//                {
//                    fullCustomer.Party.BirthDate = null;
//                }
//                if (!string.IsNullOrEmpty(customer.Party.RegisterDateJalali))
//                    fullCustomer.Party.RegisterDate = customer.Party.RegisterDateJalali.ConvertJalaliToMiladi();
//                else
//                {
//                    fullCustomer.Party.RegisterDate = null;
//                }
//                fullCustomer.Party.NationalId = customer.Party.NationalId.SafeString().SafeTrim().Replace("-", "");
//                fullCustomer.Party.FullName = SetFullName(customer);


//                var contactEntity = ObjectMapper.BaseConverter.ConvertSourceToDest<Contact, Domain.Entity.Contact>(customer.Contact);
//                contactEntity.Modified = DateTime.Now;
//                contactEntity.ModifiedBy = fullCustomer.Party.ModifiedBy;
//                fullCustomer.Contact = contactEntity;
//                var contact = ContactService.GetContactByPartyId(fullCustomer.Party.Id);
//                BRule.Assert(contact != null,
//                    RuleExceptionCodeParty.CustomerContactIsInvalid.ToString(),
//                    (int)RuleExceptionCodeParty.CustomerContactIsInvalid);

//                contactEntity.Id = contact.Id;
//                contactEntity.PartyId = partyEntity.Id;
//                contact.ModifiedBy = fullCustomer.Party.ModifiedBy;

//                var partyBankAccount = ObjectMapper.BaseConverter.ConvertSourceToDest<Domain.DTO.PartyBankAccount,
//                    Domain.Entity.PartyBankAccount>(
//                    customer.PartyBankAccount);
//                partyBankAccount.Modified = DateTime.Now;

//                var bankAccount = PartyBankAccountService.GetPartyDefaultBankAccount(partyEntity.Id);
//                BRule.Assert(bankAccount != null,
//                    RuleExceptionCodeParty.CustomerBankAccountInvalid.GetDescription(),
//                    (int)RuleExceptionCodeParty.CustomerBankAccountInvalid);
//                bankAccount.PartyId = partyEntity.Id;
//                partyBankAccount.Id = bankAccount.Id;
//                partyBankAccount.IsDefault = true;
//                partyBankAccount.PartyId = partyEntity.Id;
//                partyBankAccount.AccountType = customer.PartyBankAccount.AccountType;
//                partyBankAccount.Status = (int)BankDepositState.Active;
//                partyBankAccount.Created = DateTime.Now;
//                fullCustomer.PartyBankAccount = partyBankAccount;

//                return fullCustomer;
//            }
//            catch (Exception e)
//            {
//                throw e;
//            }
//        }

//        private static string SetFullName(Customer customer)
//        {
//            return customer.Party.FirstName + " " + customer.Party.LastName + customer.Party.Name;
//        }


//        private DetailLedger SetCustomerDetailLedger(Domain.Entity.Party customer)
//        {
//            try
//            {

//                var lastCode = PartyService.GetLastPartyDetailLedgerCode();
//                var detailLedger = new DetailLedger
//                {
//                    ClassId = (int)AccountClassEnum.Party,
//                    Code = LedgerHelper.GetDetailLedgerBaseCode(AccountClassEnum.Party, lastCode),
//                    Description = customer.FullName,
//                    Title = customer.FullName,
//                    Created = DateTime.Now,
//                    Modified = DateTime.Now,
//                    NatureId = (int)AccountNature.BaseOnClass,
//                    Status = (int)AccountStatus.Active,
//                    FriendlyCode = LedgerHelper.GetDetailLedgerBaseCode(AccountClassEnum.Party, lastCode)
//                };

//                return detailLedger;
//            }
//            catch (Exception ex)
//            {
//                throw ex;
//            }
//        }

//        private static Domain.Entity.FullCustomer SetCustomer(Customer customer)
//        {
//            var fullCustomer = new FullCustomer();

//            try
//            {
//                var partyEntity =
//                    ObjectMapper.BaseConverter.ConvertSourceToDest<Party, Domain.Entity.Party>(customer.Party);
//                partyEntity.ValidFrom = DateTime.Now;
//                partyEntity.Created = DateTime.Now;
//                fullCustomer.Party = partyEntity;
//                fullCustomer.Party.NationalId = customer.Party.NationalId.SafeString().SafeTrim().Replace("-", "");
//                fullCustomer.Party.PartyType = (int)customer.Party.PartyTypeEnum;
//                fullCustomer.Party.FullName = SetFullName(customer);

//                var contactEntity =
//                    ObjectMapper.BaseConverter.ConvertSourceToDest<Contact, Domain.Entity.Contact>(customer.Contact);
//                contactEntity.CreatedBy = contactEntity.ModifiedBy = partyEntity.CreatedBy;

//                contactEntity.Created = DateTime.Now;
//                fullCustomer.Contact = contactEntity;

//                if (!string.IsNullOrEmpty(customer.Party.BirthDateJalali))
//                    fullCustomer.Party.BirthDate = customer.Party.BirthDateJalali.ConvertJalaliToMiladi();
//                else
//                {
//                    fullCustomer.Party.BirthDate = null;
//                }
//                if (!string.IsNullOrEmpty(customer.Party.RegisterDateJalali))
//                    fullCustomer.Party.RegisterDate = customer.Party.RegisterDateJalali.ConvertJalaliToMiladi();
//                else
//                {
//                    fullCustomer.Party.RegisterDate = null;
//                }

//                var partyRoleEntity = new PartyRoles
//                {
//                    Created = partyEntity.Created,
//                    CreatedBy = partyEntity.CreatedBy,
//                    Modified = partyEntity.Modified,
//                    ModifiedBy = partyEntity.ModifiedBy,
//                    PersonalityRoleCodeId = (int)Domain.Enum.PersonalityRole.Customer,
//                    ValidFrom = partyEntity.ValidFrom
//                };
//                fullCustomer.PartyRoles = partyRoleEntity;

//                var partyBankAccount = ObjectMapper.BaseConverter
//                    .ConvertSourceToDest<Domain.DTO.PartyBankAccount, Domain.Entity.PartyBankAccount>(
//                        customer.PartyBankAccount);
//                fullCustomer.PartyBankAccount = partyBankAccount;

//                partyBankAccount.IsDefault = true;
//                partyBankAccount.Status = (int)BankDepositState.Active;
//            }
//            catch (Exception ex)
//            {
//                throw ex;
//            }
//            return fullCustomer;
//        }

//        private void CustomerSaveRuleCheck(Customer customer, bool inUpdate = false)
//        {
//            try
//            {
//                BRule.Assert(customer != null, RuleExceptionCodeParty.CustomerEntityIsNull.GetDescription(),
//                    (int)RuleExceptionCodeParty.CustomerEntityIsNull);
//                BRule.Assert(customer.Party != null, RuleExceptionCodeParty.CustomerEntityIsNull.GetDescription(),
//                    (int)RuleExceptionCodeParty.CustomerEntityIsNull);
//                BRule.Assert(!string.IsNullOrEmpty(customer.Party.Name + customer.Party.FirstName),
//                    RuleExceptionCodeParty.NameOfPartyIsEmpty.GetDescription(),
//                    (int)RuleExceptionCodeParty.NameOfPartyIsEmpty);

//                if (customer.Party.PartyTypeEnum == PartyType.Retail)
//                {
//                    BRule.Assert(!string.IsNullOrEmpty(customer.Party.LastName),
//                        RuleExceptionCodeParty.FamilyOfPartyIsEmpty.GetDescription(),
//                        (int)RuleExceptionCodeParty.FamilyOfPartyIsEmpty);

//                    BRule.Assert(!string.IsNullOrEmpty(customer.Party.FatherName),
//                        RuleExceptionCodeParty.FatherNameOfPartyIsEmpty.GetDescription(),
//                        (int)RuleExceptionCodeParty.FatherNameOfPartyIsEmpty);
//                }

//                BRule.Assert(!string.IsNullOrEmpty(customer.Party.NationalId),
//                    RuleExceptionCodeParty.NationalIdIsNull.GetDescription(),
//                    (int)RuleExceptionCodeParty.NationalIdIsNull);
//                if (customer.Party.PartyTypeEnum == PartyType.Retail)
//                    BRule.Assert(!string.IsNullOrEmpty(customer.Party.BirthDateJalali + customer.Party.RegisterDateJalali),
//                        RuleExceptionCodeParty.CustomerBirthDateOrRegisterDateIsRequired.GetDescription(),
//                        (int)RuleExceptionCodeParty.CustomerBirthDateOrRegisterDateIsRequired);

//                BRule.Assert(!string.IsNullOrEmpty(customer.Contact.Mobile + customer.Contact.HomePhone),
//                    RuleExceptionCodeParty.CustomerMobileOrPhoneIsNull.GetDescription(),
//                    (int)RuleExceptionCodeParty.CustomerMobileOrPhoneIsNull);
//                if (customer.Party.PartyTypeEnum == PartyType.Retail)
//                    BRule.Assert(!string.IsNullOrEmpty(customer.Contact.HomeAddress),
//                    RuleExceptionCodeParty.CustomerAddressIsNull.GetDescription(),
//                    (int)RuleExceptionCodeParty.CustomerAddressIsNull);

//                BRule.Assert(!string.IsNullOrEmpty(customer.PartyBankAccount.AccountNumber),
//                    RuleExceptionCodeParty.CustomerBankAccountNumberIsRequired.GetDescription(),
//                    (int)RuleExceptionCodeParty.CustomerBankAccountNumberIsRequired);

//                BRule.Assert(customer.PartyBankAccount.BankId > 0,
//                    RuleExceptionCodeParty.CustomerBankAccountNumberIsRequired.GetDescription(),
//                    (int)RuleExceptionCodeParty.CustomerBankAccountNumberIsRequired);


//                if (!inUpdate)
//                {
//                    var party = PartyService.GetByNationalId(customer.Party.NationalId);
//                    BRule.Assert(party == null, RuleExceptionCodeParty.DuplicatePartyCreation.GetDescription(),
//                        (int)RuleExceptionCodeParty.DuplicatePartyCreation);
//                }

//            }
//            catch (Exception ex)
//            {
//                throw ex;
//            }
//        }

//        public Customer GetCustomerById(long partyId)
//        {
//            try
//            {
//                var party = PartyService.Get(new Domain.Entity.Party
//                {
//                    Id = partyId
//                });
//                var contract = ContactService.GetContactByPartyId(partyId);

//                var bankAccount = PartyBankAccountService.GetPartyDefaultBankAccount(partyId);

//                if (contract == null)
//                {
//                    contract = new Domain.Entity.Contact();
//                }
//                if (bankAccount == null)
//                {
//                    bankAccount = new PartyBankAccount();
//                }

//                var partydto = ObjectMapper.BaseConverter.ConvertSourceToDest<Domain.Entity.Party, Party>(party);
//                if (party.BirthDate != null) partydto.BirthDateJalali = party.BirthDate.ConvertMiladiToJalali();
//                if (party.RegisterDate != null) partydto.RegisterDateJalali = party.RegisterDate.ConvertMiladiToJalali();

//                partydto.PartyTypeEnum = (PartyType)party.PartyType;
//                var contactDto = ObjectMapper.BaseConverter.ConvertSourceToDest<Domain.Entity.Contact, Contact>(contract);

//                var bankdto = ObjectMapper.BaseConverter
//                    .ConvertSourceToDest<Domain.Entity.PartyBankAccount, Domain.DTO.PartyBankAccount>(bankAccount);
//                bankdto.BankAccountTypeName = ((BankAccountType)bankdto.AccountType).GetDescription();

//                var res = new Customer
//                {
//                    Contact = contactDto,
//                    Party = partydto,
//                    PartyBankAccount = bankdto
//                };
//                return res;
//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw;
//            }
//        }

//        public List<FlatParty> AllPartieas()
//        {
//            try
//            {
//                var parties = PartyService.GetFaltParties();
//                return parties;
//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw;
//            }
//        }

//        public PageCollection<Customer> GetFlatCustomers(BaseReportFilter<FlatCustomerReportFilter> filter)
//        {
//            try
//            {
//                filter.ReportFilter.DateFilter.StartDate = filter.ReportFilter.DateFilter.StartDate.RemoveMinutes();
//                filter.ReportFilter.DateFilter.EndDate = filter.ReportFilter.DateFilter.EndDate.RemoveMinutes();
//                return PartyService.GetFlatCustomers(filter);
//            }
//            catch (Exception ex)
//            {
//                Logger.ErrorException(ex.Message, ex);
//                throw;
//            }
//        }
//    }
//}
