using IranMarketer.SharedData.Interface;
using Pikad.Framework.Infra.Service;

namespace IranMarketer.SharedData.Service.Document
{
    public class DocumentService : Service<Domain.Entity.Document,IDocumentRepository,int>,IDocumentService
    {
        
    }
}