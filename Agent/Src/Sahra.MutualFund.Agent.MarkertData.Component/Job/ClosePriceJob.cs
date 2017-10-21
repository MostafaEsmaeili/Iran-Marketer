using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Repository.IoC;
using Sahra.MutualFund.Agent.MarkertData.Component.Job;
using Sahra.MutualFund.Common;
using Sahra.MutualFund.Domain.Entity;
using Sahra.MutualFund.SharedData.Facade;
using Sahra.MutualFund.SharedData.Interface;

namespace Sahra.MutualFund.Agent.MarkertData.Component
{
    public class ClosePriceJob : MarketDataJob
    {
        public IProductService ProductService => CoreContainer.Container.Resolve<IProductService>();
        public IClosePriceService ClosePriceService => CoreContainer.Container.Resolve<IClosePriceService>();

        public PriceFacade PriceFacade = new PriceFacade();
        public void UpdatePrices(DateTime date)
        {
            try
            {
                var existList = ProductService.GetAll();
                var list = existList as List<Product> ?? existList.ToList();
                var closePrices = PriceFacade.GetClosePrices(date);

                List<ClosePrice> lst = new List<ClosePrice>();

                foreach (var price in closePrices)
                {
                    var p = list.FirstOrDefault(x => x.ISIN == price.Isin);
                    price.ProductId = p.Id;
                    lst.Add(price);
                }

                ClosePriceService.DeleteClosePrice(date);
                ClosePriceService.SaveBatch(lst);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message,ex);
                throw ex;
            }
        }
    }
}
