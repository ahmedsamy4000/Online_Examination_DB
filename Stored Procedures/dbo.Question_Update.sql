SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[Question_Update] @qid int,@type nvarchar(255),@grade int, @body nvarchar(255),@model_answer nvarchar(255),@cid int
as
	update Question
	set Type = @type, Grade = @grade, Body = @body,Model_Answer = @model_answer,Crs_ID = @cid
	where @qid = Question_ID
GO
