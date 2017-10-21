using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Domain.Enum
{
    public enum RuleExceptionCodeCommon
    {
        OtherError = 1,
        [Description("عملیات با موفقیت انجام شد.")]
        ValidResult = 1000,
        EmptyResult = 1001,
        AllParametersAreRequired = 10003,
        [Description("فیلتر نامعتبر است")]
        FilterIsNull = 10004,

    }

    public enum RuleExceptionCodeParty
    {
        [Description("کد ملی تکراری است")]
        DuplicatePartyCreation = 3000,
        [Description("کد ملی خالی است")]
        NationalIdIsNull = 3001,
        [Description("نام مشتری خالی است")]
        NameOfPartyIsEmpty = 3002,
        [Description("مشتری خالی است")]
        CustomerEntityIsNull = 3003,
        [Description("مشتری پیدا نشد")]
        PartyNotFound = 3004,
        [Description("نام خانوادگی معتبر نیست")]
        FamilyOfPartyIsEmpty = 3006,
        [Description("نام پدر معتبر نیست")]
        FatherNameOfPartyIsEmpty = 3007,
        [Description("شماره همراه یا تلفن مشتری معتبر نیست")]
        CustomerMobileOrPhoneIsNull = 3008,
        [Description("آدرس معتبر نیست")]
        CustomerAddressIsNull = 3009,
        [Description("شماره حساب بانکی معتبر نیست")]
        CustomerBankAccountNumberIsRequired = 3010,
        [Description("تاریخ تولد معتبر نیست")]
        CustomerBirthDateOrRegisterDateIsRequired = 3011,
        [Description("کد تفصیلی مشتری معتبر نیست")]
        CustomerDetailLedgerIsIsInvalid = 3012,
        [Description("اطلاعات ارتباطی مشتری معتبر نیست")]
        CustomerContactIsInvalid = 3013,
        [Description("حساب بانکی مشتری معتبر نیست")]
        CustomerBankAccountInvalid = 3014
    }

    public enum RuleExceptionCodeBankDeposit
    {
        [Description("مشتری فاقد حساب بانکی پیش فرض است")]
        BankDepositNotFound = 4000,
        [Description("تاریخ افتتاح الزامی است")]
        OpeningDateIsInvalid = 4001,
        [Description("تاریخ شروع دریافت سود الزامی است")]
        ProfitStartDateIsInvalidByInterestValue = 4002,
        [Description("بانک انتخاب نشده است")]
        BankIdIsInvalid = 4003,
        [Description("شماره حساب بانک نامعتبر است")]
        BankAccountNumberIsInvalid = 4004,

    }

    public enum RuleExceptionCodeBranch
    {
        [Description("شعبه وجود ندارد")]
        BranchNotExists = 5000,
        [Description("شعبه انتخاب نشده است")]
        BranchIsInvalid = 5001,
        [Description("بانک انتخاب شده است. اما نوع شعبه با بانک مطابقت ندارد")]
        BranchTypeIsBankAndBankIdIsInvalid = 5002,
        [Description("کد شعبه تکراری است")]
        BranchCodeIsDuplicate = 5003,

    }

    public enum RuleExceptionCodeUserManagement
    {
        [Description("نام کاربری نامعتبر است")]
        InvalidUserName = 2000,
        [Description("نقش نامعتبر است")]
        InvalidRole = 2001,
        [Description("خطا در ورود - نام کاربری و یا کلمه عبور اشتباه است.")]
        LoginFaild = 2002,
        [Description("کاربر غیر فعال است")]
        UserIsNotActive = 2003,
        [Description("نام نمایشی کاربر نامعتبراست")]
        DisplayNameIsNull = 2004,
        [Description("کاربر یافت نشد")]
        UserNotFound = 2005,
        [Description("ایمیل تکراری است")]
        EmailExits = 2006,
        [Description("شماره موبایل نا معتبر است")]
        InvalidMoileNumber = 2007,
        [Description("نام کاربری تکراریست")]
        UserNameExists = 2008,
        [Description("پسورد ها یکسان نیست")]
        ConfirmPasswordDontMatch = 2009,
        [Description("پسورد معتبر نیست")]
        PasswordisInvalid = 2010,
        [Description("CallBaclUrlIsEmpty")]
        CallBaclUrlIsEmpty = 2011,
        [Description("ParametersAreInvalid")]
        ParametersAreInvalid = 2022,
        [Description("کد شعبه نا معتبر است")]
        BranchCodeIsInvalid = 2023,
        [Description("نام کاربری خالی است")]
        UserNameIsEmpty = 2024,
    }

    public enum RuleExceptionCodeCashFlow
    {
        [Description("ورودی خالی است")]
        CashFlowIsNull = 6000,
        [Description("واریز و برداشت خالی است")]
        CashFlowMasterIsNull = 6001,
        [Description("بانک دریافت کننده مشخص نیست")]
        CashFlowBankDepositProfitReceiveIsNotSet = 6002,
        [Description("مبلغ باید بزرگتر از صفر باشد")]
        AmountMustBeLargerThanZero = 6003,
        [Description("حساب بانکی موجود نیست")]
        BankDepositNotExits = 6004,
        [Description("حساب بانکی خالی است")]
        BankDepositAccountNumberIsEmpty = 6005,
        [Description("بانک مشخص نیست")]
        BankTransferAccountNotSet = 6006,
        [Description("تاریخ نامعتبر می باشد")]
        DateIsInvalid = 6007,
        [Description("مانده بانک حساب مبدا کمتر از مبلغ انتقالی است")]
        FromBankAccountRemainIsLessThanTransferAmount = 6008,
        [Description("شعبه نامعتبر است")]
        BranchIdIsInvalid = 6009,
        [Description("مانده حساب دریافتنی بانک کافی نمی باشد")]
        BankDepositProfitReceivableRemainIsNotValid = 6010,
        [Description("ورودی پرداختی شامل هیچ آیتمی نمی باشد")]
        CustomerPaymentItemsIsNull = 6011,
        [Description("مشتری مشخص نمی باشد")]
        CustomerNotSet = 6012,
        [Description("کد تفصیل مشتری مشخص نمی باشد")]
        CustomerDetailLedgerIdNotSet = 6013,
        [Description("کد معین پرداخت مشتری مشخص نمی باشد")]
        SubsidiaryLedgerIdNotSet = 6014,
        [Description("بانک دریافت کننده مشخص نیست")]
        CustomerPaymentBakDepositIsNotSet = 6015,
        [Description("مشتری پیدا نشد")]
        PartyNotFound = 6016,
    }
    public enum RuleExceptionCodePartyBankAccount
    {
        [Description("حساب بانکی خالی است")]
        AccountAlreadyAdded = 7000,
        [Description("حساب بانکی خالی است")]
        NoDefaultAccount = 70002

    }
    public enum RuleExceptionCodeSubscriptionRequest
    {
        [Description("آبجکت صدور خالی است")]
        SubscriptionRequestIsNull = 8000,
        [Description("کد شعبه مشخص نمی باشد")]
        BranchIsNotDefined = 8001,
        [Description("کاربر مشخص نمی باشد")]
        CreatedNotDefined = 8002,
        [Description("مبلغ معتبر نمی باشد")]
        AmountIsInvalid = 8003,
        [Description("مشتری معتبر نمی باشد")]
        CustomerIsInvalid = 8004,
        [Description("حساب بانکی معتبر نمی باشد")]
        BankDepositIsInvalid = 8005,
        [Description("کد تفصیلی مشتری خالی است")]
        AccountCodeIsEmpty = 8006,
        [Description("شماره درخواست برای بروز رسانی نامشخص است")]
        RequestIdIsNotDefinedForUpdate = 8007,
        [Description("شماره درخواست برای بروز رسانی نامعتبر است")]
        RequestIdIsInvalidForUpdate = 8007,
        [Description("سند درخواست یافت نشد")]
        RequestVoucherNotFound = 8008,
    }

    public enum RuleExceptionCodeLedgerCode
    {
        [Description("کد تفصیلی ای با کد داده شده پیدا نشد")]
        DetailLedgerNotFound = 9000,
        [Description("سال مالی موجود نیست")]
        FiscalYearNotExists = 9001,
        [Description("کد معین ای با کد داده شده پیدا نشد")]
        SubsidiaryLedgerNotFound = 9002,
        [Description("کد کل ای با کد داده شده پیدا نشد")]
        GeneralLedgerNotFound = 9003,
        [Description("کد حساب در فیلتر مشخص نمیباشد")]
        LedgerNotSet = 9004,
    }
    public enum RuleExceptionCodeRedemptionRequest
    {
        [Description("آبجکت ابطال خالی است")]
        RedemptionRequestIsNull = 10000,
        [Description("تعداد ابطال صحیح نمی باشد")]
        RedemptionCountIsInvalid = 10001,
        [Description("مشتری هیچ گواهی ای در صندوق ندارد")]
        EvidenceNotFoundForCustomer = 10002,
        [Description("تعداد گواهی مشتری کمتر از تعداد واحد ابطال است")]
        EvidenceCountIsLessThanRedemptionCount = 10003,
        [Description("شعبه نامشخص است")]
        BranchCodeIsNull = 10004,
        [Description("کد ملی مشتری نامشخص است")]
        NationalIdIsNull = 10005,
        [Description("تاریخ درخواست نامعتبر می باشد")]
        RedemptionRequestDateIsInvalid = 10006
        
    }

    public enum RuleExceptionCodeVouchering
    {
        [Description("سال مالی در تاریخ وجود ندارد")]
        FiscalYearNotExits = 11000,
        [Description("سند تراز نمی باشد")]
        VoucherBalanceIsNotValid = 11001,
        [Description("شعبه مشخص و یا معتبر نمی باشد")]
        BaranchIsIsInvalid = 11002,
        [Description("سال مالی در تاریخ بسته است")]
        FiscalYearIsClose = 11003,
    }

    public enum RuleExceptionCodeRequest
    {
        [Description("درخواست پیدا نشد")]
        RequestNotFound= 12000,
        [Description("وضعیت درخواست اجازه پاک کردن را نمیدهد")]
        RequestStateIsNotValidForDelete = 12001,
        [Description("ویرایش کننده مشخص نیست")]
        RequestStateModifierIsNotSet = 12002,
        [Description("شماره درخواست نامعتبر است")]
        RequestIsIsInvalid = 12003,
        [Description("سند یافت نشد")]
        VoucherNotFound = 12004,
        [Description("تعداد کل واحدها معتبر نیست")]
        TotalEvidencNotValid = 12005,


    }


    public enum RuleExceptionCodeDailyCalculation
    {
        [Description("حسابرس در تنظیمات خالی است")]
        AuditorNotFound = 13000,
        [Description("مدیر در تنظیمات خالی است")]
        ManagerNotFound = 13001,
        [Description("متولی در تنظیمات خالی است")]
        CustodianNotFound = 13002,
    }

    public enum RuleExceptionCodeLedger
    {
        [Description("سال مالی مشخص نمی باشد")]
        FiscalYearIdNotSet = 14000,
        [Description("کد تفصیلی از می بایستی کوچکتر از کد تا باشد")]
        FromDetailCodeMustSmallerThanToCode = 14001
    }
    public enum RuleExceptionCodeSharedData
    {
        [Description("صنعت مشخص نمی باشد")]
        SectorIsNull = 15000
    }

    public enum RuleExceptionCodeNAV
    {
        [Description("درخواست های در حال انتظار در لیست وجود دارد")]
        SomeRequestsAreInWaitingState = 16000
    }
}




