using Pikad.Framework.Infra.Service;
using IranMarketer.Domain.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.SharedData.Interface
{
    public interface IBranchService : IService<Branch, int>
    {
        List<Branch> GetBranches();

        int GetDefaultBranchId();

        string GetBranchNameById(int branchId);

        Branch GetBranchByCode(string code);

    }
}
