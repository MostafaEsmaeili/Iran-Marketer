 SELECT  cba.ACCOUNT_NUMBER ,
                cba.BANK_ACCOUNT_ID ,
                cba.CUSTOMER_ID ,
               
                cba.BA_TYPE_ID ,
                cba.BANK_ID ,
                cba.BANK_BRANCH ,
                cba.IS_ACTIVE ,
                cba.BANK_BRANCH_CODE ,
                cba.SHABA_NUMBER ,
                batt.BA_TYPE_NAME ,
                batt.IS_SYSTEM_DEFINED ,
                batt.BA_TYPE_KIND_ID
        FROM    ASHF2.dbo.T_CUSTOMER c
                JOIN ASHF2.dbo.CUSTOMER_BANK_ACCOUNT cba ON cba.CUSTOMER_ID = c.CUSTOMER_ID
                JOIN ASHF2.dbo.BANK_ACCOUNT_TYPE batt ON batt.BA_TYPE_ID = cba.BA_TYPE_ID
				
			