SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[Department_Update] @id int, @name varchar(10), @manager_id int
as
begin try
	if exists (select * from Department where Dep_Id = @id)
		begin 
			update Department
			SET Dep_name = @name,  Manager_Id = @manager_id
			WHERE Dep_ID = @id
		end
	else
		begin
			select 'invalid inputs'
		end

end try 
begin catch
select 'unable to update'
end catch
GO
