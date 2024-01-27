SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[SelectInstByName] @name varchar(20)
AS
SELECT * FROM dbo.Instructor
WHERE dbo.Instructor.Ins_Name = @name
GO
