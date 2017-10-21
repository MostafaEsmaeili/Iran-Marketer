using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Repository.IoC;
using Sahra.MutualFund.Agent.MarkertData.Component.Job;
using Sahra.MutualFund.Domain.Entity;
using Sahra.MutualFund.SharedData.API;
using Sahra.MutualFund.SharedData.Facade;
using Sahra.MutualFund.SharedData.Interface;
using Sahra.MutualFund.SharedData.Service;

namespace Sahra.MutualFund.Agent.MarkertData.Component
{
    public class ProductJob : MarketDataJob
    {
        public IProductService ProductService => CoreContainer.Container.Resolve<IProductService>();
        public ProductFacade ProductFacade  = new ProductFacade();
        public void UpdateProducts(DateTime date)
        {
            try
            {
                var existList = ProductService.GetAll();
                var list = existList as List<Product> ?? existList.ToList();
                var products = ProductFacade.GetProducts(date);

                foreach (var product in products)
                {
                    var p = list.FirstOrDefault(x => x.ISIN == product.ISIN);
                    if (p != null)
                    {
                        product.Id = p.Id;
                        ProductService.UpdateProduct(product);
                    }
                    else
                    {
                        ProductService.SaveProduct(product);
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
    }
}
