SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE proc [dbo].[get_stud_grades] @stud_id int
as
	if exists(select * from Student where @stud_id = St_ID)
	begin
		select St_ID,Crs_name,Final_Grade
		from Student_Course as sc ,Course as c 
		where 
		sc.Crs_ID = c.Crs_ID 
		and St_ID = @stud_id
		and Final_Grade is not null
	end
	else
		select 'student id is not found'
GO
