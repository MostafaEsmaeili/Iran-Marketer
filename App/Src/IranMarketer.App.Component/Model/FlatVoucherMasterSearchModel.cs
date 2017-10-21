namespace IranMarketer.App.Component.Model
{
    public class FlatVoucherMasterSearchModel
    {
        public string FromDate { get; set; }
        public string ToDate { get; set; }
        public long VoucherMasterId { get; set; }
        public long VoucherNumber { get; set; }
        public int BranchId { get; set; }
        public int FiscalYearId { get; set; }
        public string DetailLegderCode { get; set; }
        public string SubsidiaryLedgerCode { get; set; }
        public string GeneralLedgerCode { get; set; }
        public int VoucherInsertMode { get; set; }
        public int VoucherCategoryEnum { get; set; }

    }
}