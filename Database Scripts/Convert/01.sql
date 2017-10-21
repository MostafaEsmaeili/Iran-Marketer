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
        SELECT  DL_NAME ,
                DL_NUMBER ,
                DL_NUMBER ,
                1 ,
                DL_NAME ,
                1 ,
                4 ,
                GETDATE() ,
                GETDATE()
        FROM    ASHF2.dbo.DETAIL_LEDGER
        WHERE   DL_CLASS_ID = 1;
