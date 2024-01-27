SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create PROC [dbo].[SelectInstByDept] @DeptId int
AS
SELECT * FROM dbo.Instructor
WHERE 
dbo.Instructor.Dep_ID = @DeptId
GO
