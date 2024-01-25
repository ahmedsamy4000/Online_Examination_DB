CREATE TABLE [dbo].[Student_Course]
(
[St_ID] [int] NOT NULL,
[Crs_ID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Student_Course] ADD CONSTRAINT [PK_Student_Course] PRIMARY KEY CLUSTERED ([St_ID], [Crs_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Student_Course] ADD CONSTRAINT [FK_Student_Course_Course] FOREIGN KEY ([Crs_ID]) REFERENCES [dbo].[Course] ([Crs_ID])
GO
ALTER TABLE [dbo].[Student_Course] ADD CONSTRAINT [FK_Student_Course_Student] FOREIGN KEY ([St_ID]) REFERENCES [dbo].[Student] ([ST_id])
GO
