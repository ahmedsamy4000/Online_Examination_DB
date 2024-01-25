SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[Student_Update](
	@ST_id INT,
    @ST_Fname VARCHAR(30),
    @ST_Lname VARCHAR(30),
	@ST_Email VARCHAR(50),
    @ST_Password VARCHAR(50),
    @Dept_Id INT)
	AS
	BEGIN
	UPDATE dbo.Student
	SET ST_Fname=@ST_Fname,
	ST_Lname=@ST_Lname,
	ST_Email=@ST_Email,
	ST_Password=@ST_Password,
	Dept_Id=@Dept_Id
	WHERE ST_id=@ST_id
	END
GO
