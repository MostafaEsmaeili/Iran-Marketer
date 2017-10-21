using Pikad.Framework.Infra.Service;
using IranMarketer.Domain.Entity;
using IranMarketer.SharedData.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Pikad.Framework.Infra.Logging;

namespace IranMarketer.SharedData.Service
{
    public class BranchService : Service<Branch, IBranchRepository, int>, IBranchService
    {
        private CustomLogger Logger => new CustomLogger(GetType().FullName);
        public List<Branch> GetBranches()
        {
            try
            {
                return Dao.GetBranches();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message,ex);
                throw ex;
            }
        }

        public int GetDefaultBranchId()
        {
            try
            {
                return Dao.GetDefaultBranchId();
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public string GetBranchNameById(int branchId)
        {
            try
            {
                return Dao.GetBranchNameById(branchId);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public Branch GetBranchByCode(string code)
        {
            try
            {
                return Dao.GetBranchByCode(code);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }
    }
}
