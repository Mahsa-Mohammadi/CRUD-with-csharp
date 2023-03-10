USE [Task1]
GO
/****** Object:  Table [dbo].[Portfolios]    Script Date: 24/01/2023 15:18:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Portfolios](
	[PortfolioId] [int] IDENTITY(1,1) NOT NULL,
	[TenantId] [int] NOT NULL,
	[PortfolioName] [varchar](50) NULL,
 CONSTRAINT [PK_Portfolios] PRIMARY KEY CLUSTERED 
(
	[PortfolioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Portfolios] ON 

INSERT [dbo].[Portfolios] ([PortfolioId], [TenantId], [PortfolioName]) VALUES (2, 1, N'Oslo')
INSERT [dbo].[Portfolios] ([PortfolioId], [TenantId], [PortfolioName]) VALUES (3, 1, N'Mumbai')
INSERT [dbo].[Portfolios] ([PortfolioId], [TenantId], [PortfolioName]) VALUES (5, 1, N'Singapore')
INSERT [dbo].[Portfolios] ([PortfolioId], [TenantId], [PortfolioName]) VALUES (6, 2, N'Rooftop')
INSERT [dbo].[Portfolios] ([PortfolioId], [TenantId], [PortfolioName]) VALUES (7, 2, N'Ground Mounted')
INSERT [dbo].[Portfolios] ([PortfolioId], [TenantId], [PortfolioName]) VALUES (9, 2, N'Norsk Solar')
SET IDENTITY_INSERT [dbo].[Portfolios] OFF
GO
ALTER TABLE [dbo].[Portfolios]  WITH CHECK ADD  CONSTRAINT [TenantId_FK] FOREIGN KEY([TenantId])
REFERENCES [dbo].[Tenants] ([TenantId])
GO
ALTER TABLE [dbo].[Portfolios] CHECK CONSTRAINT [TenantId_FK]
GO
