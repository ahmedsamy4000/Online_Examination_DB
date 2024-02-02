SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create PROC [dbo].[Instructor_SelectByDeptId] @DeptId int
AS
SELECT * FROM dbo.Instructor
WHERE 
dbo.Instructor.Dept_ID = @DeptId
GO
