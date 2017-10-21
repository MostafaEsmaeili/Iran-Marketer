INSERT INTO acc.DetailLedger
        ( Title ,
          Code ,
          FriendlyCode ,
          Status ,
          Description ,
          ClassId ,
          NatureId ,
          Created ,
          Modified
        )
VALUES  ( N'»«‰ò ‘Â—' , -- Title - nvarchar(100)
          N'5000009' , -- Code - nvarchar(50)
          N'5000009' , -- FriendlyCode - nvarchar(50)
          1 , -- Status - int
          N'»«‰ò ‘Â—' , -- Description - nvarchar(220)
          5 , -- ClassId - int
          4 , -- NatureId - int
          GETDATE() , -- Created - datetime
          GETDATE()  -- Modified - datetime
        )

