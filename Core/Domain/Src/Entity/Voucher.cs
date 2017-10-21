using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IranMarketer.Domain.Enum;

namespace IranMarketer.Domain.Entity
{
    public class Voucher
    {
        public Voucher()
        {
            VoucherMaster = new VoucherMaster();
            VoucherDetails = new List<VoucherDetail>();
        }
        public VoucherMaster VoucherMaster { get; set; }
        public List<VoucherDetail> VoucherDetails { get; set; }
        public bool VoucherMasterIsRequired { get; set; }

        public void AddVoucherDetailRow(VoucherDetail voucherDetail, int rowNumber)
        {
            VoucherDetails.Add(voucherDetail);
            SetRowNumber(rowNumber);
        }

        public bool IsValidate()
        {
            //پیش نویس
            if (VoucherMaster.VoucherStateId == (int) VoucherMasterState.Draft)
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

        public int CurrentRowNumber { get; set; }

        private void SetRowNumber(int rowNumber)
        {
            CurrentRowNumber = rowNumber;
        }
    }
}
