INSERT INTO [convert].DetailLedgerMap
        ( SahraDetailCode ,
          RayanDetailCode ,
          RayanTitle
        )

SELECT  k.Code,p.DL_NUMBER,p.DL_NAME
FROM    ( SELECT    *
          FROM      acc.DetailLedger
          WHERE     ClassId = 5
        ) k
        JOIN ( SELECT   *
               FROM     ASHF2..DETAIL_LEDGER
               WHERE    DL_CLASS_ID = 9
             ) p ON SUBSTRING(k.Code, 6, 3) = SUBSTRING(p.DL_NUMBER, 6, 3);

