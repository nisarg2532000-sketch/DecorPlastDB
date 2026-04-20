USE [DecorPlastDB]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 03-03-2026 10.48.26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShopName] [varchar](100) NOT NULL,
	[MobileNo] [varchar](10) NOT NULL,
	[OwnerName] [varchar](100) NULL,
	[Address] [varchar](200) NULL,
	[Role] [varchar](20) NULL,
	[IsActive] [bit] NULL,
	[CreatedAt] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblUser] ON 

INSERT [dbo].[tblUser] ([Id], [ShopName], [MobileNo], [OwnerName], [Address], [Role], [IsActive], [CreatedAt]) VALUES (1, N'Nisarg', N'9157736461', NULL, NULL, NULL, NULL, CAST(N'2026-03-01T19:37:45.703' AS DateTime))
INSERT [dbo].[tblUser] ([Id], [ShopName], [MobileNo], [OwnerName], [Address], [Role], [IsActive], [CreatedAt]) VALUES (2, N'Satyam Store', N'9979887679', N'Satyam', N'Vadodara', NULL, 1, CAST(N'2026-03-01T23:30:31.537' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblUser] OFF
GO
ALTER TABLE [dbo].[tblUser] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblUser] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
