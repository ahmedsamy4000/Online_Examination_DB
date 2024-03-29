SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[Topic_Delete]
    @Topic_ID INT
AS IF EXISTS(SELECT * FROM Topic WHERE Topic_ID=@Topic_ID)
BEGIN
    DELETE FROM Topic
    WHERE Topic_ID = @Topic_ID
END
ELSE
BEGIN 
SELECT 'Can not be deleted'
END
GO
