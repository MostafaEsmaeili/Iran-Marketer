using IranMarketer.Domain.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.App.Component.Model
{
    public class CustomerModel : BaseModel
    {
        public Customer Customer { get; set; }

        public CustomerModel()
        {
            Customer=new Customer();
        }
    }
}
