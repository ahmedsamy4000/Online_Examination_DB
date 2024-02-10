SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE proc [dbo].[Exam_Answer]
	@exID int,@stID int,
	@ans1 varchar(100),@ans2 varchar(100),@ans3 varchar(100),
	@ans4 varchar(100),@ans5 varchar(100),@ans6 varchar(100),
	@ans7 varchar(100),@ans8 varchar(100),@ans9 varchar(100),
	@ans10 varchar(100)
as
	create table #answers(
	answer nvarchar(100))

	insert into #answers
	values
		(@ans1),(@ans2),(@ans3),(@ans4),(@ans5),
		(@ans6),(@ans7),(@ans8),(@ans9),(@ans10)
	
	DECLARE @answer NVARCHAR(100);

	declare @QID int

	declare c1 cursor for
	select Question_ID from Exam_Questions
	where Exam_ID = @exID

	open c1

	fetch Next from c1 into @QID

	while @@FETCH_STATUS = 0
	begin 
		select top(1) @answer = answer from #answers
		insert into Student_Exam_Question (ST_ID,Question_ID,Exam_ID,Student_Answer)
		select @stID,@QID,@exID,@answer
		DELETE FROM #answers WHERE answer = @answer;
		Fetch next from c1 into @QID
	end
	
	deallocate c1
	drop table #answers
GO
