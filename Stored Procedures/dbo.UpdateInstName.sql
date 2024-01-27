SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[UpdateInstName] @id int, @name varchar(20) 
AS 
IF EXISTS (SELECT * FROM dbo.Instructor WHERE Ins_ID = @id)
begin
UPDATE dbo.Instructor
SET Ins_Name = @name
WHERE Ins_ID = @id
END
else
BEGIN 
SELECT 'Error updating rows'
END
GO
