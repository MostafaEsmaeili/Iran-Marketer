using Pikad.Framework.Infra.Service;
using IranMarketer.Domain.Entity;
using IranMarketer.SharedData.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Logging;

namespace IranMarketer.SharedData.Service
{
    public class ProductService : Service<Product, IProductRepository, int>, IProductService
    {
        private CustomLogger Logger => new CustomLogger(GetType().FullName);
        public List<Product> SearchProducts(string filter = "")
        {
            try
            {
                return Dao.SearchProducts(filter);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message,ex);
                throw;
            }
        }

        public int SaveProduct(Product product)
        {
            try
            {
                return Dao.SaveProduct(product);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }
        }

        public int UpdateProduct(Product product)
        {
            try
            {
                return Dao.UpdateProduct(product);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }
        }

        public Product GetProductByIsin(string isin)
        {
            try
            {
                return Dao.GetProductByIsin(isin);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw;
            }
        }
    }
}
