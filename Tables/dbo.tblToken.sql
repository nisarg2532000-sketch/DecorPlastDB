USE [DecorPlastDB]
GO
/****** Object:  Table [dbo].[tblToken]    Script Date: 03-03-2026 10.48.26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblToken](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[MobileNo] [varchar](10) NOT NULL,
	[Token] [varchar](max) NOT NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblToken] ON 

INSERT [dbo].[tblToken] ([Id], [UserId], [MobileNo], [Token], [CreatedDate]) VALUES (1, 2, N'9979887679', N'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiOTk3OTg4NzY3OSIsImV4cCI6MTc3MjM5MjMyOCwiaXNzIjoiT3RwQVBJIiwiYXVkIjoiT3RwQVBJVXNlcnMifQ.ObT6qvp_AMfTs9_viRmbqs6ZLICTnPEt5FOcCj5vLE8', CAST(N'2026-03-01T23:42:09.133' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblToken] OFF
GO
ALTER TABLE [dbo].[tblToken] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
