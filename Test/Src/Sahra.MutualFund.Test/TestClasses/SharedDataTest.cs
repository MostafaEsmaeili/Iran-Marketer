using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using Pikad.Framework.Repository.IoC;
using Sahra.MutualFund.Domain.Entity;
using Sahra.MutualFund.SharedData.Interface;

namespace Sahra.MutualFund.Test.TestClasses
{
    public class SharedDataTest
    {
        public ISectorService SectorService => CoreContainer.Container.Resolve<ISectorService>();

        public List<Sector> GetSectors()
        {
            try
            {
                return SectorService.GetAll().ToList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void AddSector()
        {
            try
            {
                var service = CoreContainer.Container.Resolve<ISectorService>();
                var sector = new Sector
                {
                    Code = "My Test"
                };

                //این قسمت رو توی DAO
                // توی repository
                // مینویسیم

                var p = new DynamicParameters(); //ParameterAdd این رو فقط توی 
                p.Add("guid", sector.Code, DbType.String);

                //service.Save(sector, p);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
