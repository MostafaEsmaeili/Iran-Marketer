using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Repository.IoC;
using Sahra.MutualFund.Agent.MarkertData.Component.Job;
using Sahra.MutualFund.Common.Utility;
using Sahra.MutualFund.Domain.Entity;
using Sahra.MutualFund.SharedData.Facade;
using Sahra.MutualFund.SharedData.Interface;

namespace Sahra.MutualFund.Agent.MarkertData.Component
{
    public class AccuredInterestJob : MarketDataJob
    {
        public IProductService ProductService => CoreContainer.Container.Resolve<IProductService>();
        public IAccruedInterestService AccruedInterestService => CoreContainer.Container.Resolve<IAccruedInterestService>();

        public AccuredInterestFacade AccuredInterestFacade = new AccuredInterestFacade();
        public void UpdateAccuredInterests()
        {
            try
            {
                var existList = ProductService.GetAll().Where(x => x.ISIN.StartsWith("IRB")).ToList();
                var lst = new List<AccruedInterest>();

                foreach (var product in existList)
                {
                    var prev = AccruedInterestService.GetAccruedInterests(MutualFundCustomUtility.MinDate,MutualFundCustomUtility.MaxDate, product.ISIN);
                    if (!prev.Any())
                    {
                        var accuredInterests = AccuredInterestFacade.GetAccuredInterests(product.ISIN, MutualFundCustomUtility.MinDate, MutualFundCustomUtility.MaxDate);
                        AccruedInterestService.DeleteAccruedInterest(MutualFundCustomUtility.MinDate, MutualFundCustomUtility.MaxDate, product.ISIN);
                        lst.AddRange(accuredInterests);
                    }
                }
                foreach (var accruedInterest in lst)
                {
                    var p = existList.FirstOrDefault(x => x.ISIN == accruedInterest.Isin);
                    accruedInterest.ProductId = p.Id;
                }

                AccruedInterestService.SaveBatch(lst);
                
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
    }
}
