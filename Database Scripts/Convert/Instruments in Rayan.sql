SELECT  k.INSTRUMENT_TEXT ,
        idl.INSTRUMENT_DL_ID ,
        dl.DL_NUMBER ,
        dl.DL_NAME
FROM    ( SELECT    INSTRUMENT_TEXT ,
                    INSTRUMENT_ID
          FROM      dbo.SP_TRANSACTION
          GROUP BY  INSTRUMENT_TEXT ,
                    INSTRUMENT_ID
        ) k
        JOIN dbo.INSTRUMENT_DL idl ON idl.INSTRUMENT_ID = k.INSTRUMENT_ID
        JOIN dbo.DETAIL_LEDGER dl ON dl.DL_ID = idl.DL_ID;