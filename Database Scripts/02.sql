INSERT INTO shd.AccountType
        ( CodeId ,
          ExternalCode ,
          CaptionFA ,
          CaptionEn
        )
VALUES  ( 100 , -- CodeId - int
          N'100' , -- ExternalCode - nvarchar(50)
          N'سپرده سرمایه گذاری کوتاه مدت' , -- CaptionFA - nvarchar(200)
          N'Short Term Account'  -- CaptionEn - nvarchar(200)
        )

INSERT INTO shd.AccountType
        ( CodeId ,
          ExternalCode ,
          CaptionFA ,
          CaptionEn
        )
VALUES  ( 101 , -- CodeId - int
          N'101' , -- ExternalCode - nvarchar(50)
          N'سپرده سرمایه گذاری ویژه' , -- CaptionFA - nvarchar(200)
          N'Special Account'  -- CaptionEn - nvarchar(200)
        )

INSERT INTO shd.AccountType
        ( CodeId ,
          ExternalCode ,
          CaptionFA ,
          CaptionEn
        )
VALUES  ( 102 , -- CodeId - int
          N'102' , -- ExternalCode - nvarchar(50)
          N'سپرده سرمایه گذاری بلند مدت' , -- CaptionFA - nvarchar(200)
          N'LongTerm Account'  -- CaptionEn - nvarchar(200)
        )

INSERT INTO shd.AccountType
        ( CodeId ,
          ExternalCode ,
          CaptionFA ,
          CaptionEn
        )
VALUES  ( 103 , -- CodeId - int
          N'103' , -- ExternalCode - nvarchar(50)
          N'سپرده جاری' , -- CaptionFA - nvarchar(200)
          N'Cash Account'  -- CaptionEn - nvarchar(200)
        )

INSERT INTO shd.AccountType
        ( CodeId ,
          ExternalCode ,
          CaptionFA ,
          CaptionEn
        )
VALUES  ( 104 , -- CodeId - int
          N'104' , -- ExternalCode - nvarchar(50)
          N'سپرده قرض الحسنه' , -- CaptionFA - nvarchar(200)
          N'Keep Account'  -- CaptionEn - nvarchar(200)
        )