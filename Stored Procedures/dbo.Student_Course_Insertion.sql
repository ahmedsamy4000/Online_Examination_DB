SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[Student_Course_Insertion] (
	@ST_id INT,
	@Crs_ID INT
)as
BEGIN
   INSERT INTO dbo.Student_Course
   (
       St_ID,
       Crs_ID
   )
    VALUES (@ST_id,@Crs_ID)
END 
GO
