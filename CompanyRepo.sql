USE [CompanyRepo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 13.10.2020 15:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Companyes]    Script Date: 13.10.2020 15:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companyes](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[EstablishmentYear] [int] NOT NULL,
 CONSTRAINT [PK_Companyes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 13.10.2020 15:39:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[DateOfBirth] [datetime2](7) NOT NULL,
	[JobTitle] [nvarchar](max) NULL,
	[CompanyId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201012183327_initial', N'3.1.8')
INSERT [dbo].[Companyes] ([Id], [Name], [EstablishmentYear]) VALUES (N'2b911269-6a92-4e75-a37d-08d86edf6467', N'Wariaty', 1939)
INSERT [dbo].[Companyes] ([Id], [Name], [EstablishmentYear]) VALUES (N'4ef36b0b-b69f-4568-37eb-08d86edfdcba', N'Watykan Sp.zoo', 1911)
INSERT [dbo].[Companyes] ([Id], [Name], [EstablishmentYear]) VALUES (N'cd037828-a05f-490d-1fb2-08d86eec9c17', N'Legion', 1930)
INSERT [dbo].[Companyes] ([Id], [Name], [EstablishmentYear]) VALUES (N'37ad5e7b-166b-4b70-e7f5-08d86f725474', N'Servi', 2000)
INSERT [dbo].[Companyes] ([Id], [Name], [EstablishmentYear]) VALUES (N'2f8f5f08-9210-4060-02dd-08d86f72d479', N'Microsoft', 2002)
INSERT [dbo].[Companyes] ([Id], [Name], [EstablishmentYear]) VALUES (N'5286bbe8-28f2-45cd-02de-08d86f72d479', N'Warszawa', 2019)
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [DateOfBirth], [JobTitle], [CompanyId]) VALUES (N'73c2811c-0179-48ce-8e5c-08d86edf646e', N'grzesiek', N'Witek', CAST(N'2014-11-01T00:00:00.0000000' AS DateTime2), N'Administrator', N'2b911269-6a92-4e75-a37d-08d86edf6467')
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [DateOfBirth], [JobTitle], [CompanyId]) VALUES (N'c7befd2b-e3e5-4278-8e5d-08d86edf646e', N'jarek', N'Soltys', CAST(N'2015-01-01T00:00:00.0000000' AS DateTime2), N'Architect', N'2b911269-6a92-4e75-a37d-08d86edf6467')
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [DateOfBirth], [JobTitle], [CompanyId]) VALUES (N'e49dacfa-cd74-44d0-3adc-08d86edfdcc1', N'mirek', N'Karolak', CAST(N'2016-11-01T00:00:00.0000000' AS DateTime2), N'Administrator', N'4ef36b0b-b69f-4568-37eb-08d86edfdcba')
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [DateOfBirth], [JobTitle], [CompanyId]) VALUES (N'32b3acdc-f1e9-49e4-3add-08d86edfdcc1', N'wacek', N'Soltysiak', CAST(N'2017-01-01T00:00:00.0000000' AS DateTime2), N'Manager', N'4ef36b0b-b69f-4568-37eb-08d86edfdcba')
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [DateOfBirth], [JobTitle], [CompanyId]) VALUES (N'4fd345ce-c3a1-4c0f-a4f4-08d86eec9c1d', N'staszek', N'Prezes', CAST(N'2018-11-01T00:00:00.0000000' AS DateTime2), N'Manager', N'cd037828-a05f-490d-1fb2-08d86eec9c17')
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [DateOfBirth], [JobTitle], [CompanyId]) VALUES (N'dd479702-f729-4db0-a4f5-08d86eec9c1d', N'robert', N'Soltys', CAST(N'2019-01-01T00:00:00.0000000' AS DateTime2), N'Architect', N'cd037828-a05f-490d-1fb2-08d86eec9c17')
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [DateOfBirth], [JobTitle], [CompanyId]) VALUES (N'90100e5f-b93c-4b7d-7d04-08d86f72547b', N'wojtek', N'Kowal', CAST(N'2012-11-01T00:00:00.0000000' AS DateTime2), N'Administrator', N'37ad5e7b-166b-4b70-e7f5-08d86f725474')
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [DateOfBirth], [JobTitle], [CompanyId]) VALUES (N'57cb22b8-5e0c-42b4-7d05-08d86f72547b', N'Marek', N'Pajac', CAST(N'2013-01-01T00:00:00.0000000' AS DateTime2), N'Developer', N'37ad5e7b-166b-4b70-e7f5-08d86f725474')
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [DateOfBirth], [JobTitle], [CompanyId]) VALUES (N'be52422c-251a-4c74-cee1-08d86f72d47a', N'Mirek', N'Grzech', CAST(N'2015-11-01T00:00:00.0000000' AS DateTime2), N'Developer', N'2f8f5f08-9210-4060-02dd-08d86f72d479')
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [DateOfBirth], [JobTitle], [CompanyId]) VALUES (N'492eb8b2-be2f-41c1-cee2-08d86f72d47a', N'Anna', N'Odnowa', CAST(N'2012-11-01T00:00:00.0000000' AS DateTime2), N'Administrator', N'5286bbe8-28f2-45cd-02de-08d86f72d479')
INSERT [dbo].[Employees] ([Id], [FirstName], [LastName], [DateOfBirth], [JobTitle], [CompanyId]) VALUES (N'd49becce-ab3f-4088-cee3-08d86f72d47a', N'Marek', N'Jakis', CAST(N'2013-01-01T00:00:00.0000000' AS DateTime2), N'Developer', N'5286bbe8-28f2-45cd-02de-08d86f72d479')
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Companyes_CompanyId] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companyes] ([Id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Companyes_CompanyId]
GO
