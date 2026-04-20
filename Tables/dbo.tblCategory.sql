USE [DecorPlastDB]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 03-03-2026 10.48.26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[CategoryName] [varchar](50) NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblCategory] ON 

INSERT [dbo].[tblCategory] ([Id], [UserId], [CategoryName], [IsActive], [CreatedDate]) VALUES (1, NULL, N'Matrix', 1, CAST(N'2026-03-03T22:01:49.983' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblCategory] OFF
GO
ALTER TABLE [dbo].[tblCategory] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
