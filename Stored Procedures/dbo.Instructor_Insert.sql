SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create PROC [dbo].[Instructor_Insert] @name varchar(20), @DeptId int
AS
BEGIN try
INSERT INTO dbo.Instructor
(Ins_Name, Dept_ID)
VALUES
(@name, @DeptId  )
END TRY
BEGIN CATCH
SELECT 'invalid inputs'
END CATCH
GO
