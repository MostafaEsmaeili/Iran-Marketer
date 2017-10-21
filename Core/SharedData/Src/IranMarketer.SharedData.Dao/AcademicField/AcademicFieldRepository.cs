using IranMarketer.SharedData.Service;
using Pikad.Framework.Repository;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.SharedData.Dao.AcademicField
{
    public class AcademicFieldRepository : Repository<Domain.Entity.AcademicField,int>,IAcademicFieldRepository
    {
        public AcademicFieldRepository(IDbFactory factory) : base(factory)
        {
        }
    }
}