SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[Instructor_SelectById] @id int 
AS
SELECT * FROM dbo.Instructor
WHERE dbo.Instructor.Ins_ID = @id;
GO
