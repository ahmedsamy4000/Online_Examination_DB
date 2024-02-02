SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[Student_Update] @id int, @fname varchar(20), @lname varchar(20),  @email varchar(50), @pass int, @deptid int
AS
IF EXISTS (SELECT * FROM dbo.Student WHERE St_ID = @id)
BEGIN
BEGIN TRY
UPDATE dbo.Student
SET ST_Fname = @fname, ST_Lname = @lname, ST_Email = @email, ST_Password = @pass , Dept_Id = @deptid
WHERE St_ID = @id
END TRY
BEGIN CATCH
SELECT'Couldnot Update'
END CATCH
END
ELSE
SELECT ' Invalid Input'
GO
