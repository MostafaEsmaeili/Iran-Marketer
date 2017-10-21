using Pikad.Framework.Repository;
using IranMarketer.Domain.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.SharedData.Service
{
    public interface IBranchRepository : IRepository<Branch, int>
    {
        List<Branch> GetBranches();
        int GetDefaultBranchId();
        string GetBranchNameById(int branchId);
        Branch GetBranchByCode(string code);
    }
}
