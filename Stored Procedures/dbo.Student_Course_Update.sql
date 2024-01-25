SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[Student_Course_Update](
	@ST_id INT,
	@Crs_id INT)
	AS
	BEGIN
	UPDATE dbo.Student_Course
	SET St_ID=@ST_id,
		Crs_ID=@Crs_id
	WHERE ST_id=@ST_id
	END
GO
