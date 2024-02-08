SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[Department_Select]
as
begin try
select * from Department
end try
begin catch
select 'Unable to Select'
end catch
GO
