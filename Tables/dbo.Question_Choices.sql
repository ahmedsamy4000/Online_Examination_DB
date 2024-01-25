CREATE TABLE [dbo].[Question_Choices]
(
[Question_ID] [float] NOT NULL,
[Choice] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Question_Choices] ADD CONSTRAINT [PK_Question_Choices] PRIMARY KEY CLUSTERED ([Question_ID], [Choice]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Question_Choices] ADD CONSTRAINT [FK_Question_Choices_Question] FOREIGN KEY ([Question_ID]) REFERENCES [dbo].[Question] ([Question_ID])
GO
