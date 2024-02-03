CREATE TABLE [dbo].[Exam_Answers]
(
[St_ID] [int] NOT NULL,
[Exam_ID] [int] NOT NULL,
[answer1] [varchar] (20) COLLATE Latin1_General_CI_AS NULL,
[answer2] [varchar] (20) COLLATE Latin1_General_CI_AS NULL,
[answer3] [varchar] (20) COLLATE Latin1_General_CI_AS NULL,
[answer4] [varchar] (20) COLLATE Latin1_General_CI_AS NULL,
[answer5] [varchar] (20) COLLATE Latin1_General_CI_AS NULL,
[answer6] [varchar] (20) COLLATE Latin1_General_CI_AS NULL,
[answer7] [varchar] (20) COLLATE Latin1_General_CI_AS NULL,
[answer8] [varchar] (20) COLLATE Latin1_General_CI_AS NULL,
[answer9] [varchar] (20) COLLATE Latin1_General_CI_AS NULL,
[answer10] [varchar] (20) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Exam_Answers] ADD CONSTRAINT [PK_Exam_Answers] PRIMARY KEY CLUSTERED ([St_ID], [Exam_ID]) ON [PRIMARY]
GO
