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
                CAST(( CAST(dl.DL_NUMBER AS BIGINT) - 5000000 ) + 1000000 AS NVARCHAR(50)) ,
                CAST(( CAST(dl.DL_NUMBER AS BIGINT) - 5000000 ) + 1000000 AS NVARCHAR(50)) ,
                1 ,
                dl.DL_NAME ,
                4 ,
                4 ,
                GETDATE() ,
                GETDATE()
        FROM    ASHF2..BROKERAGE_DL br
                JOIN ASHF2..DETAIL_LEDGER dl ON dl.DL_ID = br.DL_ID;

				