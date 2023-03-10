USE [Task1]
GO
/****** Object:  Table [dbo].[Tenants]    Script Date: 24/01/2023 15:18:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tenants](
	[TenantId] [int] IDENTITY(1,1) NOT NULL,
	[TenantName] [varchar](50) NULL,
 CONSTRAINT [PK_Tenants] PRIMARY KEY CLUSTERED 
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tenants] ON 

INSERT [dbo].[Tenants] ([TenantId], [TenantName]) VALUES (1, N'Skyfri')
INSERT [dbo].[Tenants] ([TenantId], [TenantName]) VALUES (2, N'Green Production')
SET IDENTITY_INSERT [dbo].[Tenants] OFF
GO
