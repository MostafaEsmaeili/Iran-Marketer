INSERT INTO pm.Party
        ( Name ,
          EnName ,
          FirstName ,
          EnFirstName ,
          LastName ,
          EnLastName ,
          FatherName ,
          EnFatherName ,
          NationalId ,
          IdentityCard ,
          IdentitySerialNumber ,
          DetailLedgerCode ,
          DetailLedgerId ,
          NationalityPlaceId ,
          NationalityText ,
          IssuerName ,
          EcomomicCode ,
          FullName ,
          BirthDate ,
          RegisterDate ,
          RegisterPlace ,
          IssuePlace ,
          BirthPlace ,
          Gender ,
          OrganizationalType ,
          UserId ,
          UserName ,
          DeletionDate ,
          ValidFrom ,
          ValidUntil ,
          Position ,
          JobTitle ,
          EducationDegree ,
          PartyType ,
          Modified ,
          Created ,
          ModifiedBy ,
          CreatedBy
        )
SELECT  COMPANY_NAME ,
        LATIN_COMPANY_NAME ,
        FIRST_NAME ,
        LATIN_FIRST_NAME ,
        LAST_NAME ,
        LATIN_LAST_NAME ,
        PARENT ,
        LATIN_PARENT_NAME ,
        ISNULL(REPLACE(ISNULL(NATIONAL_CODE, COMPANY_NATIONAL_CODE), '-', ''),
               FOREIGN_CODE) NationalCode ,
        BIRTH_CERTIFICATION_NUMBER ,
        BIRTH_CERTIFICATION_ID ,
        dl.DL_NUMBER ,
        ( SELECT    Id
          FROM      acc.DetailLedger
          WHERE     Code = dl.DL_NUMBER
        ) ,
        CASE WHEN IS_IRANIAN = 1 THEN 1
             ELSE 2
        END ,
        CASE WHEN IS_IRANIAN = 1 THEN N'ایرانی'
             ELSE N'خارجی'
        END ,
        REFERRED_BY ,
        NULL EcomomicCode ,
        ISNULL(COMPANY_NAME, FIRST_NAME + ' ' + LAST_NAME) ,
        CASE WHEN IS_COMPANY = 0 THEN dbo.MiladiDate(BIRTH_DATE)
             ELSE NULL
        END ,
        CASE WHEN IS_COMPANY = 1 THEN dbo.MiladiDate(BIRTH_DATE)
             ELSE NULL
        END ,
        CASE WHEN IS_COMPANY = 1 THEN ISSUING_CITY
             ELSE NULL
        END ,
        CASE WHEN IS_COMPANY = 0 THEN ISSUING_CITY
             ELSE NULL
        END ,
        CASE WHEN IS_COMPANY = 0 THEN ISSUING_CITY
             ELSE NULL
        END ,
        1 Gender ,
        NULL OrganizationalType ,
        NULL UserId ,
        NULL UserName ,
        NULL DeletionDate ,
        dbo.MiladiDate(CREATION_DATE) ,
        NULL ,
        NULL Position ,
        NULL JobTitle ,
        NULL EducationDegree ,
        CASE WHEN IS_COMPANY = 1 THEN 2
             ELSE 1
        END ,
        dbo.MiladiDate(MODIFICATION_DATE) ,
        dbo.MiladiDate(CREATION_DATE), NULL,NULL
FROM    [ASHF2].dbo.T_CUSTOMER
        JOIN [ASHF2].dbo.DETAIL_LEDGER dl ON dl.DL_ID = T_CUSTOMER.DL_ID
WHERE   ISNULL(REPLACE(ISNULL(NATIONAL_CODE, COMPANY_NATIONAL_CODE), '-', ''),
               FOREIGN_CODE) IS NOT NULL;


			   