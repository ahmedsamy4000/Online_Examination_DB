SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create PROC [dbo].[SelectDeptByManagerId] @ManagerId int
AS
SELECT * FROM dbo.Department
WHERE 
dbo.Department.Manager_Id = @ManagerId
GO
