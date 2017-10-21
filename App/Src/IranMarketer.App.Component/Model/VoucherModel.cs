using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;

namespace IranMarketer.App.Component.Model
{
    public class VoucherModel
    {
        public VoucherModel()
        {
            VoucherMaster = new VoucherMasterModel();
            VoucherDetails = new List<VoucherDetailModel>();
            CurrentRowNumber = 1;
        }
        public VoucherMasterModel VoucherMaster { get; set; }
        public List<VoucherDetailModel> VoucherDetails { get; set; }
        public bool VoucherMasterIsRequired { get; set; }

        public void AddVoucherDetailRow(VoucherDetailModel voucherDetail)
        {
            voucherDetail.RowNumber = CurrentRowNumber;
            CurrentRowNumber++;

            VoucherDetails.Add(voucherDetail);
        }

        public bool IsValidate()
        {
            //پیش نویس
            if (VoucherMaster.VoucherStateId == (int)VoucherMasterState.Draft)
            {
                return true;
            }
            decimal debit = 0;
            decimal credit = 0;

            foreach (var row in VoucherDetails)
            {
                debit += row.Debit;
                credit += row.Credit;
                if ((row.Credit == 0 && row.Debit == 0) || (row.Debit != 0 && row.Credit != 0))
                {
                    return false;
                }
            }
            if (debit != credit)
            {
                return false;
            }
            return true;
        }

        public  int CurrentRowNumber;

    
    }

    public class VoucherMasterModel
    {
        public long Id { get; set; } // Id (Primary key)
        public string VoucherDate { get; set; }
        public int FiscalYearId { get; set; } // FiscalYearId
        public int VoucherStateId { get; set; } // VoucherStateId
        public int VoucherCategoryId { get; set; } // VoucherCategoryId
        public int? VoucherGroupId { get; set; } // VoucherGroupId
        public long VoucherNumber { get; set; } // VoucherNumber
        public long DailyNumber { get; set; } // DailyNumber
        public string Description { get; set; } // Description
        public int InsertMode { get; set; } // InsertMode
        public int BranchId { get; set; } // BranchId
        public string BranchName { get; set; } //branchName
        public string CreatedBy { get; set; } // CreatedBy
        public string CreatedByName { get; set; } // CreatedByName
        public DateTime Created { get; set; } // Created
        public DateTime Modified { get; set; } // Modified
    }
    public class VoucherDetailModel
    {
        public long Id { get; set; } // Id (Primary key)
        public long VoucherMasterId { get; set; } // VoucherMasterId
        public long VoucherMasterTempNumber { get; set; } // VoucherMasterTempNumber
        public long GeneralLedgerId { get; set; } // GeneralLedgerId
        public long SubsidiaryLedgerId { get; set; } // SubsidiaryLedgerId
        public string SubsidiaryLedgerTitle { get; set; } // SubsidiaryLedgerId
        public long DetailLedgerId { get; set; } // DetailLedgerId
        public string DetailLedgerTitle { get; set; } // DetailLedgerId
        public string GeneralLedgerCode { get; set; } // GeneralLedgerCode
        public string SubsidiaryLedgerCode { get; set; } // SubsidiaryLedgerCode
        public string DetailLedgerCode { get; set; } // DetailLedgerCode
        public decimal Credit { get; set; } // Credit
        public decimal Debit { get; set; } // Debit
        public string Description { get; set; } // Description
        public int Status { get; set; } // Status
        public int RowNumber { get; set; } // RowNumber
        public DateTime Created { get; set; } // Created
        public DateTime Modified { get; set; } // Modified

    }
}
