INSERT  INTO pm.PartyRoles
        ( PartyId ,
          PersonalityRoleCodeId ,
          ValidFrom ,
          ValidUntil ,
          Created ,
          Modified ,
          CreatedBy ,
          ModifiedBy
        )
        SELECT  Id ,
                100 ,
                Created ,
                NULL ,
                Created ,
                Modified ,
                NULL ,
                NULL
        FROM    pm.Party
        WHERE   NationalId IN (
                SELECT  ISNULL(REPLACE(ISNULL(NATIONAL_CODE,
                                              COMPANY_NATIONAL_CODE), '-', ''),
                               FOREIGN_CODE) NationalCode
                FROM    ASHF2.dbo.T_CUSTOMER ) ORDER BY Id
		