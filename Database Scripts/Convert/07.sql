INSERT  INTO shd.Branch
        ( Title ,
          EnTitle ,
          Code ,
          BankNameId ,
          ManagerName ,
          Address ,
          Tel ,
          Fax ,
          ValidFrom ,
          ValidUntil ,
          Type ,
          EnManagerName ,
          Created ,
          Modified ,
          EnAddress
        )
        SELECT  BRANCH_NAME ,
                LATIN_BRANCH_NAME ,
                BRANCH_CODE ,
                NULL ,
                MANAGER ,
                ADDRESS ,
                PHONE ,
                FAX ,
                '2016-01-01' ,
                CASE WHEN IS_ACTIVE = 0 THEN GETDATE()
                     ELSE NULL
                END ,
                1 ,
                LATIN_MANAGER ,
                GETDATE() ,
                GETDATE() ,
                LATIN_ADDRESS
        FROM    ASHF2.dbo.BRANCH; 
