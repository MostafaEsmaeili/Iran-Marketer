
SELECT  vm.* ,
        vl.* ,
        br.BRANCH_CODE ,
        br.BRANCH_NAME ,
        dl.DL_ID ,
        dl.DL_NUMBER ,
        dl.DL_NAME ,
        sl.SL_ID ,
        sl.SL_ID ,
        sl.SL_NAME ,
        gl.GL_ID ,
        gl.GL_NUMBER ,
        dl.DL_NAME ,
        fs.YEAR_ID
FROM    [ASHF2].dbo.VOUCHER_MASTER vm
        JOIN [ASHF2].dbo.VOUCHER_TYPE vt ON vt.VOUCHER_TYPE_ID = vm.VOUCHER_TYPE_ID
        JOIN [ASHF2].dbo.VOUCHER_LINE vl ON vl.VOUCHER_ID = vm.VOUCHER_ID
        JOIN [ASHF2].dbo.BRANCH br ON br.BRANCH_ID = vm.BRANCH_ID
        JOIN [ASHF2].dbo.SUBSIDIARY_LEDGER sl ON sl.SL_ID = vl.SL_ID
        JOIN [ASHF2].dbo.DETAIL_LEDGER dl ON dl.DL_ID = vl.DL_ID
        JOIN [ASHF2].dbo.GENERAL_LEDGER gl ON gl.GL_ID = sl.GL_ID
        JOIN [ASHF2].dbo.FISCAL_YEAR fs ON fs.YEAR_ID = vm.YEAR_ID
WHERE   vm.VOUCHER_DATE = '1394/11/10';


