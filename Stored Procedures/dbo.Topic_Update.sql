SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[Topic_Update]
    @Topic_ID INT,
    @Topic_Name VARCHAR(50),
    @Crs_ID INT
AS
BEGIN
    UPDATE Topic
    SET Topic_Name = @Topic_Name, Crs_ID = @Crs_ID
    WHERE Topic_ID = @Topic_ID
END
GO
