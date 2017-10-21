
INSERT  INTO pm.PartyBankAccount
        ( PartyId ,
          AccountNumber ,
          AccountType ,
          IBAN ,
          BankId ,
          BranchCode ,
          BranchName ,
          IsDefault ,
          Status ,
          BankTitle ,
          BankTitleEn ,
          Created ,
          Modified
        )
        SELECT  ( SELECT    Id
                  FROM      pm.Party
                  WHERE     NationalId = ISNULL(REPLACE(ISNULL(NATIONAL_CODE,
                                                              COMPANY_NATIONAL_CODE),
                                                        '-', ''), FOREIGN_CODE)
                ) ,
                cba.ACCOUNT_NUMBER ,
                ( SELECT    Sahra
                  FROM      [convert].BankAccountType
                  WHERE     Rayan = cba.BA_TYPE_ID
                ) ,
                cba.SHABA_NUMBER ,
                ( SELECT    CodeId
                  FROM      [convert].BankNameCode
                  WHERE     Rayan = cba.BANK_ID
                ) ,
                cba.BANK_BRANCH_CODE ,
                cba.BANK_BRANCH ,
				CASE WHEN c.BANK_ACCOUNT_ID = cba.BANK_ACCOUNT_ID THEN 1 ELSE 0 END,
                CASE WHEN cba.IS_ACTIVE = 1 THEN 1
                     ELSE 0
                END ,
                ( SELECT    Title
                  FROM      shd.BankName
                  WHERE     CodeId IN ( ( SELECT    CodeId
                                          FROM      [convert].BankNameCode
                                          WHERE     Rayan = cba.BANK_ID
                                        )
                                   )
                ) ,
                ( SELECT    TitleEn
                  FROM      shd.BankName
                  WHERE     CodeId IN ( ( SELECT    CodeId
                                          FROM      [convert].BankNameCode
                                          WHERE     Rayan = cba.BANK_ID
                                        )
                                   )
                ) ,
                GETDATE() ,
                GETDATE()
        FROM    ASHF2.dbo.T_CUSTOMER c
                JOIN ASHF2.dbo.CUSTOMER_BANK_ACCOUNT cba ON cba.CUSTOMER_ID = c.CUSTOMER_ID
                JOIN ASHF2.dbo.BANK_ACCOUNT_TYPE batt ON batt.BA_TYPE_ID = cba.BA_TYPE_ID
        ORDER BY ( SELECT   Id
                   FROM     pm.Party
                   WHERE    NationalId = ISNULL(REPLACE(ISNULL(NATIONAL_CODE,
                                                              COMPANY_NATIONAL_CODE),
                                                        '-', ''), FOREIGN_CODE)
                 )
				

		