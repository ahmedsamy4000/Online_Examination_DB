SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[InsertIntoInst] @id int, @name varchar(20), @DeptId int
AS
BEGIN try
INSERT INTO dbo.Instructor
(Ins_ID, Ins_Name, Dep_ID)
VALUES
( @id, @name, @DeptId  )
END TRY
BEGIN CATCH
SELECT 'invalid inputs'
END CATCH
GO
