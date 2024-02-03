SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[Topic_Insert] (@Topic_ID INT, @Topic_Name VARCHAR(50),  @Crs_ID INT)
AS
BEGIN TRY
INSERT INTO Topic (Topic_ID, Topic_Name, Crs_ID)
    VALUES (@Topic_ID, @Topic_Name, @Crs_ID)
	END TRY
BEGIN CATCH 
SELECT 'Enter valid Data'
END CATCH
GO
