INSERT  INTO acc.VoucherDetail
        ( VoucherMasterId ,
          VoucherMasterTempNumber ,
          GeneralLedgerId ,
          SubsidiaryLedgerId ,
          DetailLedgerId ,
          GeneralLedgerCode ,
          SubsidiaryLedgerCode ,
          DetailLedgerCode ,
          Credit ,
          Debit ,
          Description ,
          Status ,
          RowNumber ,
          Created ,
          Modified ,
          ConvertVMasterId ,
          ConvertGeneralLedgerCode ,
          ConvertSubsidiaryLedgerCode ,
          ConvertDetailLedgerCode
        )
        SELECT  ( SELECT    Id
                  FROM      acc.VoucherMaster
                  WHERE     ConvertVoucherId = vm.VOUCHER_ID
                ) ,
                ( SELECT    VoucherNumber
                  FROM      acc.VoucherMaster
                  WHERE     ConvertVoucherId = vm.VOUCHER_ID
                ) ,
                ( SELECT    Id
                  FROM      acc.GeneralLedger
                  WHERE     Code = ( SELECT SahraCode
                                     FROM   [convert].GeneralLedgerMap
                                     WHERE  RayanCode = gl.GL_NUMBER
                                   )
                ) ,
                ( SELECT    Id
                  FROM      acc.SubsidiaryLedger
                  WHERE     Code = ( SELECT SahraSubCode
                                     FROM   [convert].SubsidiaryLedgerMap
                                     WHERE  RayanSubCode = sl.SL_NUMBER
                                   )
                            AND GeneralLedgerId = ( SELECT  Id
                                                    FROM    acc.GeneralLedger
                                                    WHERE   Code = ( SELECT
                                                              SahraCode
                                                              FROM
                                                              [convert].SubsidiaryLedgerMap
                                                              WHERE
                                                              RayanCode = gl.GL_NUMBER
                                                              AND RayanSubCode = sl.SL_NUMBER
                                                              )
                                                  )
                ) ,
                CASE WHEN dl.DL_CLASS_ID = 1
                     THEN ( SELECT  Id
                            FROM    acc.DetailLedger
                            WHERE   Code = dl.DL_NUMBER
                                    AND ClassId = 1
                          )
                     ELSE ( SELECT  Id
                            FROM    acc.DetailLedger
                            WHERE   Code = ( SELECT SahraDetailCode
                                             FROM   [convert].DetailLedgerMap
                                             WHERE  RayanDetailCode = dl.DL_NUMBER
                                           )
                          )
                END ,
                ( SELECT    Code
                  FROM      acc.GeneralLedger
                  WHERE     Code = ( SELECT SahraCode
                                     FROM   [convert].GeneralLedgerMap
                                     WHERE  RayanCode = gl.GL_NUMBER
                                   )
                ) ,
                ( SELECT    Code
                  FROM      acc.SubsidiaryLedger
                  WHERE     Code = ( SELECT SahraSubCode
                                     FROM   [convert].SubsidiaryLedgerMap
                                     WHERE  RayanSubCode = sl.SL_NUMBER
                                   )
                            AND GeneralLedgerId = ( SELECT  Id
                                                    FROM    acc.GeneralLedger
                                                    WHERE   Code = ( SELECT
                                                              SahraCode
                                                              FROM
                                                              [convert].SubsidiaryLedgerMap
                                                              WHERE
                                                              RayanCode = gl.GL_NUMBER
                                                              AND RayanSubCode = sl.SL_NUMBER
                                                              )
                                                  )
                ) ,
                CASE WHEN dl.DL_CLASS_ID = 1
                     THEN ( SELECT  Code
                            FROM    acc.DetailLedger
                            WHERE   Code = dl.DL_NUMBER
                                    AND ClassId = 1
                          )
                     ELSE ( SELECT  Code
                            FROM    acc.DetailLedger
                            WHERE   Code = ( SELECT SahraDetailCode
                                             FROM   [convert].DetailLedgerMap
                                             WHERE  RayanDetailCode = dl.DL_NUMBER
                                           )
                          )
                END ,
                vl.CREDIT_AMOUNT ,
                vl.DEBIT_AMOUNT ,
                vl.COMMENTS ,
                2 ,
                vl.LINE_NUMBER ,
                dbo.MiladiDate(vm.CREATION_DATE) ,
                dbo.MiladiDate(vm.MODIFICATION_DATE) ,
                vm.VOUCHER_ID ,
                gl.GL_NUMBER ,
                sl.SL_NUMBER ,
                dl.DL_NUMBER
        FROM    [ASHF2].dbo.VOUCHER_MASTER vm
                JOIN [ASHF2].dbo.VOUCHER_TYPE vt ON vt.VOUCHER_TYPE_ID = vm.VOUCHER_TYPE_ID
                JOIN [ASHF2].dbo.VOUCHER_LINE vl ON vl.VOUCHER_ID = vm.VOUCHER_ID
                JOIN [ASHF2].dbo.BRANCH br ON br.BRANCH_ID = vm.BRANCH_ID
                JOIN [ASHF2].dbo.SUBSIDIARY_LEDGER sl ON sl.SL_ID = vl.SL_ID
                JOIN [ASHF2].dbo.DETAIL_LEDGER dl ON dl.DL_ID = vl.DL_ID
                JOIN [ASHF2].dbo.GENERAL_LEDGER gl ON gl.GL_ID = sl.GL_ID
                JOIN [ASHF2].dbo.FISCAL_YEAR fs ON fs.YEAR_ID = vm.YEAR_ID ORDER BY vm.VOUCHER_DATE ASC , vm.VOUCHER_NUMBER ASC , vm.YEAR_ID ASC
		
	
			--DBCC CHECKIDENT('acc.VoucherDetail',RESEED,0)

			