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
        SELECT  Title ,
                CAST(( CAST(dl.DL_NUMBER AS BIGINT) - 6000000 ) + 1000000 AS NVARCHAR(50)) ,
                CAST(( CAST(dl.DL_NUMBER AS BIGINT) - 6000000 ) + 1000000 AS NVARCHAR(50)) ,
				1,
				Title,
                2 ,
                4 ,
                GETDATE() ,
                GETDATE()
        FROM    shd.Product
                JOIN dbo.instruments ON instruments.ISIN = Product.ISIN
                JOIN ASHF2..DETAIL_LEDGER dl ON dl.DL_NUMBER = instruments.DL_NUMBER;



				--SELECT * FROM acc.DetailLedger

				--DBCC CHECKIDENT('acc.DetailLedger',RESEED,1442)