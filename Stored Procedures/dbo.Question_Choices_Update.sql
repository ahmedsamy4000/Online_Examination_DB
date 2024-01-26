SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[Question_Choices_Update] @qid int,@choice nvarchar(255)
as
	update Question_Choices
	set Choice = @choice
	where @qid = Question_ID
GO
