SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[Department_SelectById] @id int 
AS
SELECT * FROM dbo.Department
WHERE dbo.Department.Dep_ID = @id;
GO
