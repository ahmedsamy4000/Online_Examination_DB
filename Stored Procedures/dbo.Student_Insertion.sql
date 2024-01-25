SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[Student_Insertion] (
	@ST_id INT,
    @ST_Fname VARCHAR(30),
    @ST_Lname VARCHAR(30),
	@ST_Email VARCHAR(50),
    @ST_Password VARCHAR(50),
    @Dept_Id int
)as
BEGIN
   INSERT INTO Student (ST_id, ST_Fname, ST_Lname, ST_Email, ST_Password, Dept_Id)
    VALUES (@ST_id, @ST_Fname, @ST_Lname,@ST_Email,@ST_Password,@Dept_Id)
    
END 
GO
