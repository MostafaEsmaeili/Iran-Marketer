INSERT  INTO acc.VoucherMaster
        ( FiscalYearId ,
          VoucherDate ,
          VoucherStateId ,
          VoucherCategoryId ,
          VoucherGroupId ,
          VoucherNumber ,
          DailyNumber ,
          Description ,
          InsertMode ,
          BranchId ,
          BranchName ,
          CreatedBy ,
          CreatedByName ,
          Created ,
          Modified ,
          ConvertVoucherId,
		  ConvertUserAppId
        )
        SELECT  ( SELECT    Id
                  FROM      acc.FiscalYear
                  WHERE     Code = fs.YEAR_ID
                ) ,
                dbo.MiladiDate(vm.VOUCHER_DATE) ,
                4 ,
                CASE WHEN vm.VOUCHER_TYPE_ID = 15 THEN 240 ELSE ( SELECT    Code
                  FROM      acc.VoucherCategory
                  WHERE     Code = ( SELECT Sahra
                                     FROM   [convert].VoucherCategoryMap
                                     WHERE  Rayan = vm.VOUCHER_TYPE_ID
                                   )
                ) END,
                NULL ,
                vm.VOUCHER_NUMBER ,
                vm.VOUCHER_NUMBER ,
                vm.COMMENTS ,
                CASE WHEN vm.IS_MANUAL = 1 THEN 2
                     ELSE 1
                END ,
                ( SELECT    Id
                  FROM      shd.Branch
                  WHERE     Code = br.BRANCH_CODE COLLATE DATABASE_DEFAULT
                ) ,
                ( SELECT    Title
                  FROM      shd.Branch
                  WHERE     Code = br.BRANCH_CODE COLLATE DATABASE_DEFAULT
                ) ,
				'',
				'',
				dbo.MiladiDate(vm.CREATION_DATE COLLATE DATABASE_DEFAULT),
				dbo.MiladiDate(vm.MODIFICATION_DATE COLLATE DATABASE_DEFAULT),
				vm.VOUCHER_ID,
				vm.APPUSER_ID 
                
        FROM    [ASHF2].dbo.VOUCHER_MASTER vm
                JOIN [ASHF2].dbo.VOUCHER_TYPE vt ON vt.VOUCHER_TYPE_ID = vm.VOUCHER_TYPE_ID
                JOIN [ASHF2].dbo.BRANCH br ON br.BRANCH_ID = vm.BRANCH_ID
                JOIN [ASHF2].dbo.FISCAL_YEAR fs ON fs.YEAR_ID = vm.YEAR_ID ORDER BY vm.VOUCHER_DATE ASC, vm.VOUCHER_NUMBER ASC , vm.YEAR_ID ASC
			
			
			--DBCC CHECKIDENT('acc.VoucherMaster', RESEED,0)

		
