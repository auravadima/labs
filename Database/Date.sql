CREATE TABLE [dbo].[Date](
	[PK_Дата] [datetime] NOT NULL,
	[Дата_Имя] [nvarchar](50) NULL,
	[Год] [datetime] NULL,
	[Год_Имя] [nvarchar](50) NULL,
	[Месяц] [datetime] NULL,
	[Месяц_Имя] [nvarchar](50) NULL,
	[Неделя] [datetime] NULL,
	[Неделя_Имя] [nvarchar](50) NULL,
	[День_Года] [int] NULL,
	[День_Года_Имя] [nvarchar](50) NULL,
	[День_Месяца] [int] NULL,
	[День_Месяца_Имя] [nvarchar](50) NULL,
	[День_Недели] [int] NULL,
	[День_Недели_Имя] [nvarchar](50) NULL,
	[Неделя_Года] [int] NULL,
	[Неделя_Года_Имя] [nvarchar](50) NULL,
	[Месяц_Года] [int] NULL,
	[Месяц_Года_Имя] [nvarchar](50) NULL,
 CONSTRAINT [PK_Date] PRIMARY KEY CLUSTERED 
(
	[PK_Дата] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'PK_Дата'
GO

EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Дата' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'PK_Дата'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Дата_Имя'
GO

EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Дата_Имя' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Дата_Имя'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Год'
GO

EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Год' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Год'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Год_Имя'
GO

EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Год_Имя' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Год_Имя'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Месяц'
GO

EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Месяц' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Месяц'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Месяц_Имя'
GO

EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Месяц_Имя' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Месяц_Имя'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Неделя'
GO

EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Неделя' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Неделя'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Неделя_Имя'
GO

EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Неделя_Имя' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Неделя_Имя'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'День_Года'
GO

EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'День_Года' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'День_Года'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'День_Года_Имя'
GO

EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'День_Года_Имя' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'День_Года_Имя'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'День_Месяца'
GO

EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'День_Месяца' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'День_Месяца'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'День_Месяца_Имя'
GO

EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'День_Месяца_Имя' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'День_Месяца_Имя'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'День_Недели'
GO

EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'День_Недели' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'День_Недели'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'День_Недели_Имя'
GO

EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'День_Недели_Имя' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'День_Недели_Имя'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Неделя_Года'
GO

EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Неделя_Года' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Неделя_Года'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Неделя_Года_Имя'
GO

EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Неделя_Года_Имя' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Неделя_Года_Имя'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Месяц_Года'
GO

EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Месяц_Года' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Месяц_Года'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Месяц_Года_Имя'
GO

EXEC sys.sp_addextendedproperty @name=N'DSVColumn', @value=N'Месяц_Года_Имя' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'COLUMN',@level2name=N'Месяц_Года_Имя'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date', @level2type=N'CONSTRAINT',@level2name=N'PK_Date'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowGen', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date'
GO

EXEC sys.sp_addextendedproperty @name=N'DSVTable', @value=N'Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date'
GO

EXEC sys.sp_addextendedproperty @name=N'Project', @value=N'd733b75c-c91d-4734-a559-2f69163e1fa0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Date'
GO


