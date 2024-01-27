SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[DeleteInst] @id int
AS
IF EXISTS (SELECT * FROM dbo.Instructor WHERE Ins_ID = @id)
begin
DELETE FROM dbo.Instructor
WHERE Ins_ID = @id
END
else
BEGIN 
SELECT 'Error updating rows'
END
GO
