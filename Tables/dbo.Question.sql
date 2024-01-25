CREATE TABLE [dbo].[Question]
(
[Question_ID] [float] NOT NULL,
[Type] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Grade] [float] NOT NULL,
[Body] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Model_Answer] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Crs_ID] [float] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Question] ADD CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED ([Question_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Question] ADD CONSTRAINT [FK_Question_Course] FOREIGN KEY ([Crs_ID]) REFERENCES [dbo].[Course] ([Crs_ID])
GO
