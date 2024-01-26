SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[Question_Choices_Insertion] @qid int, @choice nvarchar(255)
as 
	insert into Question_Choices
	values(@qid,@choice)
GO
