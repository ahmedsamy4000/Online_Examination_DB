SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [dbo].[InsertIntoDept] @DeptId int, @Dept_Name varchar(10), @Manager_Id int
AS
BEGIN TRY
INSERT INTO dbo.Department
(Dep_ID, Dep_name, Manager_Id)
VALUES
(@DeptId, @Dept_Name, @Manager_Id)
END TRY
BEGIN CATCH
SELECT 'invalid inputs'
END CATCH
GO
