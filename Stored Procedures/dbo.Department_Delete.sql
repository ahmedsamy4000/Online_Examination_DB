SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create PROC [dbo].[Department_Delete] @id int
AS
IF EXISTS (SELECT * FROM dbo.Department WHERE Dep_ID =  @id)
BEGIN 
DELETE FROM dbo.Department
WHERE Dep_ID = @id
END
ELSE
BEGIN
SELECT 'Error deleting row'
END
GO
