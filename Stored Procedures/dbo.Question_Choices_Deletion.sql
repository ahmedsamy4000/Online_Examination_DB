SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

create proc [dbo].[Question_Choices_Deletion] @qid int
as
	delete from Question_Choices
	where Question_ID = @qid
GO
