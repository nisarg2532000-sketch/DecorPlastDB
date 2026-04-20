USE [DecorPlastDB]
GO
/****** Object:  Table [dbo].[OtpVerification]    Script Date: 03-03-2026 10.48.26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtpVerification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PhoneNumber] [varchar](15) NOT NULL,
	[OtpCode] [varchar](6) NOT NULL,
	[ExpiryTime] [datetime] NOT NULL,
	[IsVerified] [bit] NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OtpVerification] ON 

INSERT [dbo].[OtpVerification] ([Id], [PhoneNumber], [OtpCode], [ExpiryTime], [IsVerified], [CreatedAt]) VALUES (1, N'+919979887679', N'112825', CAST(N'2026-02-17T23:47:36.653' AS DateTime), 0, CAST(N'2026-02-17T23:42:47.237' AS DateTime))
INSERT [dbo].[OtpVerification] ([Id], [PhoneNumber], [OtpCode], [ExpiryTime], [IsVerified], [CreatedAt]) VALUES (2, N'+919979887679', N'734276', CAST(N'2026-02-17T23:53:41.597' AS DateTime), 0, CAST(N'2026-02-17T23:48:42.160' AS DateTime))
INSERT [dbo].[OtpVerification] ([Id], [PhoneNumber], [OtpCode], [ExpiryTime], [IsVerified], [CreatedAt]) VALUES (3, N'+919979887679', N'983962', CAST(N'2026-02-18T00:03:05.283' AS DateTime), 0, CAST(N'2026-02-17T23:58:05.973' AS DateTime))
INSERT [dbo].[OtpVerification] ([Id], [PhoneNumber], [OtpCode], [ExpiryTime], [IsVerified], [CreatedAt]) VALUES (1002, N'9157736461', N'316147', CAST(N'2026-03-01T22:29:48.773' AS DateTime), 0, CAST(N'2026-03-01T22:24:49.020' AS DateTime))
INSERT [dbo].[OtpVerification] ([Id], [PhoneNumber], [OtpCode], [ExpiryTime], [IsVerified], [CreatedAt]) VALUES (1003, N'9157736461', N'774210', CAST(N'2026-03-01T22:34:02.277' AS DateTime), 0, CAST(N'2026-03-01T22:29:02.290' AS DateTime))
INSERT [dbo].[OtpVerification] ([Id], [PhoneNumber], [OtpCode], [ExpiryTime], [IsVerified], [CreatedAt]) VALUES (1004, N'9157736461', N'703079', CAST(N'2026-03-01T22:34:33.300' AS DateTime), 0, CAST(N'2026-03-01T22:29:33.303' AS DateTime))
INSERT [dbo].[OtpVerification] ([Id], [PhoneNumber], [OtpCode], [ExpiryTime], [IsVerified], [CreatedAt]) VALUES (2002, N'9979887679', N'491171', CAST(N'2026-03-01T23:36:33.437' AS DateTime), 0, CAST(N'2026-03-01T23:31:33.477' AS DateTime))
INSERT [dbo].[OtpVerification] ([Id], [PhoneNumber], [OtpCode], [ExpiryTime], [IsVerified], [CreatedAt]) VALUES (2003, N'9979887679', N'786171', CAST(N'2026-03-01T23:38:04.923' AS DateTime), 0, CAST(N'2026-03-01T23:33:04.927' AS DateTime))
INSERT [dbo].[OtpVerification] ([Id], [PhoneNumber], [OtpCode], [ExpiryTime], [IsVerified], [CreatedAt]) VALUES (2004, N'9979887679', N'653635', CAST(N'2026-03-01T23:38:52.273' AS DateTime), 0, CAST(N'2026-03-01T23:33:52.277' AS DateTime))
INSERT [dbo].[OtpVerification] ([Id], [PhoneNumber], [OtpCode], [ExpiryTime], [IsVerified], [CreatedAt]) VALUES (2005, N'9979887679', N'314186', CAST(N'2026-03-01T23:40:06.770' AS DateTime), 1, CAST(N'2026-03-01T23:35:06.777' AS DateTime))
INSERT [dbo].[OtpVerification] ([Id], [PhoneNumber], [OtpCode], [ExpiryTime], [IsVerified], [CreatedAt]) VALUES (2006, N'9157736461', N'585953', CAST(N'2026-03-01T23:45:24.513' AS DateTime), 0, CAST(N'2026-03-01T23:40:24.517' AS DateTime))
INSERT [dbo].[OtpVerification] ([Id], [PhoneNumber], [OtpCode], [ExpiryTime], [IsVerified], [CreatedAt]) VALUES (2007, N'9979887679', N'597105', CAST(N'2026-03-01T23:46:21.120' AS DateTime), 1, CAST(N'2026-03-01T23:41:21.120' AS DateTime))
SET IDENTITY_INSERT [dbo].[OtpVerification] OFF
GO
ALTER TABLE [dbo].[OtpVerification] ADD  DEFAULT ((0)) FOR [IsVerified]
GO
ALTER TABLE [dbo].[OtpVerification] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
