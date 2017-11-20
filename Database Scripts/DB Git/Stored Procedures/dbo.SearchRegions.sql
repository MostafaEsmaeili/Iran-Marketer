SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SearchRegions] @filter NVARCHAR(100) , @type INT 
AS
    BEGIN
        SELECT  *
        FROM    dbo.Region
        WHERE   EnTitle LIKE N'%' + @filter + '%' AND RegionType = @type
        UNION
        SELECT  *
        FROM    dbo.Region
        WHERE   Title LIKE N'%' + @filter + '%'  AND RegionType = @type
        UNION
        SELECT  *
        FROM    dbo.Region
        WHERE   ZipCode LIKE N'%' + @filter + '%'  AND RegionType = @type
		 UNION
        SELECT  *
        FROM    dbo.Region
        WHERE   CAST(Id AS NVARCHAR(50)) = N'' + @filter + ''  AND RegionType = @type
            
    END
GO
