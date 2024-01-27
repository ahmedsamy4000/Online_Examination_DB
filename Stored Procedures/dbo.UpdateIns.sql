SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[UpdateIns] @id int, @name varchar(20), @DeptId int
AS
IF EXISTS (SELECT * FROM dbo.Instructor WHERE Ins_ID = @id)
begin
UPDATE dbo.Instructor
SET Ins_Name = @name, Dep_ID = @DeptId
WHERE Ins_ID = @id
END
else
BEGIN 
SELECT 'Error updating rows'
END
GO
