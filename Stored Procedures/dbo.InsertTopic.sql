SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[InsertTopic]
    @Topic_ID INT,
    @Topic_Name VARCHAR(50),
    @Crs_ID INT
AS
BEGIN
    INSERT INTO Topic (Topic_ID, Topic_Name, Crs_ID)
    VALUES (@Topic_ID, @Topic_Name, @Crs_ID)
END
GO
