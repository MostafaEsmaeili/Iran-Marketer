using Pikad.Framework.Infra.Service;
using IranMarketer.Domain.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.SharedData.Interface
{
    public interface IProductService : IService<Product, int>
    {
        List<Product> SearchProducts(string filter = "");
        int SaveProduct(Product product);
        int UpdateProduct(Product product);
        Product GetProductByIsin(string isin);

    }
}
