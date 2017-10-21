

SELECT  vm.* ,
        br.BRANCH_CODE ,
        br.BRANCH_NAME ,
        fs.YEAR_ID
FROM    [ASHF2].dbo.VOUCHER_MASTER vm
        JOIN [ASHF2].dbo.VOUCHER_TYPE vt ON vt.VOUCHER_TYPE_ID = vm.VOUCHER_TYPE_ID
        JOIN [ASHF2].dbo.BRANCH br ON br.BRANCH_ID = vm.BRANCH_ID
        JOIN [ASHF2].dbo.FISCAL_YEAR fs ON fs.YEAR_ID = vm.YEAR_ID;



