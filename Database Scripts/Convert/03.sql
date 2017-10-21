INSERT  INTO pm.Contact
        ( PartyId ,
          HomePhone ,
          BusinessPhone ,
          Mobile ,
          Fax ,
          HomeAddress ,
          BusinessAddress ,
          PostalCode ,
          WebPage ,
          IMAddress ,
          Email1 ,
          Email2 ,
          Email3 ,
          RegionId ,
          RegionTitle ,
          Created ,
          Modified ,
          CreatedBy ,
          ModifiedBy
        )
        SELECT  ( SELECT    Id
                  FROM      pm.Party
                  WHERE     NationalId = ISNULL(REPLACE(ISNULL(NATIONAL_CODE,
                                                              COMPANY_NATIONAL_CODE),
                                                        '-', ''), FOREIGN_CODE)
                ) ,
                PHONE ,
                PHONE ,
                CELL_PHONE ,
                FAX ,
                ADDRESS ,
                ADDRESS ,
                POSTAL_CODE ,
                WEB_SITE ,
                NULL ,
                E_MAIL,NULL,NULL,NULL,NULL,dbo.MiladiDate(CREATION_DATE),dbo.MiladiDate(MODIFICATION_DATE), NULL,NULL
        FROM    ASHF2.dbo.T_CUSTOMER
        WHERE   ISNULL(REPLACE(ISNULL(NATIONAL_CODE, COMPANY_NATIONAL_CODE),
                               '-', ''), FOREIGN_CODE) IS NOT NULL ORDER BY ( SELECT    Id
                  FROM      pm.Party
                  WHERE     NationalId = ISNULL(REPLACE(ISNULL(NATIONAL_CODE,
                                                              COMPANY_NATIONAL_CODE),
                                                        '-', ''), FOREIGN_CODE)) 
