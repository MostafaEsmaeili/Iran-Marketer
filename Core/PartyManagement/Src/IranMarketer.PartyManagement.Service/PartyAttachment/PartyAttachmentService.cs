using Pikad.Framework.Infra.Service;
using IranMarketer.PartyManagement.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.Entity;
using System.Threading;

namespace IranMarketer.PartyManagement.Service
{
    public class PartyAttachmentService : Service<Domain.Entity.PartyAttachment, IPartyAttachmentRepository, int>, IPartyAttachmentService
    {
    }
}
