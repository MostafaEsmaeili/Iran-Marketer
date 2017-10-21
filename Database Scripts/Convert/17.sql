INSERT INTO acc.FiscalYear
        ( StartDate ,
          EndDate ,
          Title ,
          Code ,
          Status ,
          Modified ,
          Created
        )
SELECT
    
       dbo.MiladiDate(START_DATE) ,
       dbo.MiladiDate(END_DATE) ,
	   YEAR_NAME,
	   YEAR_ID,
	       FY_STATUS_ID ,
       GETDATE() ,
     GETDATE() 
   
      FROM ASHF2..FISCAL_YEAR