using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository.IoC;
using Sahra.MutualFund.Domain.Entity;
using Sahra.MutualFund.Domain.Enum;
using Sahra.MutualFund.Fund.API;
using Sahra.MutualFund.SharedData.API;

namespace Sahra.MutualFund.Agent.NAV.Component
{
    public class NAVJob
    {
        public CustomLogger Logger => new CustomLogger(GetType().FullName);
        public NAVProvider NavProvider = new NAVProvider();
        public BranchProvider BranchProvider = new BranchProvider();
        public RequestCalculationProcessSettingProvider RequestCalculationProcessSettingProvider => CoreContainer.Container.Resolve<RequestCalculationProcessSettingProvider>();
        public void Calculate()
        {

            try
            {
                
                var nav = NavProvider.GetLastNav(NAVStatus.Confirmed);
                var closeNav = NavProvider.GetCloseNav(nav.Date.RemoveMinutes().AddDays(1).RemoveMinutes());


                var setting = RequestCalculationProcessSettingProvider.GetSetting(closeNav.FromDate);
                var branchName = BranchProvider.GetBranchName(closeNav.BranchId);

                DailyVoucher(closeNav, branchName);
                ProcessRequest(closeNav, branchName, setting);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }

        }

        private static void DailyVoucher(CloseNAV closeNav, string branchName)
        {
            try
            {
                var dailyCalculationJob = new DailyCalculationJob();
                var creatorUserItems = new CreatorUserItems
                {
                    CreatedBy = closeNav.CreatedBy,
                    CreatedByName = closeNav.CreatedByName,
                    BranchId = closeNav.BranchId,
                    BranchName = branchName
                };
                var dailyVoucher = dailyCalculationJob.Calculate(closeNav.FromDate, creatorUserItems);
                NAVProcessStepItem.DailyVoucher = dailyVoucher;
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        private static void ProcessRequest(CloseNAV closeNav, string branchName, RequestCalculationProcessSetting setting)
        {
            try
            {
                var creatorUserItems = new CreatorUserItems
                {
                    CreatedBy = closeNav.CreatedBy,
                    CreatedByName = closeNav.CreatedByName,
                    BranchId = closeNav.BranchId,
                    BranchName = branchName
                };

                if (setting.DaysForRedemption < 0)
                {
                    var redemptionRequestProcessJob = new RedemptionRequestProcessJob();
                    var redemptionFinalProcess =
                        redemptionRequestProcessJob.Process(closeNav.FromDate.RemoveMinutes(), creatorUserItems);
                    NAVProcessStepItem.RedemptionFinalProcess = redemptionFinalProcess;
                }
                if (setting.DaysForSubscription < 0)
                {
                    var subscriptionRequestProcessJob = new SubscriptionRequestProcessJob();
                    var subscrptionFinalProcess =
                        subscriptionRequestProcessJob.Process(closeNav.FromDate.RemoveMinutes(), creatorUserItems);
                    NAVProcessStepItem.SubscrptionFinalProcess = subscrptionFinalProcess;
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
