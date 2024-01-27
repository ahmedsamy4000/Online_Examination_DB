SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[UpdateDeptNameById] @Dept_Id int, @Dept_Name varchar(10)
AS
IF EXISTS (SELECT * FROM dbo.Department WHERE Dep_ID =  @Dept_Id)
BEGIN 
UPDATE dbo.Department 
SET Dep_name = @Dept_Name
WHERE Dep_ID = @Dept_Id
END
ELSE
BEGIN
SELECT 'Error updating row'
end
GO
