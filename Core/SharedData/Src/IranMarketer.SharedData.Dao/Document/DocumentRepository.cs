using IranMarketer.SharedData.Service.Document;
using Pikad.Framework.Repository;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.SharedData.Dao.Document
{
    public class DocumentRepository : Repository<Domain.Entity.Document,int>,IDocumentRepository
    {
        public DocumentRepository(IDbFactory factory) : base(factory)
        {
        }
    }
}