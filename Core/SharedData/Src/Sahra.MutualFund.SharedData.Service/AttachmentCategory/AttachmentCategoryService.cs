using Pikad.Framework.Infra.Service;
using IranMarketer.Domain.Entity;
using IranMarketer.SharedData.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.SharedData.Service
{
    public class AttachmentCategoryService : Service<AttachmentCategory, IAttachmentCategoryRepository, int>, IAttachmentCategoryService
    {
    }
}
