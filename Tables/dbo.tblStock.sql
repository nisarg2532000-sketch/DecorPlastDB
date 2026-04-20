USE [DecorPlastDB]
GO
/****** Object:  Table [dbo].[tblStock]    Script Date: 03-03-2026 10.48.26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStock](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[CodeId] [int] NULL,
	[SizeId] [int] NULL,
	[Quantity] [int] NULL,
	[UpdatedAt] [datetime] NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblStock] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
