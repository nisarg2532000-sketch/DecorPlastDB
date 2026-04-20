USE [DecorPlastDB]
GO
/****** Object:  Table [dbo].[tblCodes]    Script Date: 03-03-2026 10.48.26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCodes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[CodeName] [varchar](10) NULL,
	[CategortyId] [int] NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblCodes] ON 

INSERT [dbo].[tblCodes] ([Id], [UserId], [CodeName], [CategortyId], [IsActive], [CreatedDate]) VALUES (1, NULL, N'DP18', 1, 1, CAST(N'2026-03-03T22:07:37.113' AS DateTime))
INSERT [dbo].[tblCodes] ([Id], [UserId], [CodeName], [CategortyId], [IsActive], [CreatedDate]) VALUES (2, NULL, N'DP19', 1, 1, CAST(N'2026-03-03T22:07:37.113' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblCodes] OFF
GO
ALTER TABLE [dbo].[tblCodes] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
