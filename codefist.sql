USE [codefirst]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/17/2023 4:27:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 9/17/2023 4:27:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/17/2023 4:27:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/17/2023 4:27:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/17/2023 4:27:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/17/2023 4:27:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/17/2023 4:27:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 9/17/2023 4:27:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 9/17/2023 4:27:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Mobile] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 9/17/2023 4:27:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[MenuId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [float] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[DiscountId] [int] NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230916025554_InitialDatabaseSetup', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230916032941_IdentityTables', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230916040113_AddNewInforUser', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230916135046_TableMenu', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230916135222_TableMenuUpdatePrice', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230917030810_AddTableMenu', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230917031255_UpdateTableMenu', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230917032650_updateMenuNull', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230917080813_AddColImageUrlMenu', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230917081144_AddColImageUrlTableMenu', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230917081334_InitialMenu', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230917081520_InitialTableMenu', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230917081630_updateEmpployee', N'7.0.11')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'19bd9499-008b-483a-b52b-9596f89e04fc', N'employee', N'EMPLOYEE', N'b422d3c1-1af3-467a-baaa-e35e421f5066')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c892040c-ec2f-44bc-a528-cddf39d00fb9', N'administrator system', N'ADMINISTRATOR SYSTEM', N'74853aa2-43bc-4ff8-ae28-e20034ef1109')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'f7312e5b-b0dc-46af-b2dd-0910f7ab3a80', N'admin', N'ADMIN', N'fcb67cba-6bba-4a15-ae8c-1c0b1c8e8cff')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'111ae82a-7ef0-4811-a785-17d6becfe7f4', N'19bd9499-008b-483a-b52b-9596f89e04fc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'17a330bf-fdd2-449a-8d34-e3cbc3bb96f6', N'19bd9499-008b-483a-b52b-9596f89e04fc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3e25b049-b2e8-4054-bd62-6984bcd745b0', N'19bd9499-008b-483a-b52b-9596f89e04fc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4c5328dc-324d-49c9-b187-8233bdca3da2', N'19bd9499-008b-483a-b52b-9596f89e04fc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'84c6fb6b-461e-4d21-aa9d-afff282d8b51', N'19bd9499-008b-483a-b52b-9596f89e04fc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e031598c-1934-4d6c-bdfb-890b8a71a587', N'19bd9499-008b-483a-b52b-9596f89e04fc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'08f3f05d-b266-4c3e-99b4-12c0d926a8d3', N'c892040c-ec2f-44bc-a528-cddf39d00fb9')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'58309b46-912e-4f42-a5d4-44b059027a50', N'f7312e5b-b0dc-46af-b2dd-0910f7ab3a80')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6a28697d-58b0-4085-8b02-982ee9aca52d', N'f7312e5b-b0dc-46af-b2dd-0910f7ab3a80')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'78ad864d-58bc-4e49-b4c3-a9aa73f9ffd0', N'f7312e5b-b0dc-46af-b2dd-0910f7ab3a80')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8b9f3679-46b8-4026-ac01-f89642b1bcd9', N'f7312e5b-b0dc-46af-b2dd-0910f7ab3a80')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9f67b80d-5211-4e70-ae0e-5354359b61e8', N'f7312e5b-b0dc-46af-b2dd-0910f7ab3a80')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bff8c152-e9c6-42ff-8563-fb4ace6c191d', N'f7312e5b-b0dc-46af-b2dd-0910f7ab3a80')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'dcd59aa9-bb5b-4898-9d27-8da10f772526', N'f7312e5b-b0dc-46af-b2dd-0910f7ab3a80')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e05483da-00cc-4e76-a987-e07b9a354802', N'f7312e5b-b0dc-46af-b2dd-0910f7ab3a80')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'06864e92-11bd-49fd-af39-50de16beadb4', N'codefirst@gmail.com', N'CODEFIRST@GMAIL.COM', N'codefirst@gmail.com', N'CODEFIRST@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAENXdMc/o1/V4A8fxhJNZyVcr9R9LePuMOPSZ417gzK1pjsP3oFD+Z3m5st+x29pmCg==', N'TEOHBSA7CIDTH55BPYLBVTBBXZWSQMW7', N'77159b03-d484-4aa6-83d0-ed94ab851073', NULL, 0, 0, NULL, 1, 0, N'', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'08f3f05d-b266-4c3e-99b4-12c0d926a8d3', N'adminsystem@gmail.com', N'ADMINSYSTEM@GMAIL.COM', N'adminsystem@gmail.com', N'ADMINSYSTEM@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEAVKsb/MY1Fr3UWxsx6gHpyaDhjAJBYScaLFgf6oJw3xFK+h6khWlD+44hxk8DfKeQ==', N'DRK3B56ANJB7HOJTFWWPWJLEP36S4NK5', N'd9ffbb73-e8f6-409e-b2a7-37bf68dddc42', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'quản trị', N'hệ thống')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'111ae82a-7ef0-4811-a785-17d6becfe7f4', N'nhanvienlancuoi@gmail.com', N'NHANVIENLANCUOI@GMAIL.COM', N'nhanvienlancuoi@gmail.com', N'NHANVIENLANCUOI@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKEVE6Aazezby+JOIatKkI18bRMiJvuEu/OgLLnGBGdxKh+jtQirHhLWI9CcZMTrPw==', N'BSX3T7BETOJWY2IM2MTJWB7ZZXZNP7MR', N'e3f44f0d-ee88-4861-878b-8c52ca837bb7', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'met', N'moi')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'17a330bf-fdd2-449a-8d34-e3cbc3bb96f6', N'luffy@gmail.com', N'LUFFY@GMAIL.COM', N'luffy@gmail.com', N'LUFFY@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEA4RejtvZV3WEcZEVlLt6ftOjQRazfNVXaXgODhi4FgREJvdLEe8JaRGnqDwk+DxIw==', N'HEFU3HTOZFEL3OVK43PQ575RTGR3FFAH', N'1a96bf6f-1739-42b8-a955-a7d4b96ebbb8', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'luffy', N'mokey D.')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'3e25b049-b2e8-4054-bd62-6984bcd745b0', N'employee@gmail.com', N'EMPLOYEE@GMAIL.COM', N'employee@gmail.com', N'EMPLOYEE@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENLhvsu2DCP1g4u4VOyKMl66WPPuXYKV9rxVAitGo0i1hsZEzwz0Zy8C+TDAFibq3w==', N'FZ37VPE675I6D664WVJGHZG7ODEEIIZL', N'39ba3092-4e96-4062-95bd-1f65cfb69dff', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'employee', N'employee')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'4c5328dc-324d-49c9-b187-8233bdca3da2', N'1@gmail.com', N'1@GMAIL.COM', N'1@gmail.com', N'1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJUXrm239qeZde9OyMq0sRXjIlvhg//JsKpx2Nl10Eq16EyJNZdhag6SPUchLlRCpw==', N'UOOZAKISLOHBN2DANL6NN3KEW5MVZONG', N'ee2c7ad1-7c16-4005-af4b-04077d62f8a0', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'1', N'1')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'58309b46-912e-4f42-a5d4-44b059027a50', N'123@gmail.com', N'123@GMAIL.COM', N'123@gmail.com', N'123@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEKkxHClU5xIvqs2rwQDiczy3s+tNJKFzbB3/9ZdELykCGiYTN6ayM8dCipyNNcUOlA==', N'ZMQ75L35LVZE474T6HTY37AYGKQYATLN', N'007c1cfa-335a-4c33-8259-a4a9e339eed3', N'001203021301203', 0, 0, NULL, 1, 0, N'ApplicationUser', N'dasd', N'dasd')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'6a28697d-58b0-4085-8b02-982ee9aca52d', N'haha@gmail.com', N'HAHA@GMAIL.COM', N'haha@gmail.com', N'HAHA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEClF6H3bp6CuO3V/aS23uAG0WRdZ0gFOoH+772zZC5aMGWYPhZMwQMZdu4ulK+l6Xg==', N'W32NSOHBDACZ2D245SS5HF7P2ETH4UHU', N'a97839f4-881d-4cbc-b7c7-f44ed8b7b5e9', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'haha', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'78ad864d-58bc-4e49-b4c3-a9aa73f9ffd0', N'masteryi@yahoo.com', N'MASTERYI@YAHOO.COM', N'masteryi@yahoo.com', N'MASTERYI@YAHOO.COM', 0, N'AQAAAAEAACcQAAAAEHvE7OK9y00YanWo5EL8bAhJqVJ2yYM+3Ytg2aAOROKgJGedv0agIb/1uQmPMtPACA==', N'XJC5VXB3GFZQVRIHGYLCL6RBX7V33PXL', N'ac741faf-6d5b-44ab-a77e-814fbdab145c', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'yi', N'master')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'7970b247-1bb9-468d-9ee7-e582e7c680c8', N'nhanvien@gmail.com', N'NHANVIEN@GMAIL.COM', N'nhanvien@gmail.com', N'NHANVIEN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDopn7/zplEdmYfsL5pBITi/mtkBPbEZhDiW4Si1frKAEnz9Ft1hkZucYP2oFXg8+g==', N'76UWL4MXNEKP7GUL6V2ECTAUMNQ34V6T', N'53498e1a-87ca-46de-979d-24dfd86a21ec', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'nhan', N'vien')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'7a47433b-f82d-45a3-9114-ff0064042ca6', N'quantri@gmail.com', N'QUANTRI@GMAIL.COM', N'quantri@gmail.com', N'QUANTRI@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEO5STDh7frwu6qLzme6US5hfhTUWzhGqO7ouJlgNNoaCo6WEnoBVfkT2X6WFN8shHw==', N'OFXXC2AH3RLBHUUDJDPELVTBNDWYIO6P', N'aa1dbe04-a703-42b9-a554-9715020408e1', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'admin', N'admin')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'84c6fb6b-461e-4d21-aa9d-afff282d8b51', N'nhanvien1@gmail.com', N'NHANVIEN1@GMAIL.COM', N'nhanvien1@gmail.com', N'NHANVIEN1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENTmV5JeKfm02kEO8t7GXerTmNF+9re3ZC0hAbEHWsOkBKB6UWUxf5jrJCWylAksfA==', N'A3YWU24MYTBWVSY6KFZWAUG5QBS2GWGY', N'55b7647e-dfc3-4ad9-a310-1a81430cc089', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'gaooo', N'siu nhan')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'8b9f3679-46b8-4026-ac01-f89642b1bcd9', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHLoULOikK7KfkFrv/vS9nMp5LgZqCuXQAQieIZ4saVON66bNAwnEUvxLe33fauP+w==', N'7USQ7IRS6PI5ZNKKJXOQFOFMTDKG4KX2', N'74705825-84af-4aac-b351-06c19ad17982', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'admin', N'admin')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'8e0490ed-0b5d-4d18-bb1f-b8f74cc5e979', N'metnha@gmail.com', N'METNHA@GMAIL.COM', N'metnha@gmail.com', N'METNHA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEG1p76ysUzMF/NUaX10d3s1D9IGICzHNUwWKZI90pv4uaJkg5jdmqAZgCSE1sX2Wfg==', N'MJRKXU7WJGEVUP5CA2DDWWQDF6P5UUNA', N'26f1579a-3741-4527-86c9-8ee405b34fa6', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'dmka', N'dnas')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'9f67b80d-5211-4e70-ae0e-5354359b61e8', N'2051012102tai@ou.edu.vn', N'2051012102TAI@OU.EDU.VN', N'2051012102tai@ou.edu.vn', N'2051012102TAI@OU.EDU.VN', 0, N'AQAAAAEAACcQAAAAEMHB657D0W6czHVEexdcx0toYf0Iqj6FiTqUF5yvFRc863Ow3UxjFJB4ihjKPkyjXA==', N'EJHPDL6QMKEJ3U55HTH42L5XFS2CE4LR', N'5cb4c9c7-328c-429c-b2ae-782467712b36', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'tai', N'minh')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'bff8c152-e9c6-42ff-8563-fb4ace6c191d', N'leesinvoanhcuc@gmail.com', N'LEESINVOANHCUC@GMAIL.COM', N'leesinvoanhcuc@gmail.com', N'LEESINVOANHCUC@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEEapalToeaUe6wRH2i2fHISMqtZ4ctjiwRSoIIPXuMWK2BYnbxCV+K/MbCb4dQ2STg==', N'TVZP7ZQATI6DY5GOHQU6B7KFQIULYLZD', N'183c8761-d698-441f-8331-89e6ae0cabc6', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'lee', N'sin')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'ca0cb6e1-f7ea-429e-896c-ea1cfd3410ab', N'nhienviennha@gmail.com', N'NHIENVIENNHA@GMAIL.COM', N'nhienviennha@gmail.com', N'NHIENVIENNHA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAED4DTrU2K8gJnMbXdJhCyzExe/asvE3S8QDe87G77O4KwAWHwDxdNg90eBPhEIzbKQ==', N'AMBJRC7EZCIWOZYFPWDNOAZUE2ZBCT6P', N'ec36c635-55f5-4f20-93df-19ba938a3170', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'adasd', N'dasda')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'dcd59aa9-bb5b-4898-9d27-8da10f772526', N'minhtai@gmail.com', N'MINHTAI@GMAIL.COM', N'minhtai@gmail.com', N'MINHTAI@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHJzo8VaiX88Lqgs8U9cfFifDHGnGEG4MIZKHoNYeP9klVA6S4wWGC/iFWONwY1BDw==', N'DC3OBYGXTQEG6NLTWKIDF7GDYX2MA4LV', N'e85c8e0b-54df-48d1-a029-8ca1c65b674e', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'tai', N'minh')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'e031598c-1934-4d6c-bdfb-890b8a71a587', N'123456@gmail.com', N'123456@GMAIL.COM', N'123456@gmail.com', N'123456@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEAP+QqcvlHCtdoSbAPzgpAHVOH0W6E3s5OjqUu4lfQT06JYHmyXy+H8K7JS9wZQKuQ==', N'TNJQ7QFLLZLOIP2XU42INV6LVIIORAXO', N'2445c3ff-64cf-46eb-a960-d4b617f9c152', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'adsd', N'dasd')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'e05483da-00cc-4e76-a987-e07b9a354802', N'tai@yahoo.com', N'TAI@YAHOO.COM', N'tai@yahoo.com', N'TAI@YAHOO.COM', 0, N'AQAAAAEAACcQAAAAEHPA6EwzJ//lCVswyYbaLzlrqXA82/6/LW2s3N8BAv+ENAKiZb3A0uxPAPr3nVumMA==', N'TJMXCAK3ME22VVZQNHPOCRDR5MR2MQGJ', N'3fb2ab0e-b781-42cd-ac97-949efeeafb30', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'tai', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName]) VALUES (N'e82addd3-05ce-4891-a1a1-119caa481b0f', N'mt2405@gmail.com', N'MT2405@GMAIL.COM', N'mt2405@gmail.com', N'MT2405@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAW3BMF0j6f5+OrUK7SZxfQzl1xIxm68zlKkQ8eAysCCs5Ge79Fn24MJleUrko0efg==', N'KTKHAVKONLJIX3IMQD5P4R3I4GDIHAEM', N'72c6f292-af8c-43b8-8019-bbf5c70f9b5f', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'minh', N'tai')
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Mobile], [Email], [Address]) VALUES (1, N'lee', N'sin', N'0123123', N'bacthaysongam@gmail.com', N'')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([MenuId], [Name], [Description], [Price], [CategoryId], [DiscountId], [ImageUrl]) VALUES (1, N'thịt kho rain', N'ngon', 123, 1, 1, N'1')
INSERT [dbo].[Menu] ([MenuId], [Name], [Description], [Price], [CategoryId], [DiscountId], [ImageUrl]) VALUES (2, N'23', N'123123', 3123, 12, 312, NULL)
INSERT [dbo].[Menu] ([MenuId], [Name], [Description], [Price], [CategoryId], [DiscountId], [ImageUrl]) VALUES (3, N'123', N'123', 3213, 3213, 3213, NULL)
INSERT [dbo].[Menu] ([MenuId], [Name], [Description], [Price], [CategoryId], [DiscountId], [ImageUrl]) VALUES (4, N'312', N'3123', 123, 3123, 3123, N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1694940170/wgoam5pnkexxhabtcsft.jpg')
INSERT [dbo].[Menu] ([MenuId], [Name], [Description], [Price], [CategoryId], [DiscountId], [ImageUrl]) VALUES (5, N'bánh bao chiên', N'ngon có 3 trứng cút', 3000, 1, 1, N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1694940780/p6efvekniffqx3yct9mj.jpg')
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[Employee] ADD  DEFAULT (N'') FOR [Address]
GO
ALTER TABLE [dbo].[Menu] ADD  DEFAULT (N'') FOR [ImageUrl]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
