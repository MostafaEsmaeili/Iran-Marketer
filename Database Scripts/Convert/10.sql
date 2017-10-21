INSERT  INTO mf.BankDeposit
        ( AccountNumber ,
          AccountType ,
          IBAN ,
          UseForRquest ,
          OpeningDate ,
          ProfitStartDate ,
          EndDate ,
          AccountCode ,
          DetailLedgerId ,
          BankId ,
          BranchCode ,
          Interest ,
          ManagerWage ,
          HasManagerWage ,
          MaxProfitRateInSameType ,
          BranchName ,
          State ,
          BankTitle ,
          BankTitleEn ,
          ValidFrom ,
          ValidUntil ,
          Created ,
          Modified ,
          CreatedBy ,
          ModifiedBy
        )
        SELECT  ba.ACCOUNT_NUMBER ,
                ( SELECT    Sahra
                  FROM      [convert].BankAccountType
                  WHERE     Rayan = ba.BA_TYPE_ID
                ) ,
                NULL ,
                1 ,
                ( SELECT    dbo.MiladiDate(MIN(CHANGE_DATE))
                  FROM      ASHF2.dbo.BANK_ACCOUNT_HISTORY
                  WHERE     ACCOUNT_NUMBER = ba.ACCOUNT_NUMBER
                ) ,
                CASE WHEN ba.ANNUAL_INTEREST > 0
                     THEN ( SELECT  dbo.MiladiDate(MIN(CHANGE_DATE))
                            FROM    ASHF2.dbo.BANK_ACCOUNT_HISTORY
                            WHERE   ACCOUNT_NUMBER = ba.ACCOUNT_NUMBER
                          )
                     ELSE NULL
                END ,
                NULL ,
                ( SELECT    CAST( ( CAST(DL_NUMBER AS BIGINT) - 2000000) +  3000000 AS NVARCHAR(50))
                  FROM      ASHF2.dbo.DETAIL_LEDGER
                  WHERE     DL_ID = ba.DL_ID
                ) ,
                ( SELECT    Id
                  FROM      acc.DetailLedger
                  WHERE     Code = ( SELECT  CAST( ( CAST(DL_NUMBER AS BIGINT) - 2000000) +  3000000 AS NVARCHAR(50))
                                     FROM   ASHF2.dbo.DETAIL_LEDGER
                                     WHERE  DL_ID = ba.DL_ID
                                   )
                ) dlid,
                ( SELECT    CodeId
                  FROM      [convert].BankNameCode
                  WHERE     Rayan = ( SELECT    BANK_ID
                                      FROM      ASHF2.dbo.BANK_BRANCH
                                      WHERE     BANK_BRANCH_ID = ba.BANK_BRANCH_ID
                                    )
                ) ,
                ( SELECT    BRANCH_CODE
                  FROM      ASHF2.dbo.BANK_BRANCH
                  WHERE     BANK_BRANCH_ID = ba.BANK_BRANCH_ID
                ) ,
                ba.ANNUAL_INTEREST ,
                0 ,
                0 ,
                0 ,
                ( SELECT    BRANCH_NAME
                  FROM      ASHF2.dbo.BANK_BRANCH
                  WHERE     BANK_BRANCH_ID = ba.BANK_BRANCH_ID
                ) ,
                1 ,
                ( SELECT    Title
                  FROM      shd.BankName
                  WHERE     CodeId IN (
                            SELECT  CodeId
                            FROM    [convert].BankNameCode
                            WHERE   Rayan = ( SELECT    BANK_ID
                                              FROM      ASHF2.dbo.BANK_BRANCH
                                              WHERE     BANK_BRANCH_ID = ba.BANK_BRANCH_ID
                                            ) )
                ) ,
                ( SELECT    TitleEn
                  FROM      shd.BankName
                  WHERE     CodeId IN (
                            SELECT  CodeId
                            FROM    [convert].BankNameCode
                            WHERE   Rayan = ( SELECT    BANK_ID
                                              FROM      ASHF2.dbo.BANK_BRANCH
                                              WHERE     BANK_BRANCH_ID = ba.BANK_BRANCH_ID
                                            ) )
                ) ,
                ( SELECT    dbo.MiladiDate(MAX(CHANGE_DATE))
                  FROM      ASHF2.dbo.BANK_ACCOUNT_HISTORY
                  WHERE     ACCOUNT_NUMBER = ba.ACCOUNT_NUMBER
                ) ,
                NULL ,
                ( SELECT    dbo.MiladiDate(MAX(CHANGE_DATE))
                  FROM      ASHF2.dbo.BANK_ACCOUNT_HISTORY
                  WHERE     ACCOUNT_NUMBER = ba.ACCOUNT_NUMBER
                ) ,
                GETDATE() ,
                NULL ,
                NULL
        FROM    ASHF2.dbo.BANK_ACCOUNT ba
                JOIN ASHF2.dbo.BANK_ACCOUNT_TYPE bat ON bat.BA_TYPE_ID = ba.BA_TYPE_ID
        ORDER BY ba.BANK_ACCOUNT_ID 
      

	  

		   