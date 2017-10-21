using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository.IoC;
using Pikad.Framework.UnitOfWork;
using IranMarketer.Common;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.DTO;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.PartyManagement.Interface;
using Party = IranMarketer.Domain.Entity.Party;
using PersonalityRole = IranMarketer.Domain.Enum.PersonalityRole;

namespace IranMarketer.PartyManagement.API
{
    public class PartyRolesProvider : BaseProvider
    {
        public IPartyRolesService PartyRolesService => CoreContainer.Container.Resolve<IPartyRolesService>();
        public IPartyService PartyService => CoreContainer.Container.Resolve<IPartyService>();
        public CustomLogger Logger => new CustomLogger(GetType().FullName);


        public void SaveOrUpdate(PartyRole model)
        {
            try
            {

                var partyRoles = new PartyRoles
                {
                    PersonalityRoleCodeId = model.PersonalityRoleCodeId,
                    ValidFrom = model.ValidFrom.IsValidPersianDate() ? model.ValidFrom.ConvertJalaliToMiladi() : default(DateTime),
                    Created = DateTime.Now,
                    Modified = DateTime.Now,
                    CreatedBy = model.CreatedBy,
                    ModifiedBy = model.ModifiedBy
                };

                if (string.IsNullOrEmpty(model.ValidUntil))
                {
                    partyRoles.ValidUntil = null;
                }
                else
                {
                    partyRoles.ValidUntil = model.ValidUntil.ConvertJalaliToMiladi();
                }
                var newParty = new Domain.Entity.Party
                {
                    NationalId = string.IsNullOrEmpty(model.NationalId)
                    ? new Guid().ToString()
                    : model.NationalId.SafeString().SafeTrim().Replace("-", ""),
                    CreatedBy = model.CreatedBy,
                    ModifiedBy = model.ModifiedBy,
                    Modified = DateTime.Now,
                    Created = DateTime.Now,
                    ValidFrom = model.ValidFrom.ConvertJalaliToMiladi(),
                    ValidUntil = null,
                    FirstName = model.PartyType == (int)PartyType.Retail ? model.PartyFirstName.SafePersianEncode().SafeString() : null,
                    LastName = model.PartyType == (int)PartyType.Retail ? model.PartyLastName.SafePersianEncode().SafeString() : null,
                    Name = model.PartyType == (int)PartyType.Institutional ? model.PartyName : null,
                    PartyType = model.PartyType,
                    NationalityPlaceId = 1
                };
                newParty.FullName = string.IsNullOrEmpty(newParty.Name)
                    ? (newParty.FirstName + " " + newParty.LastName).SafeString().SafeTrim()
                    : newParty.Name.SafeString().SafeTrim();

                var party = PartyService.GetByNationalId(model.NationalId);
                if (party != null)
                {
                    UpdatePartyRole(model, partyRoles, party, newParty);
                }
                else
                {
                   // SavePartyRole(newParty, partyRoles);
                }
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        //private void SavePartyRole(Party newParty, PartyRoles partyRoles)
        //{
        //    var partyDetailLedger = SetPartyDetailLedger(newParty);
        //    var dbFactory = CoreContainer.Container.Resolve<IDbFactory>();
        //    using (var uow = dbFactory.Create<IUnitOfWork, ISession>(IsolationLevel.Serializable))
        //    {
        //        try
        //        {
        //            newParty.DetailLedgerCode = partyDetailLedger.Code;
        //            var pid = PartyService.SaveSimpleParty(newParty, uow);
        //            partyRoles.PartyId = pid;
        //            PartyRolesService.Save(partyRoles, uow);
        //        }
        //        catch (Exception ex)
        //        {
        //            uow.Rollback();
        //            throw ex;
        //        }
        //    }
        //}

        private void UpdatePartyRole(PartyRole model, PartyRoles partyRoles, Party party, Party newParty)
        {
            partyRoles.PartyId = party.Id;
            var exist = PartyRolesService.GetRoleByPartyId(party.Id,
                (PersonalityRole)model.PersonalityRoleCodeId);
            if (exist != null)
            {
                partyRoles.Id = exist.Id;
                var dbFactory = CoreContainer.Container.Resolve<IDbFactory>();
                using (var uow = dbFactory.Create<IUnitOfWork, ISession>(IsolationLevel.Serializable))
                {
                    try
                    {
                        newParty.Id = party.Id;
                        PartyService.UpdateSimpleParty(newParty, uow);
                        PartyRolesService.SaveOrUpdate(partyRoles, uow);
                    }
                    catch (Exception ex)
                    {
                        uow.Rollback();
                        throw ex;
                    }
                }
            }
            else
            {
                var dbFactory = CoreContainer.Container.Resolve<IDbFactory>();
                using (var uow = dbFactory.Create<IUnitOfWork, ISession>(IsolationLevel.Serializable))
                {
                    try
                    {
                        newParty.Id = party.Id;
                        PartyService.UpdateSimpleParty(newParty, uow);
                        PartyRolesService.Save(partyRoles, uow);
                    }
                    catch (Exception ex)
                    {
                        uow.Rollback();
                        throw ex;
                    }
                }
            }
        }

        //private DetailLedger SetPartyDetailLedger(Domain.Entity.Party party)
        //{
        //    try
        //    {

        //        var lastCode = PartyService.GetLastPartyDetailLedgerCode();
        //        var detailLedger = new DetailLedger
        //        {
        //            ClassId = (int)AccountClassEnum.Party,
        //            Description = party.FullName,
        //            Title = party.FullName,
        //            Created = DateTime.Now,
        //            Modified = DateTime.Now,
        //            NatureId = (int)AccountNature.BaseOnClass,
        //            Status = (int)AccountStatus.Active,
        //        };

        //        return detailLedger;
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //}

        public IEnumerable<PartyRole> GetAllPartyRoles()
        {
            try
            {
                List<PartyRole> partyRoles = new List<PartyRole>();
                var lst = PartyRolesService.GetPartyRoles();
                foreach (var source in lst)
                {
                    var partyRole = ObjectMapper.BaseConverter.ConvertSourceToDest<Domain.Entity.PartyRoles, Domain.DTO.PartyRole>(source);
                    partyRole.ValidFrom = source.ValidFrom.ConvertMiladiToJalali();
                    partyRole.ValidUntil = source.ValidUntil.ConvertMiladiToJalali();
                    partyRoles.Add(partyRole);
                }
                return partyRoles;

            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public bool IsPartyBoardMember(long partyId)
        {
            try
            {
                return PartyRolesService.IsPartyBoardMember(partyId);
            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }
    }
}