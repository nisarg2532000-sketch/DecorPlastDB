USE [DecorPlastDB]
GO
/****** Object:  Table [dbo].[tblOrders]    Script Date: 03-03-2026 10.48.26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Userid] [int] NULL,
	[OrderCategoryId] [int] NULL,
	[OrderCodeId] [int] NULL,
	[OrdersizeId] [int] NULL,
	[Status] [varchar](10) NULL,
	[UptadedAt] [datetime] NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblOrders] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
