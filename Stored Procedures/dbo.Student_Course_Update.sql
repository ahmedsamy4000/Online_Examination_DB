SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[Student_Course_Update] @stid int, @crsid int
AS
IF EXISTS (SELECT * FROM dbo.Student_Course WHERE St_ID = @stid)
BEGIN
BEGIN TRY
UPDATE dbo.Student_Course
SET Crs_ID = @crsID
WHERE St_ID = @stid
END TRY
BEGIN CATCH
SELECT 'cannot update'
END CATCH
END
ELSE
SELECT 'invalid input'
GO
