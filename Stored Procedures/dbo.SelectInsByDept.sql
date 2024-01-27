SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[SelectInsByDept] @DeptId int
AS
SELECT * FROM dbo.Instructor
WHERE 
dbo.Instructor.Dep_ID = @DeptId
GO
