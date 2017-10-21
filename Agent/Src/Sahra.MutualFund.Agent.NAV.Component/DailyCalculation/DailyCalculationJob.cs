using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Repository.IoC;
using Pikad.Framework.UnitOfWork;
using Sahra.MutualFund.Accounting.API;
using Sahra.MutualFund.Calculation.API;
using Sahra.MutualFund.Domain.Entity;
using Sahra.MutualFund.SharedData.API;

namespace Sahra.MutualFund.Agent.NAV.Component
{
    public class DailyCalculationJob
    {
        private CustomLogger Logger => new CustomLogger(GetType().FullName);
        public VoucherProvider VoucherProvider => CoreContainer.Container.Resolve<VoucherProvider>();
        public Voucher Calculate(DateTime date, CreatorUserItems creatorUserItems)
        {
            try
            {
                var baseDailyCalculation = new BaseDailyCalculation(date);
                BaseDailyCalculation.CreatorUserItems = creatorUserItems;
                baseDailyCalculation.SetUpItems();

                var boardMembersCalcualtion = new BoardMembersCalcualtion();
                boardMembersCalcualtion.Calculation(date);

                var fundItemCalulation = new FundItemCalulation();
                fundItemCalulation.Calculation(date);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message,ex);
                throw ex;
            }

            return BaseDailyCalculation.Voucher;
            //var dbFactory = CoreContainer.Container.Resolve<IDbFactory>();
            //using (var uow = dbFactory.Create<IUnitOfWork, ISession>(IsolationLevel.Serializable))
            //{
            //    try
            //    {
            //        VoucherProvider.SaveVoucher(BaseDailyCalculation.Voucher, uow);
            //    }
            //    catch (Exception ex)
            //    {
            //        uow.Rollback();
            //        throw ex;
            //    }
            //}
        }
    }
}
