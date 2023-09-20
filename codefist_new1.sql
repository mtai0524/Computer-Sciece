USE [codefirst]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/20/2023 1:55:39 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 9/20/2023 1:55:39 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/20/2023 1:55:39 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/20/2023 1:55:39 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/20/2023 1:55:39 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/20/2023 1:55:39 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/20/2023 1:55:39 PM ******/
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
	[Avatar] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 9/20/2023 1:55:39 PM ******/
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
/****** Object:  Table [dbo].[Branch]    Script Date: 9/20/2023 1:55:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Branch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 9/20/2023 1:55:39 PM ******/
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
	[Avatar] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceCategory]    Script Date: 9/20/2023 1:55:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceCategory](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_ServiceCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceEntity]    Script Date: 9/20/2023 1:55:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceEntity](
	[ServiceId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_ServiceEntity] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230916025554_InitialDatabaseSetup', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230916032941_IdentityTables', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230916040113_AddNewInforUser', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230917081630_updateEmpployee', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230917182910_addAvatarUser', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230918153322_addBranch', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230918153546_addAvatarEmployee', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230918154111_upBranch', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230919012557_initServiceCategories', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230919012737_initServiceEntity', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230919012857_updateNotNullServiceEntity', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230919013348_updatePriceDescriptionServiceEntity', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230919014145_updateFkNullServiceEntity', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230919014638_updateService', N'7.0.11')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'19bd9499-008b-483a-b52b-9596f89e04fc', N'employee', N'EMPLOYEE', N'b422d3c1-1af3-467a-baaa-e35e421f5066')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a64e8afb-b8c4-4a32-b79f-d4eedc9606a8', N'user', N'USER', N'38dadd99-4d95-44f1-abd3-5114a1c5d9ba')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c892040c-ec2f-44bc-a528-cddf39d00fb9', N'administrator system', N'ADMINISTRATOR SYSTEM', N'74853aa2-43bc-4ff8-ae28-e20034ef1109')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'f7312e5b-b0dc-46af-b2dd-0910f7ab3a80', N'admin', N'ADMIN', N'fcb67cba-6bba-4a15-ae8c-1c0b1c8e8cff')
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Google', N'114602856931692523135', N'Google', N'6b4e19e6-2fb4-43ee-b5f0-3c812672a264')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'17a330bf-fdd2-449a-8d34-e3cbc3bb96f6', N'19bd9499-008b-483a-b52b-9596f89e04fc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2417089b-5a07-41a8-bd0e-45f5bc23a8ee', N'19bd9499-008b-483a-b52b-9596f89e04fc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3e25b049-b2e8-4054-bd62-6984bcd745b0', N'19bd9499-008b-483a-b52b-9596f89e04fc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4c5328dc-324d-49c9-b187-8233bdca3da2', N'19bd9499-008b-483a-b52b-9596f89e04fc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7ad410b1-ca0f-4ab4-8700-47d3f04ec94c', N'19bd9499-008b-483a-b52b-9596f89e04fc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'84c6fb6b-461e-4d21-aa9d-afff282d8b51', N'19bd9499-008b-483a-b52b-9596f89e04fc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a2d81466-5d00-456f-955b-b80273835919', N'19bd9499-008b-483a-b52b-9596f89e04fc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c0e5e869-3331-4731-98b2-9cf7f32f4e21', N'19bd9499-008b-483a-b52b-9596f89e04fc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e031598c-1934-4d6c-bdfb-890b8a71a587', N'19bd9499-008b-483a-b52b-9596f89e04fc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1749679f-ba46-4779-af57-23b10df21cb5', N'a64e8afb-b8c4-4a32-b79f-d4eedc9606a8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6b4e19e6-2fb4-43ee-b5f0-3c812672a264', N'a64e8afb-b8c4-4a32-b79f-d4eedc9606a8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'825f8cfe-5f33-457f-9a3e-3f2e38c014a8', N'a64e8afb-b8c4-4a32-b79f-d4eedc9606a8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd7966791-1677-4608-9ad8-464ce49b152d', N'a64e8afb-b8c4-4a32-b79f-d4eedc9606a8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'08f3f05d-b266-4c3e-99b4-12c0d926a8d3', N'c892040c-ec2f-44bc-a528-cddf39d00fb9')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0f7174f5-348a-4977-947f-343ec34b40d9', N'c892040c-ec2f-44bc-a528-cddf39d00fb9')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'520e6312-5711-4b79-ac32-35eb2fdb81b5', N'c892040c-ec2f-44bc-a528-cddf39d00fb9')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fc1f5777-0aa8-4e20-920a-a048e2eb4c1c', N'c892040c-ec2f-44bc-a528-cddf39d00fb9')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'111ae82a-7ef0-4811-a785-17d6becfe7f4', N'f7312e5b-b0dc-46af-b2dd-0910f7ab3a80')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'58309b46-912e-4f42-a5d4-44b059027a50', N'f7312e5b-b0dc-46af-b2dd-0910f7ab3a80')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6a28697d-58b0-4085-8b02-982ee9aca52d', N'f7312e5b-b0dc-46af-b2dd-0910f7ab3a80')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'78ad864d-58bc-4e49-b4c3-a9aa73f9ffd0', N'f7312e5b-b0dc-46af-b2dd-0910f7ab3a80')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'825f8cfe-5f33-457f-9a3e-3f2e38c014a8', N'f7312e5b-b0dc-46af-b2dd-0910f7ab3a80')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8b9f3679-46b8-4026-ac01-f89642b1bcd9', N'f7312e5b-b0dc-46af-b2dd-0910f7ab3a80')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bff8c152-e9c6-42ff-8563-fb4ace6c191d', N'f7312e5b-b0dc-46af-b2dd-0910f7ab3a80')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'dcd59aa9-bb5b-4898-9d27-8da10f772526', N'f7312e5b-b0dc-46af-b2dd-0910f7ab3a80')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e05483da-00cc-4e76-a987-e07b9a354802', N'f7312e5b-b0dc-46af-b2dd-0910f7ab3a80')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'06864e92-11bd-49fd-af39-50de16beadb4', N'codefirst@gmail.com', N'CODEFIRST@GMAIL.COM', N'codefirst@gmail.com', N'CODEFIRST@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAENXdMc/o1/V4A8fxhJNZyVcr9R9LePuMOPSZ417gzK1pjsP3oFD+Z3m5st+x29pmCg==', N'TEOHBSA7CIDTH55BPYLBVTBBXZWSQMW7', N'77159b03-d484-4aa6-83d0-ed94ab851073', NULL, 0, 0, NULL, 1, 0, N'', NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'08f3f05d-b266-4c3e-99b4-12c0d926a8d3', N'adminsystem@gmail.com', N'ADMINSYSTEM@GMAIL.COM', N'adminsystem@gmail.com', N'ADMINSYSTEM@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEAVKsb/MY1Fr3UWxsx6gHpyaDhjAJBYScaLFgf6oJw3xFK+h6khWlD+44hxk8DfKeQ==', N'J6VIFX65673YZ7G6M4B4AA64FAZVOOPP', N'514d9d57-db29-4f26-964a-b0b8dfe7e1b4', N'0795896039', 0, 1, NULL, 1, 0, N'ApplicationUser', N'quản trị', N'hệ thống', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695035502/08f3f05d-b266-4c3e-99b4-12c0d926a8d3_profile_picture.jpg')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'0f7174f5-348a-4977-947f-343ec34b40d9', N'ronaldo@yahoo.commmmm', N'RONALDO@YAHOO.COMMMMM', N'ronaldo@gmail.com', N'RONALDO@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEN76jA2q7L7WALjq9hQJYUyWF2kF61e5UDGAxm/k+S++WTf26HvDcRXpgh0MmiFN2g==', N'T2D7TU7A672EVFLJWNTMFVTDIK2P3WXQ', N'da2ba251-8f0f-4cbf-bee0-5e183dec09ec', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'ronando', N'critiano', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695013819/0f7174f5-348a-4977-947f-343ec34b40d9_profile_picture.png')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'111ae82a-7ef0-4811-a785-17d6becfe7f4', N'nhanvienlancuoi@gmail.com', N'NHANVIENLANCUOI@GMAIL.COM', N'nhanvienlancuoi@gmail.com', N'NHANVIENLANCUOI@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKEVE6Aazezby+JOIatKkI18bRMiJvuEu/OgLLnGBGdxKh+jtQirHhLWI9CcZMTrPw==', N'BSX3T7BETOJWY2IM2MTJWB7ZZXZNP7MR', N'51fc0218-3ee9-4ad1-8849-d542b2fd1f67', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'met', N'moi', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'1749679f-ba46-4779-af57-23b10df21cb5', N'user2@yahoo.com', N'USER2@YAHOO.COM', N'user2@gmail.com', N'USER2@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEJGcYz9nWh4JBKw7MdmwS62uuoAilnlKaBQ2uf2PqXRWrsdHaEp7iabgc3Bjk4bwEA==', N'Y7C5MCSENFWZOOBUTFWMJFOIGYDDJL5V', N'462ca808-1adf-4725-977e-e64fa93c07cc', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'nguoi', N'dung2', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695012850/1749679f-ba46-4779-af57-23b10df21cb5_profile_picture.png')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'17a330bf-fdd2-449a-8d34-e3cbc3bb96f6', N'luffy@gmail.com', N'LUFFY@GMAIL.COM', N'luffy@gmail.com', N'LUFFY@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEA4RejtvZV3WEcZEVlLt6ftOjQRazfNVXaXgODhi4FgREJvdLEe8JaRGnqDwk+DxIw==', N'HEFU3HTOZFEL3OVK43PQ575RTGR3FFAH', N'1a96bf6f-1739-42b8-a955-a7d4b96ebbb8', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'luffy', N'mokey D.', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'2417089b-5a07-41a8-bd0e-45f5bc23a8ee', N'employeeweb@gmail.com', N'EMPLOYEEWEB@GMAIL.COM', N'employeeweb@gmail.com', N'EMPLOYEEWEB@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAECQCj5daK0G37STCvtdFkJDgmAXpRDz4PvDCtKdSWWilbCprTngr4ARJwb9SUfdNDg==', N'3JM3QRVMZITOUJMA4ZE7MTPEXGGWNFFD', N'dfd94e32-5f15-4f1f-a3cb-d8f1626c9682', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'nhan', N'vien', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'3e25b049-b2e8-4054-bd62-6984bcd745b0', N'employee@gmail.com', N'EMPLOYEE@GMAIL.COM', N'employee@gmail.com', N'EMPLOYEE@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENLhvsu2DCP1g4u4VOyKMl66WPPuXYKV9rxVAitGo0i1hsZEzwz0Zy8C+TDAFibq3w==', N'FZ37VPE675I6D664WVJGHZG7ODEEIIZL', N'39ba3092-4e96-4062-95bd-1f65cfb69dff', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'employee', N'employee', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'4c5328dc-324d-49c9-b187-8233bdca3da2', N'1@gmail.com', N'1@GMAIL.COM', N'1@gmail.com', N'1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJUXrm239qeZde9OyMq0sRXjIlvhg//JsKpx2Nl10Eq16EyJNZdhag6SPUchLlRCpw==', N'UOOZAKISLOHBN2DANL6NN3KEW5MVZONG', N'ee2c7ad1-7c16-4005-af4b-04077d62f8a0', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'1', N'1', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'520e6312-5711-4b79-ac32-35eb2fdb81b5', N'administrator@yahoo.com.vn', N'ADMINISTRATOR@YAHOO.COM.VN', N'administrator@yahoo.com.vn', N'ADMINISTRATOR@YAHOO.COM.VN', 1, N'AQAAAAEAACcQAAAAECUuINEhkMj56QwYMFnAxBGzwsyJroYEN9wk0oa5Pusgx9YJ7kbGwP7ZzvbLNw57Gw==', N'F6CHPAQZUVWKBLHIEL7PIE7CEY6YM5WL', N'2c8a1a49-e52f-43e7-a2b2-fa23c0c473a7', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'quan tri', N'he thong', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695192545/520e6312-5711-4b79-ac32-35eb2fdb81b5_profile_picture.jpg')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'58309b46-912e-4f42-a5d4-44b059027a50', N'123@gmail.com', N'123@GMAIL.COM', N'123@gmail.com', N'123@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEKkxHClU5xIvqs2rwQDiczy3s+tNJKFzbB3/9ZdELykCGiYTN6ayM8dCipyNNcUOlA==', N'ZMQ75L35LVZE474T6HTY37AYGKQYATLN', N'007c1cfa-335a-4c33-8259-a4a9e339eed3', N'001203021301203', 0, 0, NULL, 1, 0, N'ApplicationUser', N'dasd', N'dasd', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'6a28697d-58b0-4085-8b02-982ee9aca52d', N'haha@gmail.com', N'HAHA@GMAIL.COM', N'haha@gmail.com', N'HAHA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEClF6H3bp6CuO3V/aS23uAG0WRdZ0gFOoH+772zZC5aMGWYPhZMwQMZdu4ulK+l6Xg==', N'W32NSOHBDACZ2D245SS5HF7P2ETH4UHU', N'a97839f4-881d-4cbc-b7c7-f44ed8b7b5e9', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'haha', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'6b4e19e6-2fb4-43ee-b5f0-3c812672a264', N'2051012102tai@ou.edu.vn', N'2051012102TAI@OU.EDU.VN', N'2051012102tai@ou.edu.vn', N'2051012102TAI@OU.EDU.VN', 1, NULL, N'YZUPU727CDCF36M2QU4UAQEGRKJAIMKS', N'1aa64b5e-8b90-4555-b689-9c5792e5f5e5', N'2405', 0, 0, NULL, 1, 0, N'ApplicationUser', N'minh', N'tai', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695178435/6b4e19e6-2fb4-43ee-b5f0-3c812672a264_profile_picture.jpg')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'78ad864d-58bc-4e49-b4c3-a9aa73f9ffd0', N'masteryi@yahoo.com', N'MASTERYI@YAHOO.COM', N'masteryi@yahoo.com', N'MASTERYI@YAHOO.COM', 0, N'AQAAAAEAACcQAAAAEHvE7OK9y00YanWo5EL8bAhJqVJ2yYM+3Ytg2aAOROKgJGedv0agIb/1uQmPMtPACA==', N'XJC5VXB3GFZQVRIHGYLCL6RBX7V33PXL', N'ac741faf-6d5b-44ab-a77e-814fbdab145c', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'yi', N'master', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'7970b247-1bb9-468d-9ee7-e582e7c680c8', N'nhanvien@gmail.com', N'NHANVIEN@GMAIL.COM', N'nhanvien@gmail.com', N'NHANVIEN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDopn7/zplEdmYfsL5pBITi/mtkBPbEZhDiW4Si1frKAEnz9Ft1hkZucYP2oFXg8+g==', N'76UWL4MXNEKP7GUL6V2ECTAUMNQ34V6T', N'53498e1a-87ca-46de-979d-24dfd86a21ec', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'nhan', N'vien', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'7a47433b-f82d-45a3-9114-ff0064042ca6', N'quantri@gmail.com', N'QUANTRI@GMAIL.COM', N'quantri@gmail.com', N'QUANTRI@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEO5STDh7frwu6qLzme6US5hfhTUWzhGqO7ouJlgNNoaCo6WEnoBVfkT2X6WFN8shHw==', N'OFXXC2AH3RLBHUUDJDPELVTBNDWYIO6P', N'aa1dbe04-a703-42b9-a554-9715020408e1', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'admin', N'admin', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'7ad410b1-ca0f-4ab4-8700-47d3f04ec94c', N'testdui@gmail.com', N'TESTDUI@GMAIL.COM', N'testdui@gmail.com', N'TESTDUI@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEI+/9hUjZaJGiHJcOeIXZTBUgs9L156kFVY1Mcy6mZUNj+CPzB+Ivce/2htMY7r58w==', N'UWFUD6DEVWEA3HPEWPS4TIUGWCCE7HES', N'48899c0f-4062-404d-9ddc-3dabb98894d6', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'test', N'duide', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'825f8cfe-5f33-457f-9a3e-3f2e38c014a8', N'roleadmin@gmail.com', N'ROLEADMIN@GMAIL.COM', N'roleadmin@gmail.com', N'ROLEADMIN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEMdkzTojEXHC++xMfaBS+34FJTqqD9QdJ/GU27N33prlAKUmHlIjFusCJV7hmkaDxA==', N'B65NDV5A4HHJG7VIJYQILUVLSSXQC4OI', N'ff31f22c-bd61-406d-8ef2-21c01c551782', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'admin', N'admin', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695019890/825f8cfe-5f33-457f-9a3e-3f2e38c014a8_profile_picture.jpg')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'84c6fb6b-461e-4d21-aa9d-afff282d8b51', N'nhanvien1@gmail.com', N'NHANVIEN1@GMAIL.COM', N'nhanvien1@gmail.com', N'NHANVIEN1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENTmV5JeKfm02kEO8t7GXerTmNF+9re3ZC0hAbEHWsOkBKB6UWUxf5jrJCWylAksfA==', N'A3YWU24MYTBWVSY6KFZWAUG5QBS2GWGY', N'55b7647e-dfc3-4ad9-a310-1a81430cc089', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'gaooo', N'siu nhan', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'8b9f3679-46b8-4026-ac01-f89642b1bcd9', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHLoULOikK7KfkFrv/vS9nMp5LgZqCuXQAQieIZ4saVON66bNAwnEUvxLe33fauP+w==', N'7USQ7IRS6PI5ZNKKJXOQFOFMTDKG4KX2', N'74705825-84af-4aac-b351-06c19ad17982', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'admin', N'admin', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'8e0490ed-0b5d-4d18-bb1f-b8f74cc5e979', N'metnha@gmail.com', N'METNHA@GMAIL.COM', N'metnha@gmail.com', N'METNHA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEG1p76ysUzMF/NUaX10d3s1D9IGICzHNUwWKZI90pv4uaJkg5jdmqAZgCSE1sX2Wfg==', N'MJRKXU7WJGEVUP5CA2DDWWQDF6P5UUNA', N'26f1579a-3741-4527-86c9-8ee405b34fa6', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'dmka', N'dnas', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'a2d81466-5d00-456f-955b-b80273835919', N'laptrinhduide@gmail.com', N'LAPTRINHDUIDE@GMAIL.COM', N'laptrinhduide@gmail.com', N'LAPTRINHDUIDE@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEGkaGgQvCqHb82ZZiz0UPAp0EHhpVmDP48xjzNNBGwYkeOLb7Y6Z9BdVt2QZ4rdFGQ==', N'PVSSE7RC4IHROBP5KQ3ZP4NOUL3FADPX', N'35cd60a4-8876-4a4f-8d38-ad3a53f4039e', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'da', N'dahs', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695006212/a2d81466-5d00-456f-955b-b80273835919_profile_picture.jpg')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'ab2874d4-58f1-4e00-b824-f533fe7445c8', N'user1@gmail.com', N'USER1@GMAIL.COM', N'user1@gmail.com', N'USER1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMM1ltER623tcU1DXhVpM74q0hgevqs9uced/Zag4SGCPj02bRnw9Ez/hVdGQhaepQ==', N'TSJ7YWP7LNLAHXGNSTK3Z3HIS2EWBRWA', N'd09b4926-333b-4512-993f-d3b1fd5d357b', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'nguoi', N'dung', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695008039/ab2874d4-58f1-4e00-b824-f533fe7445c8_profile_picture.png')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'bff8c152-e9c6-42ff-8563-fb4ace6c191d', N'leesinvoanhcuc@gmail.com', N'LEESINVOANHCUC@GMAIL.COM', N'leesinvoanhcuc@gmail.com', N'LEESINVOANHCUC@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEEapalToeaUe6wRH2i2fHISMqtZ4ctjiwRSoIIPXuMWK2BYnbxCV+K/MbCb4dQ2STg==', N'TVZP7ZQATI6DY5GOHQU6B7KFQIULYLZD', N'183c8761-d698-441f-8331-89e6ae0cabc6', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'lee', N'sin', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'c0e5e869-3331-4731-98b2-9cf7f32f4e21', N'taiusoica123@gmail.com', N'TAIUSOICA123@GMAIL.COM', N'taiusoica123@gmail.com', N'TAIUSOICA123@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEIK8uP3sgPKjpDHFkA6MCqi8ZQZ+sBXt5o6EgnK38rpOYpmnSag7FPi6RWMsi/xb5A==', N'GALT7N3QJRCPL7G3D5C4CEJECIKBAO3Y', N'67e7b467-0adc-4378-8a74-fc1119b94597', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'dasd', N'đádasdsa', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'ca0cb6e1-f7ea-429e-896c-ea1cfd3410ab', N'nhienviennha@gmail.com', N'NHIENVIENNHA@GMAIL.COM', N'nhienviennha@gmail.com', N'NHIENVIENNHA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAED4DTrU2K8gJnMbXdJhCyzExe/asvE3S8QDe87G77O4KwAWHwDxdNg90eBPhEIzbKQ==', N'AMBJRC7EZCIWOZYFPWDNOAZUE2ZBCT6P', N'ec36c635-55f5-4f20-93df-19ba938a3170', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'adasd', N'dasda', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'd7966791-1677-4608-9ad8-464ce49b152d', N'minhtai0524@gmail.com', N'MINHTAI0524@GMAIL.COM', N'minhtai0524@gmail.com', N'MINHTAI0524@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAECiishqe3sYgw6JAnvyAOUeH/aPGm26ZI5S+GqgQ1GqAwZ/eEjnYUdKwT7BJ6/s/TQ==', N'OUMDTYEWWMI46NYBAPGQ5QOXXIL2YQPR', N'bc1865b6-405d-4ccf-8a74-729d99084530', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'tai', N'minh', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695149455/d7966791-1677-4608-9ad8-464ce49b152d_profile_picture.jpg')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'dcd59aa9-bb5b-4898-9d27-8da10f772526', N'minhtai@gmail.com', N'MINHTAI@GMAIL.COM', N'minhtai@gmail.com', N'MINHTAI@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHJzo8VaiX88Lqgs8U9cfFifDHGnGEG4MIZKHoNYeP9klVA6S4wWGC/iFWONwY1BDw==', N'DC3OBYGXTQEG6NLTWKIDF7GDYX2MA4LV', N'e85c8e0b-54df-48d1-a029-8ca1c65b674e', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'tai', N'minh', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'e031598c-1934-4d6c-bdfb-890b8a71a587', N'123456@gmail.com', N'123456@GMAIL.COM', N'123456@gmail.com', N'123456@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEAP+QqcvlHCtdoSbAPzgpAHVOH0W6E3s5OjqUu4lfQT06JYHmyXy+H8K7JS9wZQKuQ==', N'TNJQ7QFLLZLOIP2XU42INV6LVIIORAXO', N'2445c3ff-64cf-46eb-a960-d4b617f9c152', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'adsd', N'dasd', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'e05483da-00cc-4e76-a987-e07b9a354802', N'tai@yahoo.com', N'TAI@YAHOO.COM', N'tai@yahoo.com', N'TAI@YAHOO.COM', 0, N'AQAAAAEAACcQAAAAEHPA6EwzJ//lCVswyYbaLzlrqXA82/6/LW2s3N8BAv+ENAKiZb3A0uxPAPr3nVumMA==', N'TJMXCAK3ME22VVZQNHPOCRDR5MR2MQGJ', N'3fb2ab0e-b781-42cd-ac97-949efeeafb30', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'tai', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'e82addd3-05ce-4891-a1a1-119caa481b0f', N'mt2405@gmail.com', N'MT2405@GMAIL.COM', N'mt2405@gmail.com', N'MT2405@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAW3BMF0j6f5+OrUK7SZxfQzl1xIxm68zlKkQ8eAysCCs5Ge79Fn24MJleUrko0efg==', N'KTKHAVKONLJIX3IMQD5P4R3I4GDIHAEM', N'72c6f292-af8c-43b8-8019-bbf5c70f9b5f', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'minh', N'tai', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FirstName], [LastName], [Avatar]) VALUES (N'fc1f5777-0aa8-4e20-920a-a048e2eb4c1c', N'lytiulong@gmail.com', N'LYTIULONG@GMAIL.COM', N'lytiulong@gmail.com', N'LYTIULONG@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEPWi+uxrqwjA0FrXiXuzM4ohyOoGPS51GgHocFHLxEG/H/9PoPmjasrvNGyWOE1tcA==', N'2TMLDQNH4BWNPQK4EKYN4LQZ5VTHP7TT', N'16336d7b-40d3-4a57-9147-3e1d661bc5b5', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'Lý', N'Long', N'https://res.cloudinary.com/dl3hvap4a/image/upload/v1695020410/fc1f5777-0aa8-4e20-920a-a048e2eb4c1c_profile_picture.jpg')
GO
INSERT [dbo].[AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value]) VALUES (N'08f3f05d-b266-4c3e-99b4-12c0d926a8d3', N'[AspNetUserStore]', N'AuthenticatorKey', N'DXCEHXIG4K7LUNXOPIM5JZUOYQEEIDHQ')
INSERT [dbo].[AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value]) VALUES (N'08f3f05d-b266-4c3e-99b4-12c0d926a8d3', N'[AspNetUserStore]', N'RecoveryCodes', N'c3bae430;b33ead73;a79ce501;961438c8;e2a4043f;d6c80176;aa9e8793;2088799a;21af989b;eac0b84f')
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Mobile], [Email], [Address], [Avatar]) VALUES (1, N'lee', N'sin', N'0123123', N'bacthaysongam@gmail.com', N'', N'')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[Branch] ADD  DEFAULT (N'') FOR [Description]
GO
ALTER TABLE [dbo].[Employee] ADD  DEFAULT (N'') FOR [Address]
GO
ALTER TABLE [dbo].[Employee] ADD  DEFAULT (N'') FOR [Avatar]
GO
ALTER TABLE [dbo].[ServiceEntity] ADD  DEFAULT ((0)) FOR [CategoryId]
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
ALTER TABLE [dbo].[ServiceEntity]  WITH CHECK ADD  CONSTRAINT [FK_ServiceEntity_ServiceCategory_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[ServiceCategory] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ServiceEntity] CHECK CONSTRAINT [FK_ServiceEntity_ServiceCategory_CategoryId]
GO
