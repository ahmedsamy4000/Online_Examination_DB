SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[Department_SelectByName] @name varchar(20)
AS
SELECT * FROM dbo.Department
WHERE dbo.Department.Dep_name= @name
GO
