using Pikad.Framework.Repository;
using IranMarketer.Domain.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.SharedData.Service
{
    public interface IProductRepository : IRepository<Product, int>
    {
        List<Product> SearchProducts(string filter = "");
        int SaveProduct(Product product);
        int UpdateProduct(Product product);
        Product GetProductByIsin(string isin);
    }
}
