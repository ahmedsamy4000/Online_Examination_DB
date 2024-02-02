SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[Student_Course_Select] @id int
AS
SELECT * FROM dbo.Student_Course WHERE St_ID = @id
GO
