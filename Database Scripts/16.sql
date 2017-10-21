INSERT INTO acc.SubsidiaryLedger
        ( Title ,
          Code ,
          FriendlyCode ,
          Status ,
          Description ,
          Map ,
          GeneralLedgerId ,
          ClassId ,
          CategoryId ,
          NatureId ,
          HasDetail ,
          Created ,
          Modified
        )
VALUES  ( N'سود تقسيمی واحدهای سرمايه گذاری ' , -- Title - nvarchar(220)
          N'3230' , -- Code - nvarchar(50)
          N'3230' , -- FriendlyCode - nvarchar(150)
          1 , -- Status - int
          N'سود تقسيمی واحدهای سرمايه گذاری' , -- Description - nvarchar(220)
          N'' , -- Map - nvarchar(100)
          17 , -- GeneralLedgerId - bigint
          1 , -- ClassId - int
          3 , -- CategoryId - int
          2 , -- NatureId - int
          1 , -- HasDetail - bit
          GETDATE() , -- Created - datetime
          GETDATE()  -- Modified - datetime
        )

