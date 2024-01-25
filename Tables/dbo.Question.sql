CREATE TABLE [dbo].[Question]
(
[Question_ID] [int] NOT NULL,
[Type] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Grade] [int] NULL,
[Body] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Model_Answer] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Crs_ID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Question] ADD CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED ([Question_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Question] ADD CONSTRAINT [FK_Question_Course] FOREIGN KEY ([Crs_ID]) REFERENCES [dbo].[Course] ([Crs_ID])
GO
