SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE proc [dbo].[get_Student_in_dept] @dept_id int
as
	if exists(select * from Department where @dept_id = Dep_ID)
	begin
		select * 
		from Student
		where Dept_Id = @dept_id
	end
	else
		select 'no such department'
GO
