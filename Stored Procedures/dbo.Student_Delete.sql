SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[Student_Delete] @id int
AS
BEGIN try
DELETE FROM dbo.Student WHERE St_ID = @id
END TRY
BEGIN CATCH
SELECT 'Delete Failed'
END CATCH
GO
