SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[Student_Insert] @fname varchar(20), @lname varchar(20), @email varchar(50), @pass int, @deptid int
AS
BEGIN TRY
INSERT INTO dbo.Student
(
    ST_Fname,
    ST_Lname,
    ST_Email,
    ST_Password,
    Dept_Id
)
VALUES
(   @fname,
	@lname,
	@email,
	@pass,
	@deptid
    )
END TRY
BEGIN CATCH
SELECT 'Invalid Input'
END CATCH
GO
