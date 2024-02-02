SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[Student_Course_Insert] @stid int, @crsid int
AS
BEGIN TRY
INSERT INTO dbo.Student_Course
(
	St_ID,
    Crs_ID
)
VALUES
(   
	@stid,
    @crsID
    )
END TRY
BEGIN CATCH
SELECT ' cant insert'
END CATCH
GO
