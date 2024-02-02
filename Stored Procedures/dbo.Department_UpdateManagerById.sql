SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[Department_UpdateManagerById] @Dept_Id int, @Manager_Id int
AS
IF EXISTS (SELECT * FROM dbo.Department WHERE Dep_ID =  @Dept_Id)
BEGIN 
UPDATE dbo.Department 
SET Manager_Id = @Manager_Id
WHERE Dep_ID = @Dept_Id
END
ELSE
BEGIN
SELECT 'Error updating row'
END
GO
