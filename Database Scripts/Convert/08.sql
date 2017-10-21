INSERT  INTO acc.DetailLedger
        ( Title ,
          Code ,
          FriendlyCode ,
          Status ,
          Description ,
          ClassId ,
          NatureId ,
          Created ,
          Modified
        )
        SELECT  dl.DL_NAME ,
                CAST( ( CAST(dl.DL_NUMBER AS BIGINT) - 2000000) +  3000000 AS NVARCHAR(50)),
                CAST( ( CAST(dl.DL_NUMBER AS BIGINT) - 2000000) +  3000000 AS NVARCHAR(50)),
                1 ,
                dl.DL_NAME ,
                3 ,
                4 ,
                GETDATE() ,
                GETDATE()
        FROM    ASHF2.dbo.BANK_ACCOUNT ba
                JOIN ASHF2.dbo.DETAIL_LEDGER dl ON dl.DL_ID = ba.DL_ID ORDER BY dl.DL_NUMBER



				
				