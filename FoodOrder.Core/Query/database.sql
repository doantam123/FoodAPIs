USE [FoodAPI]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/23/2024 1:01:41 AM ******/
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
/****** Object:  Table [dbo].[Address]    Script Date: 6/23/2024 1:01:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AppUserID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[AddressString] [nvarchar](max) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[TimeDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppRole]    Script Date: 6/23/2024 1:01:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppRole](
	[Id] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](200) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[TimeDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_AppRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppRoleClaim]    Script Date: 6/23/2024 1:01:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppRoleClaim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppRoleClaim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUser]    Script Date: 6/23/2024 1:01:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUser](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[DateOfBirth] [datetime2](7) NOT NULL,
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
	[TimeCreateJWT] [datetime2](7) NOT NULL,
	[RefreshToken] [nvarchar](max) NULL,
	[RefreshTokenExpire] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[TimeDeleted] [datetime2](7) NULL,
	[DeviceToken] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserClaim]    Script Date: 6/23/2024 1:01:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserClaim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserClaim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserLogin]    Script Date: 6/23/2024 1:01:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserLogin](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[ProviderKey] [nvarchar](max) NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserLogin] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserRole]    Script Date: 6/23/2024 1:01:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserRole](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AppUserRole] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserToken]    Script Date: 6/23/2024 1:01:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserToken](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserToken] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 6/23/2024 1:01:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AppUserId] [uniqueidentifier] NOT NULL,
	[FoodID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[FoodID] ASC,
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/23/2024 1:01:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](300) NOT NULL,
	[ImagePath] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[TimeDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Food]    Script Date: 6/23/2024 1:01:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [float] NOT NULL,
	[Count] [int] NOT NULL,
	[ImagePath] [nvarchar](max) NULL,
	[SaleCampaignID] [int] NULL,
	[IsDeleted] [bit] NOT NULL,
	[TimeDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_Food] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FoodCategory]    Script Date: 6/23/2024 1:01:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodCategory](
	[FoodID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[TimeDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_FoodCategory] PRIMARY KEY CLUSTERED 
(
	[FoodID] ASC,
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 6/23/2024 1:01:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[TimeCreated] [datetime2](7) NOT NULL,
	[Type] [int] NOT NULL,
	[UserReceived] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[TimeDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_Notification] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 6/23/2024 1:01:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AppUserID] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[IsPaid] [bit] NOT NULL,
	[DatePaid] [datetime2](7) NULL,
	[OrderStatusID] [int] NOT NULL,
	[PromotionID] [int] NULL,
	[PromotionAmount] [float] NULL,
	[AddressName] [nvarchar](max) NOT NULL,
	[AddressString] [nvarchar](max) NOT NULL,
	[SaleCampaignID] [int] NULL,
	[FinalTotalPrice] [float] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[TimeDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 6/23/2024 1:01:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderID] [int] NOT NULL,
	[FoodID] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[SaleCampaignID] [int] NULL,
	[SalePercent] [real] NULL,
	[IsDeleted] [bit] NOT NULL,
	[TimeDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[FoodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 6/23/2024 1:01:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[PNBody] [nvarchar](max) NULL,
	[PNTitle] [nvarchar](max) NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 6/23/2024 1:01:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Desciption] [nvarchar](300) NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[UseTimes] [int] NOT NULL,
	[Percent] [real] NOT NULL,
	[Enabled] [bit] NOT NULL,
	[Max] [float] NOT NULL,
	[MinPrice] [float] NOT NULL,
	[IsGlobal] [bit] NOT NULL,
	[Priority] [int] NOT NULL,
	[ImagePath] [nvarchar](max) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[TimeDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_Promotion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 6/23/2024 1:01:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[AppUserId] [uniqueidentifier] NULL,
	[FoodID] [int] NOT NULL,
	[Star] [int] NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[TimeCreate] [datetime2](7) NOT NULL,
	[OrderID] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[TimeDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_Rating] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[FoodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleCampaign]    Script Date: 6/23/2024 1:01:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleCampaign](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Desciption] [nvarchar](max) NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[Percent] [real] NOT NULL,
	[Enabled] [bit] NOT NULL,
	[Priority] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[TimeDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_SaleCampaign] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleCampaignFood]    Script Date: 6/23/2024 1:01:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleCampaignFood](
	[FoodID] [int] NOT NULL,
	[SaleCampaignID] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[TimeDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_SaleCampaignFood] PRIMARY KEY CLUSTERED 
(
	[FoodID] ASC,
	[SaleCampaignID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210317162535_Initial', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210317164606_CorrectTableName', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210318161324_Data seeding', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210318162332_Add Promotion amount for order', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210318165558_AddImageTable', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210514092434_ImageDefault', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210515155710_AddImagePathToFood', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210519175021_add_image_for_category', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210520160516_Add_address_table', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210520161027_Remove_old_address_column_in_AppUser_table', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210521145045_Add_Address_Info_to_order', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210522145535_Add_Notification', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210527105710_Add_Promotion_Operation_Condition', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210527112115_remove_promotions_operation_config', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210527150457_Add_List_Food_To_Promotion', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210528084523_Add_priority_for_promotion', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210529083724_Saparate_Promotion_and_SaleCampaign', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210531020837_Add_Sale_campaign_for_orderDetail', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210531025923_Use_double_for_currency', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210601111511_Add_Rating_ID', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210601134505_One_rating_per_order_per_food', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210601141758_Update_Rating_Table_Remove_UserID', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210601165006_Update_Order_Status', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210603131818_Add_Manager_role', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210603133010_Fix_Password_hashing_when_seeding', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210608154150_Add_FinalPrice_column_to_Order_for_statistic_Purpose', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210610104341_Add_timeCreateJWT_to_user_to_validate_jwt', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210611052700_ReplaceFirstName_Lastname_with_Name', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210626070923_Add_RefreshToken_and_RefreshTokenExpire', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210709085251_Add image to promotion', N'5.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210712074755_Add_Delete_Field_For_Entity', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210717123210_Add_PN_Info_For_OrderStatus', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210717131819_Add_DeviceToken_To_User', N'5.0.7')
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([ID], [AppUserID], [Name], [AddressString], [IsDeleted], [TimeDeleted]) VALUES (1, N'5d597675-8179-4575-7872-08d90b25fb90', N'Ký túc xá', N'140/11 Đường Bình Quới', 0, NULL)
INSERT [dbo].[Address] ([ID], [AppUserID], [Name], [AddressString], [IsDeleted], [TimeDeleted]) VALUES (2, N'5d597675-8179-4575-7872-08d90b25fb90', N'Nhà', N'Ký túc xá khu B DHQG', 0, NULL)
INSERT [dbo].[Address] ([ID], [AppUserID], [Name], [AddressString], [IsDeleted], [TimeDeleted]) VALUES (14, N'5d597675-8179-4575-7872-08d90b25fb90', N'test', N'test', 0, NULL)
INSERT [dbo].[Address] ([ID], [AppUserID], [Name], [AddressString], [IsDeleted], [TimeDeleted]) VALUES (15, N'77cc3017-42fa-44f0-dae7-08d9365953c4', N'hoàng phong sang', N'620 đỗ xuân hợp', 0, NULL)
INSERT [dbo].[Address] ([ID], [AppUserID], [Name], [AddressString], [IsDeleted], [TimeDeleted]) VALUES (16, N'3a418542-eddd-407d-dae8-08d9365953c4', N'hoàng long', N'123 tân bình, quận 9', 0, NULL)
INSERT [dbo].[Address] ([ID], [AppUserID], [Name], [AddressString], [IsDeleted], [TimeDeleted]) VALUES (17, N'2594afe6-daf1-4bfc-94a8-08d92c06723d', N'nhà', N'140/11 Bình Quới', 0, NULL)
INSERT [dbo].[Address] ([ID], [AppUserID], [Name], [AddressString], [IsDeleted], [TimeDeleted]) VALUES (18, N'bfa9a675-be59-49eb-7711-08d9466da975', N'nhà', N'phú lộc', 0, NULL)
INSERT [dbo].[Address] ([ID], [AppUserID], [Name], [AddressString], [IsDeleted], [TimeDeleted]) VALUES (19, N'bcb9bc68-7548-476c-27c9-08d946853436', N'nhà', N'123 long xuân, cam ranh', 0, NULL)
INSERT [dbo].[Address] ([ID], [AppUserID], [Name], [AddressString], [IsDeleted], [TimeDeleted]) VALUES (20, N'4a2baf8a-1212-4244-7f04-08dc53fc63ba', N'khoa', N'khoa', 1, CAST(N'2024-04-05T13:52:02.9186704' AS DateTime2))
INSERT [dbo].[Address] ([ID], [AppUserID], [Name], [AddressString], [IsDeleted], [TimeDeleted]) VALUES (21, N'4a2baf8a-1212-4244-7f04-08dc53fc63ba', N'dang khoa', N'246 le thi hoa', 1, CAST(N'2024-04-05T13:52:04.2912100' AS DateTime2))
INSERT [dbo].[Address] ([ID], [AppUserID], [Name], [AddressString], [IsDeleted], [TimeDeleted]) VALUES (22, N'4a2baf8a-1212-4244-7f04-08dc53fc63ba', N'dfg', N'dfg', 0, NULL)
INSERT [dbo].[Address] ([ID], [AppUserID], [Name], [AddressString], [IsDeleted], [TimeDeleted]) VALUES (23, N'31c13439-369a-4fa9-7724-08dc09eb2512', N'Trọng Nghĩa', N'Hốc Môn', 0, NULL)
INSERT [dbo].[Address] ([ID], [AppUserID], [Name], [AddressString], [IsDeleted], [TimeDeleted]) VALUES (24, N'4a2baf8a-1212-4244-7f04-08dc53fc63ba', N'nguyen dang khoa', N'so 246, le thi hoa, phuiong binh chieu, quan thu duc, thanh pho ho chi minh', 0, NULL)
INSERT [dbo].[Address] ([ID], [AppUserID], [Name], [AddressString], [IsDeleted], [TimeDeleted]) VALUES (25, N'31c13439-369a-4fa9-7724-08dc09eb2512', N'Khoa', N'Sư Vạn Hạnh', 0, NULL)
INSERT [dbo].[Address] ([ID], [AppUserID], [Name], [AddressString], [IsDeleted], [TimeDeleted]) VALUES (26, N'ad96709a-d17d-4ef4-c90e-08dc0a03f7cf', N'Trọng Nghĩa ', N'Hóc Môn', 0, NULL)
INSERT [dbo].[Address] ([ID], [AppUserID], [Name], [AddressString], [IsDeleted], [TimeDeleted]) VALUES (27, N'ad96709a-d17d-4ef4-c90e-08dc0a03f7cf', N'Đăng Khoa', N'Sư Vạn Hạnh', 0, NULL)
INSERT [dbo].[Address] ([ID], [AppUserID], [Name], [AddressString], [IsDeleted], [TimeDeleted]) VALUES (28, N'a6afd775-4364-4f88-7a52-08dc55b7143c', N'Trọng Nghĩa', N'Sư Vạn Hạnh ', 0, NULL)
INSERT [dbo].[Address] ([ID], [AppUserID], [Name], [AddressString], [IsDeleted], [TimeDeleted]) VALUES (29, N'2227c447-6b88-49fd-7a54-08dc55b7143c', N'Trọng Nghĩa ', N'Hốc Môn', 0, NULL)
INSERT [dbo].[Address] ([ID], [AppUserID], [Name], [AddressString], [IsDeleted], [TimeDeleted]) VALUES (30, N'2227c447-6b88-49fd-7a54-08dc55b7143c', N'Đăng Khoa', N'Sư Vạn Hạnh', 0, NULL)
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
INSERT [dbo].[AppRole] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp], [IsDeleted], [TimeDeleted]) VALUES (N'74d17d8b-3f91-4d3a-893f-09b4e51e3834', N'This is User role.', N'user', N'USER', N'aecd1b7f-6599-48f1-8063-5f3d55e6647c', 0, NULL)
INSERT [dbo].[AppRole] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp], [IsDeleted], [TimeDeleted]) VALUES (N'1267bf30-8eea-4370-bbcd-12f74e29c656', N'This is Manager role.', N'manager', N'MANAGER', N'5cdb4e12-e83f-417d-8338-1ef96c899c03', 0, NULL)
INSERT [dbo].[AppRole] ([Id], [Description], [Name], [NormalizedName], [ConcurrencyStamp], [IsDeleted], [TimeDeleted]) VALUES (N'b9e08f48-883c-42dc-a700-da5cf1d81aa3', N'This is Admintrator role.', N'admin', N'ADMIN', N'9d481658-883d-46f6-b85c-b736763136a0', 0, NULL)
GO
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'cb3e2dbe-bcfa-482f-e070-08d90b22d283', N'Minh Hieu', CAST(N'2021-04-04T00:00:00.0000000' AS DateTime2), N'admin', N'ADMIN', N'quang@gmail.com', N'QUANG@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFWjnw0TX6ppGIXyHOcLi1Zwhod4Gd0RizSberxeLUDau6I2l2wk3Sc+Hij+1P7m5A==', N'CODK33HAJEEDGGAAM3RPO2SYTZENHL5A', N'0d064502-4465-448f-bf5b-1d3dc83ab2bd', NULL, 0, 0, CAST(N'1900-01-01T00:00:00.0000000+00:00' AS DateTimeOffset), 1, 0, CAST(N'2024-04-03T16:49:42.0541374' AS DateTime2), N'g1i9ZS0qe9VYn9MmNcPwJoM/EBLbG2SttEkVDumxvT8=', CAST(N'2024-04-03T18:49:42.0580559' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'dd292c53-6484-47fb-da8b-08d90b239691', N'Trang Ban', CAST(N'2021-04-29T00:00:00.0000000' AS DateTime2), N'quang.lienminh_f9efeb40-03f2-40fa-8a65-1889ccbea12f', N'QUANG.LIENMINH', N'quang.lienminh@gameloft.com', N'QUANG.LIENMINH@GAMELOFT.COM', 0, N'AQAAAAEAACcQAAAAEFWjnw0TX6ppGIXyHOcLi1Zwhod4Gd0RizSberxeLUDau6I2l2wk3Sc+Hij+1P7m5A==', N'D2LOCU2VAZDWIHZGGIYWANP7QLQANG5M', N'd4f59c0a-c593-46df-9170-3e114a04b547', NULL, 0, 0, NULL, 1, 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, CAST(N'2021-07-12T17:15:46.0284583' AS DateTime2), NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'5d597675-8179-4575-7872-08d90b25fb90', N'admin', CAST(N'2021-04-29T00:00:00.0000000' AS DateTime2), N'admin2', N'ADMIN2', N'quang@gmail.com', N'QUANG@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFWjnw0TX6ppGIXyHOcLi1Zwhod4Gd0RizSberxeLUDau6I2l2wk3Sc+Hij+1P7m5A==', N'YWGRVV7LEAW34TN6G4OBV3OIVACNYZRM', N'6a60ea8a-29fd-4d37-88f6-7a9614277de8', NULL, 0, 0, NULL, 1, 0, CAST(N'2021-07-14T06:14:19.9822862' AS DateTime2), N'QF3dLKcSG2eo5nuIMMkK/IjvACmbGwEZwQ87TMNFNWI=', CAST(N'2021-07-14T08:14:20.5199806' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'd102d641-a67f-462e-709d-08d90d51d53e', N'dung', CAST(N'2021-05-05T00:00:00.0000000' AS DateTime2), N'dung_3867247b-672d-41fb-ba9b-63a6a04d7808', N'DUNG', N'dung@gmail.com', N'DUNG@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFWjnw0TX6ppGIXyHOcLi1Zwhod4Gd0RizSberxeLUDau6I2l2wk3Sc+Hij+1P7m5A==', N'IMXLAGMD23O2BLQ667MQMH3GJIMCACL5', N'95ea9b2f-33e2-4d52-a548-352fc34287ca', NULL, 0, 0, NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, CAST(N'2021-07-12T17:15:27.2373234' AS DateTime2), NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'879239a7-f194-4d0d-4484-08d926a1a06c', N'grandma', CAST(N'2021-06-07T00:00:00.0000000' AS DateTime2), N'grandma_edccbc77-fb0f-40b2-b175-1135431133b2', N'GRANDMA', N'grandma@gmail.com', N'GRANDMA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFWjnw0TX6ppGIXyHOcLi1Zwhod4Gd0RizSberxeLUDau6I2l2wk3Sc+Hij+1P7m5A==', N'JOWQKQ2SEXXWH3XIDG3APPTANHPITFR2', N'113f22f9-b328-40e7-aab4-bd51e0925a99', NULL, 0, 0, NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, CAST(N'2021-07-12T17:15:52.0417742' AS DateTime2), NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'8cc76e82-270a-4aaf-e215-08d928271684', N'test2', CAST(N'2021-06-23T00:00:00.0000000' AS DateTime2), N'test2', N'TEST2', N'test2@test2.com', N'TEST2@TEST2.COM', 0, N'AQAAAAEAACcQAAAAEFWjnw0TX6ppGIXyHOcLi1Zwhod4Gd0RizSberxeLUDau6I2l2wk3Sc+Hij+1P7m5A==', N'ZQQKLPGNI3KGAFOORJWD4ZCS3D3SRSG4', N'f10f1bbc-84ce-4fbe-bbc4-f35831262376', NULL, 0, 0, NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'6edea615-d41f-4370-fb61-08d9298eedeb', N'manager', CAST(N'2021-06-15T00:00:00.0000000' AS DateTime2), N'manager', N'MANAGER', N'manager@gmail.com', N'MANAGER@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFWjnw0TX6ppGIXyHOcLi1Zwhod4Gd0RizSberxeLUDau6I2l2wk3Sc+Hij+1P7m5A==', N'KHQE6GOVC4JIBZ75ASHBUFUVB5WPLTIM', N'd7e1f1a1-87e0-4134-9fd3-8b897deea519', NULL, 0, 0, NULL, 1, 0, CAST(N'2024-06-22T17:57:01.3990815' AS DateTime2), N'5wfgsn0MhXYj3PaVWEnydyo5RB24tKXI5q99ULOBLT4=', CAST(N'2024-06-22T19:57:01.4139577' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'a79e3090-9cd5-461a-7489-08d92be5dcb8', N'Sin', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'096156120', N'096156120', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEFWjnw0TX6ppGIXyHOcLi1Zwhod4Gd0RizSberxeLUDau6I2l2wk3Sc+Hij+1P7m5A==', N'DNCQEGNT7MPTPYWCTGXL5W4FVY6GKRG4', N'0e5a9b6d-1a6e-4d57-a926-e4c6418039f6', NULL, 0, 0, NULL, 1, 0, CAST(N'2021-06-10T18:42:30.3634861' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'2594afe6-daf1-4bfc-94a8-08d92c06723d', N'Ban', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0123456789', N'0123456789', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEFWjnw0TX6ppGIXyHOcLi1Zwhod4Gd0RizSberxeLUDau6I2l2wk3Sc+Hij+1P7m5A==', N'2EGZRC2QDFLHEWO5LIJBIXRGCY2RRSRN', N'54b290c6-7978-46ad-8ac7-2080ae4f7de3', NULL, 0, 0, NULL, 1, 0, CAST(N'2021-07-13T17:09:23.5964803' AS DateTime2), N'ZowkUnCV+x4K26A6ahqp+akimZka0W3XJqlLQA7y8zQ=', CAST(N'2021-07-13T19:09:23.5984562' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'070b8c29-8460-4c39-0732-08d9363044b9', N'Ban', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'sang', N'SANG', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEFWjnw0TX6ppGIXyHOcLi1Zwhod4Gd0RizSberxeLUDau6I2l2wk3Sc+Hij+1P7m5A==', N'DW7BZ6KKBJ6TUUQ4277HSI3SKEZQS6BY', N'64345d9e-1f85-4357-b7c8-675d5e81850e', NULL, 0, 0, NULL, 1, 0, CAST(N'2021-06-23T17:19:47.1486616' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'77cc3017-42fa-44f0-dae7-08d9365953c4', N'Tam', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0392131844_978be6c9-2d5f-406b-9bc5-aedcef02e8fc', N'0392131844', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEFWjnw0TX6ppGIXyHOcLi1Zwhod4Gd0RizSberxeLUDau6I2l2wk3Sc+Hij+1P7m5A==', N'TIFT23WU4YTYW3K2VIGB4ETSZGYXHHWU', N'9dd308d8-eb78-449d-9e55-edcabba2e1a0', NULL, 0, 0, NULL, 1, 0, CAST(N'2021-06-24T21:21:48.2868293' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, CAST(N'2021-07-12T16:15:35.0870417' AS DateTime2), NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'3a418542-eddd-407d-dae8-08d9365953c4', N'Đoàn Tâm', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0583331528', N'0583331529', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEFWjnw0TX6ppGIXyHOcLi1Zwhod4Gd0RizSberxeLUDau6I2l2wk3Sc+Hij+1P7m5A==', N'IQTWYK6MEBRCJ5RJ34F2AWZO2DQPTBTV', N'4fe152e7-c06b-4958-ada2-fac90448fec4', NULL, 0, 0, NULL, 1, 0, CAST(N'2021-07-14T04:56:38.2279629' AS DateTime2), N'wPciSWwNEVaz/xvH66ViaikyX7HGfq8c6hX5u3Zr/sY=', CAST(N'2021-07-14T06:56:38.2409121' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'511d19ba-0edf-4a8a-9e2f-08d944e74afe', N'admin3', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'admin3', N'ADMIN3', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEFWjnw0TX6ppGIXyHOcLi1Zwhod4Gd0RizSberxeLUDau6I2l2wk3Sc+Hij+1P7m5A==', N'MNXOWXAROQ27Z3P3MR77K63DTNUHMH7N', N'883dbc69-d16f-4813-9d40-50668176799d', NULL, 0, 0, NULL, 1, 0, CAST(N'2023-12-31T14:00:29.4843071' AS DateTime2), N'QE8jQxVrfquiUH6M61eWGJx9PbRX15jLQZZFYharCaE=', CAST(N'2023-12-31T16:00:29.4855476' AS DateTime2), 0, NULL, N'string')
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'bfa9a675-be59-49eb-7711-08d9466da975', N'Bân', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'099999999', N'099999999', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEFWjnw0TX6ppGIXyHOcLi1Zwhod4Gd0RizSberxeLUDau6I2l2wk3Sc+Hij+1P7m5A==', N'EI4MORKH4JWFV67B3EGU4CEK74KHZTBO', N'9a675155-d8bb-4cbe-8bc4-f2c21ac29956', NULL, 0, 0, NULL, 1, 0, CAST(N'2021-07-14T02:20:47.4507437' AS DateTime2), N'6o/9pVhIxNOCHTTlevmicn2U0fjS/5nEB7y0i80/6II=', CAST(N'2021-07-14T04:20:47.6192555' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'bcb9bc68-7548-476c-27c9-08d946853436', N'Bân Trang', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0392131881', N'0392131881', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEFWjnw0TX6ppGIXyHOcLi1Zwhod4Gd0RizSberxeLUDau6I2l2wk3Sc+Hij+1P7m5A==', N'SYTLB7X2A2FLLM7DHAJEM6TTDD52QTHO', N'e7d0371b-bba4-4d41-bad3-0150133917b6', NULL, 0, 0, NULL, 1, 0, CAST(N'2021-07-14T07:36:27.5565347' AS DateTime2), N'UmRrD2pM3JYjyOOGoXStC2rPh8a+QQx9Ry9/J1vmey0=', CAST(N'2021-07-14T09:36:28.1146292' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'31c13439-369a-4fa9-7724-08dc09eb2512', N'trangban', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0399177798', N'0399177798', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEFWjnw0TX6ppGIXyHOcLi1Zwhod4Gd0RizSberxeLUDau6I2l2wk3Sc+Hij+1P7m5A==', N'TIAITH7ZNQKROA7LGJ4ULZNVQHNZFSSV', N'ad68f555-50ea-47c8-8c7b-e366c60632e6', NULL, 0, 0, NULL, 1, 0, CAST(N'2024-04-12T17:26:53.4974778' AS DateTime2), N'SsAgr4V2Wa8q12T4Q1DYstiY6TAsfHnyJzV8q7N6L6g=', CAST(N'2024-04-12T19:26:53.4990620' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'ad96709a-d17d-4ef4-c90e-08dc0a03f7cf', N'Doan Tam', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0822223471', N'0822223471', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEFWjnw0TX6ppGIXyHOcLi1Zwhod4Gd0RizSberxeLUDau6I2l2wk3Sc+Hij+1P7m5A==', N'ZXXWDU2CRT3FVR7SVABKQUC234CQPJGE', N'34bf3b49-acce-4862-9e55-023f01f58974', NULL, 0, 0, NULL, 1, 0, CAST(N'2024-06-07T06:29:12.7309658' AS DateTime2), N'D6idZY94fZQysRcvqgF8nbXz5/akIXHGBzcaUlxzwSs=', CAST(N'2024-06-07T08:29:12.7327039' AS DateTime2), 0, NULL, N'string')
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'c2286ae4-bdbf-4354-c90f-08dc0a03f7cf', N'tam1', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0354784512', N'0354784512', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEFWjnw0TX6ppGIXyHOcLi1Zwhod4Gd0RizSberxeLUDau6I2l2wk3Sc+Hij+1P7m5A==', N'WFXNTBR2T5LBYSWEMLXSEBVM6NLX64LH', N'694a1964-45c4-48f1-9c43-583a31b1eb07', NULL, 0, 0, NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'55410532-5385-4637-c910-08dc0a03f7cf', N'tamne', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'035478453', N'035478453', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEFWjnw0TX6ppGIXyHOcLi1Zwhod4Gd0RizSberxeLUDau6I2l2wk3Sc+Hij+1P7m5A==', N'HVNXH2QSR7IZ7CJ7QA57GT322U5IYDQK', N'e85d80f8-3856-45af-9b93-1011a04b67c6', NULL, 0, 0, NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'a009f47f-0e8e-414d-7c15-08dc53d85d6b', N'Van', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0399177766', N'0399177766', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEFWjnw0TX6ppGIXyHOcLi1Zwhod4Gd0RizSberxeLUDau6I2l2wk3Sc+Hij+1P7m5A==', N'4FGIKSQHCW26LJWE3VYBEHMWL4F3SVP7', N'c43371f6-4223-4146-8d64-3483a285af8a', NULL, 0, 0, NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'543e5bae-ad9d-4ed1-7f02-08dc53fc63ba', N'trangban', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0933466058', N'0933466058', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEDSfuJYTMOeX2TdI7oeoBbk1vrl66O+CG5twpN4K3kRILT4zF220YhbmUH92WScmYw==', N'W7NJRRHALW2QHPBUNUXONPOXRKT6QCIS', N'abf65f5e-388b-4911-a5a7-6220e9b0af86', NULL, 0, 0, NULL, 1, 2, CAST(N'2024-04-04T05:09:53.8266212' AS DateTime2), N'sOdbopZPrgnn5evzP+2rUhRs8RgcHanMsBAqzFrnAVo=', CAST(N'2024-04-04T07:09:53.8319021' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'9383227f-e9b1-465e-7f03-08dc53fc63ba', N'nguyen', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0111111222', N'0111111222', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEIn7RRPGj734uNuE4IxbzpRGaH+PkS10ZFw2ewZPTS5UbKgUGAsUNz4Ivl0Hbh3Swg==', N'SDKJWF77EDJS6INEX3XYEVBYXH5ARMZ5', N'e867d81d-5287-46e8-92f5-062fff827891', NULL, 0, 0, NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'4a2baf8a-1212-4244-7f04-08dc53fc63ba', N'mainguyet', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0909090909', N'0909090909', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEIPsImmZPuT68FWiXCyym98mXaWWjFr5XwpFWqVxb7jvNH1PTV5c4VCaO6TWQH7r3Q==', N'YOMFXZYLWRQ46AGMQAINZDYBJANJ3ILY', N'7ade9e49-8368-4cd3-a8b9-6a066b90c130', NULL, 0, 0, NULL, 1, 0, CAST(N'2024-04-27T04:12:54.0871945' AS DateTime2), N'5XxeSyC+HfP7x3yd8qkC45UnV20aXnDwx1NGEjSjb7Y=', CAST(N'2024-04-27T06:12:54.0943522' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'1db37481-40eb-4778-7f05-08dc53fc63ba', N'vinhz', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0961883573', N'0961883573', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEGvncPpD7aXotPw/CrHtoCo76wj/tX8jaOxCqMCiWwaMyFCbaR898iUgb+HrKNOonw==', N'YUVCTBNAIVJ33C5SPRROQHXIXQWIQX2P', N'cdf3a358-964c-4fac-8591-9be49a5055c8', NULL, 0, 0, CAST(N'2024-04-05T21:29:57.1278851+00:00' AS DateTimeOffset), 1, 0, CAST(N'2024-04-05T06:35:25.4729541' AS DateTime2), N'MdaZBC1RswFlEUHE2IyY5PDP6RPKj0noMamPbQj4oa4=', CAST(N'2024-04-05T08:35:25.4745074' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'daf0ec75-d305-4fb1-7a4e-08dc55b7143c', N'vinhy', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0965871120', N'0965871120', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEJbrH0aobOVEHwnsSPvo7a7oLwmkcHDqXQkUQ/kJhd3VIMrasgs3c3dRVRNfA6hIlA==', N'MZSWV4TBUJGSDDGYKRUQECLRBCMUQGEA', N'c8519f25-1394-4302-9e21-b78aac6987d2', NULL, 0, 0, NULL, 1, 0, CAST(N'2024-04-05T21:42:16.5156892' AS DateTime2), N'CcJRQ9ykVEwpdgQLUTJ6glBOBNnzfbbqUrYkte/ZDEs=', CAST(N'2024-04-05T23:42:16.5170104' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'241dbab2-79cc-4459-7a4f-08dc55b7143c', N'Doan Tam H', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0499177798', N'0499177798', NULL, NULL, 0, N'AQAAAAEAACcQAAAAECVgnKbFu8pylaQpcmI2Sd++G7aqD8CE4Uj12565zRA5G0GkCFQGKjDiMCbvvOtrIg==', N'4NEMHIVJ2PSPLK4D3ZCGGFAUAHIWX3JX', N'd505fb9e-a2aa-4575-8e52-7a2f35acc205', NULL, 0, 0, NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'88f1a2aa-3a62-4517-7a50-08dc55b7143c', N'Huynh Tam', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0822223477', N'0822223477', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEEqy4wsOdOWOIJyJ/DlY/MK8SCYyv+OrEWCi2wBbozEXXUWIOCP+FRliq+Rw619m8w==', N'YP5HI2KHZSRSZK4FUDRNRS7PNJBIBVGJ', N'3b42a17e-2536-4c4e-8d99-ea8abd13a597', NULL, 0, 0, NULL, 1, 0, CAST(N'2024-04-27T04:21:55.9431472' AS DateTime2), N'gKFzlVZbGwuCi1Ygc/0//z2G3uv0zPpFWo3yqkhLX8U=', CAST(N'2024-04-27T06:21:55.9450422' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'4f835a47-9a08-4529-7a51-08dc55b7143c', N'Trọng Nghĩa', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0822223488', N'0822223488', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEPQyw1WPziHeWd5W/fQXLWRyuKT4EmmIME058k+nPvG3eHjsDzbjA1wNIh82W6upbA==', N'ZLKQ5TATN3GYUQVCGD2U4ZO567SP7TBI', N'7e668c3e-5a2b-4c10-8959-ed63a7649bc3', NULL, 0, 0, NULL, 1, 0, CAST(N'2024-04-27T04:23:07.4712080' AS DateTime2), N'qK8ne8gxIP28dYVp5bNChTluKNue2zksUat12p9Mpt0=', CAST(N'2024-04-27T06:23:07.4730779' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'a6afd775-4364-4f88-7a52-08dc55b7143c', N'Trọng Nghĩa', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0822223400', N'0822223400', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEFC31xDiK9calMJYCro+5lEQhaLbIaEnO1akuMSAe6dK9tetvfCa0kzYRM7PgHthJA==', N'7VYU2DJZLKH3AKLBTM3ZGJZUDJGCXRUW', N'44f251ec-3d7f-4a85-b1bb-ddd16ec0a2d1', NULL, 0, 0, NULL, 1, 0, CAST(N'2024-05-10T14:21:42.0671056' AS DateTime2), N'NRzT7VtaSv9ZpXfOWJ2AF64a75xF/LOdcmVjTQrC190=', CAST(N'2024-05-10T16:21:42.0683961' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'1b8d1d8c-a183-4a87-7a53-08dc55b7143c', N'Trọng Nghĩa', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0822223466', N'0822223466', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEPUHr5fjbiQyn9GCnIOzT3GVo8fW5U5dbCxpwERamQwR0M6otUnf3pG9lfuyTLfIDQ==', N'7NV5E5EMZM6FCWY2BD4WYUVMUS4GGE5W', N'8db8e0dc-7e30-4506-935a-627356b26bd6', NULL, 0, 0, NULL, 1, 0, CAST(N'2024-04-27T04:28:16.6181659' AS DateTime2), N'u+CmAK0GKu80UdzqJ9FLmMgGO9RuinIffRQtCl9JjIo=', CAST(N'2024-04-27T06:28:16.6197972' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'2227c447-6b88-49fd-7a54-08dc55b7143c', N'Trọng Nghĩa', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0822223456', N'0822223456', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEPMm/7KK492LIRabv10mKNHnvSHZ5JBsr2n7LMFMv73ia3RYBU50JxUuZXDJS/KgFA==', N'HYE4XXAJLNHRV5SDVOGRNTOR4O6WUDFP', N'0c03a94a-451a-44ee-bad3-bd295f463ab0', NULL, 0, 0, NULL, 1, 0, CAST(N'2024-04-27T04:29:56.5658776' AS DateTime2), N'xn78eBpmPJIUxg/NwZ5ugeEkJtcoD2nrx7wlnJXjrx8=', CAST(N'2024-04-27T06:29:56.5673883' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'1fd6aeac-ef16-41f1-7a55-08dc55b7143c', N'tuananhzip', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0345634561', N'0345634561', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEB43FqH6R9ksaCGSLJR/TBU/15CvYLl9br6qr/zw7EwZNE3UXT2DEz9i5e2fSyvXjw==', N'CWDUKVDEUUR3UVSEWJJ5EMA7WT3WDZ6T', N'0f147417-13c5-4e31-a125-d3896da2b561', NULL, 0, 0, CAST(N'2024-06-07T04:02:49.9665203+00:00' AS DateTimeOffset), 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'b7792a75-a7ad-4d77-7a56-08dc55b7143c', N'tuananhzippp', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0321321321', N'0321321321', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEF4Uh6PXN8GwI80KeyxW+GQgF6wtOXQx2Xu2NPZq3X23vW687NFulf/HEQ9VxVKp5g==', N'RBJOEDRXMXBC53GGN7BJ4RYWHBEQGWCV', N'784018e8-b90e-4a99-bf86-6bbca7f8d220', NULL, 0, 0, NULL, 1, 0, CAST(N'2024-06-07T04:19:22.3353708' AS DateTime2), N'xrSlROQnDUNVZTieb/7CoGM5PB4ft853fiV90X2rso4=', CAST(N'2024-06-07T06:19:22.3379482' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'a2a0557e-34a4-45ab-f852-08dc8f9e55ad', N'tam', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'123123123', N'123123123', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEOVRr5n5IutQWW4R0GHkIchOFweN3Jp0aUjvNZHweZdkOhiRy3Nm3BKw44cgGnVUKw==', N'NOM4IZTUA5RL5ELEHFRHGYFON4UI46Z4', N'1635ae10-897e-4496-a093-c2de21f8dcf4', NULL, 0, 0, NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'6ad4c43b-8114-45db-f853-08dc8f9e55ad', N'asdasd', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'123', N'123', NULL, NULL, 0, N'AQAAAAEAACcQAAAAENcA+QHhtjw2Ul1qiaEAp4Nv4tU/ykK5yxCrLk6SKcSeFkIBZV8hk2wMf5/G6eFo9Q==', N'HI3DVVPDGYUKXLIMJTIZRONTN75JHAQQ', N'2d86b8e9-dd7a-4708-ae49-bdf1aff75b2a', NULL, 0, 0, NULL, 1, 0, CAST(N'2024-06-22T17:36:30.3915151' AS DateTime2), N'M+Y6G0gBzn0VTPZwPM22X/vy0B8N/HDlkj8hGHW+IAI=', CAST(N'2024-06-22T19:36:30.3928933' AS DateTime2), 0, NULL, NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'daeb6f0d-eefe-4250-9ecd-28b3243eb684', N'Messi', CAST(N'1990-07-05T00:00:00.0000000' AS DateTime2), N'messi10_6d7112cf-1fb8-4a0e-86a8-3d31ab09135e', NULL, N'messi10@gmail.com', N'MESSI10@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFWjnw0TX6ppGIXyHOcLi1Zwhod4Gd0RizSberxeLUDau6I2l2wk3Sc+Hij+1P7m5A==', NULL, N'ae8e69c1-0d5d-49ce-9e1f-fd9429e0f094', N'+111111111', 0, 0, NULL, 0, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, CAST(N'2021-07-12T17:15:39.7058116' AS DateTime2), NULL)
INSERT [dbo].[AppUser] ([Id], [Name], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [TimeCreateJWT], [RefreshToken], [RefreshTokenExpire], [IsDeleted], [TimeDeleted], [DeviceToken]) VALUES (N'b4e253b2-756e-48b8-9c42-b5acb139bed4', N'Jame', CAST(N'1999-05-21T00:00:00.0000000' AS DateTime2), N'admin', NULL, N'jame@gmail.com', N'JAME@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFWjnw0TX6ppGIXyHOcLi1Zwhod4Gd0RizSberxeLUDau6I2l2wk3Sc+Hij+1P7m5A==', NULL, N'ae5cb6bc-2d0d-482a-8065-d6d7a8cbd211', N'+111111111', 0, 0, NULL, 0, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, NULL, NULL)
GO
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'cb3e2dbe-bcfa-482f-e070-08d90b22d283', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'dd292c53-6484-47fb-da8b-08d90b239691', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'd102d641-a67f-462e-709d-08d90d51d53e', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'879239a7-f194-4d0d-4484-08d926a1a06c', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'8cc76e82-270a-4aaf-e215-08d928271684', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'a79e3090-9cd5-461a-7489-08d92be5dcb8', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'2594afe6-daf1-4bfc-94a8-08d92c06723d', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'77cc3017-42fa-44f0-dae7-08d9365953c4', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'3a418542-eddd-407d-dae8-08d9365953c4', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'bfa9a675-be59-49eb-7711-08d9466da975', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'bcb9bc68-7548-476c-27c9-08d946853436', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'31c13439-369a-4fa9-7724-08dc09eb2512', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'ad96709a-d17d-4ef4-c90e-08dc0a03f7cf', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'c2286ae4-bdbf-4354-c90f-08dc0a03f7cf', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'55410532-5385-4637-c910-08dc0a03f7cf', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'a009f47f-0e8e-414d-7c15-08dc53d85d6b', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'543e5bae-ad9d-4ed1-7f02-08dc53fc63ba', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'9383227f-e9b1-465e-7f03-08dc53fc63ba', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'4a2baf8a-1212-4244-7f04-08dc53fc63ba', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'1db37481-40eb-4778-7f05-08dc53fc63ba', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'daf0ec75-d305-4fb1-7a4e-08dc55b7143c', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'241dbab2-79cc-4459-7a4f-08dc55b7143c', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'88f1a2aa-3a62-4517-7a50-08dc55b7143c', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'4f835a47-9a08-4529-7a51-08dc55b7143c', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'a6afd775-4364-4f88-7a52-08dc55b7143c', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'1b8d1d8c-a183-4a87-7a53-08dc55b7143c', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'2227c447-6b88-49fd-7a54-08dc55b7143c', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'1fd6aeac-ef16-41f1-7a55-08dc55b7143c', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'b7792a75-a7ad-4d77-7a56-08dc55b7143c', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'a2a0557e-34a4-45ab-f852-08dc8f9e55ad', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'6ad4c43b-8114-45db-f853-08dc8f9e55ad', N'74d17d8b-3f91-4d3a-893f-09b4e51e3834')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'5d597675-8179-4575-7872-08d90b25fb90', N'1267bf30-8eea-4370-bbcd-12f74e29c656')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'879239a7-f194-4d0d-4484-08d926a1a06c', N'1267bf30-8eea-4370-bbcd-12f74e29c656')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'6edea615-d41f-4370-fb61-08d9298eedeb', N'1267bf30-8eea-4370-bbcd-12f74e29c656')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'070b8c29-8460-4c39-0732-08d9363044b9', N'1267bf30-8eea-4370-bbcd-12f74e29c656')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'daeb6f0d-eefe-4250-9ecd-28b3243eb684', N'1267bf30-8eea-4370-bbcd-12f74e29c656')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'5d597675-8179-4575-7872-08d90b25fb90', N'b9e08f48-883c-42dc-a700-da5cf1d81aa3')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'879239a7-f194-4d0d-4484-08d926a1a06c', N'b9e08f48-883c-42dc-a700-da5cf1d81aa3')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'070b8c29-8460-4c39-0732-08d9363044b9', N'b9e08f48-883c-42dc-a700-da5cf1d81aa3')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'511d19ba-0edf-4a8a-9e2f-08d944e74afe', N'b9e08f48-883c-42dc-a700-da5cf1d81aa3')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'b4e253b2-756e-48b8-9c42-b5acb139bed4', N'b9e08f48-883c-42dc-a700-da5cf1d81aa3')
GO
INSERT [dbo].[Cart] ([AppUserId], [FoodID], [Quantity]) VALUES (N'bfa9a675-be59-49eb-7711-08d9466da975', 40, 8)
INSERT [dbo].[Cart] ([AppUserId], [FoodID], [Quantity]) VALUES (N'4a2baf8a-1212-4244-7f04-08dc53fc63ba', 40, 1)
INSERT [dbo].[Cart] ([AppUserId], [FoodID], [Quantity]) VALUES (N'6ad4c43b-8114-45db-f853-08dc8f9e55ad', 40, 1)
INSERT [dbo].[Cart] ([AppUserId], [FoodID], [Quantity]) VALUES (N'77cc3017-42fa-44f0-dae7-08d9365953c4', 44, 1)
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [Description], [ImagePath], [IsDeleted], [TimeDeleted]) VALUES (3, N'Bánh', N'Bánh ngọt, bánh bông lan các loại', N'ab49404d-133e-479f-9d3c-aaab58cc9426.jpg', 1, CAST(N'2021-07-13T21:14:14.7002283' AS DateTime2))
INSERT [dbo].[Category] ([ID], [Name], [Description], [ImagePath], [IsDeleted], [TimeDeleted]) VALUES (10, N'Nước', N'Các sản phẩm nước uống đa dạng từ nước khoáng, nước lọc tinh khiết, đến các loại nước uống bổ sung khoáng chất và vitamin phù hợp cho mọi lứa tuổi và nhu cầu sức khỏe khác nhau.', N'8d55c5ca-1678-4216-8d7d-82e24faeeee1.jpg', 0, NULL)
INSERT [dbo].[Category] ([ID], [Name], [Description], [ImagePath], [IsDeleted], [TimeDeleted]) VALUES (11, N'Burger', N'Burger là món ăn gồm một chiếc bánh mì tròn kẹp thịt nướng và các nguyên liệu khác như xà lách, cà chua, hành tây, phô mai và sốt. Món này phổ biến là bữa ăn nhanh, dễ thích nghi với nhiều khẩu vị và biến tấu.', N'49455b44-8926-4586-b4c8-a780d88f9bc8.jpg', 0, NULL)
INSERT [dbo].[Category] ([ID], [Name], [Description], [ImagePath], [IsDeleted], [TimeDeleted]) VALUES (12, N'Hot dog', N'Món ăn còn được người Việt Nam gọi là con chó nóng', N'95e04cf2-5e7f-4576-8b40-5cba423308fe.jpg', 0, NULL)
INSERT [dbo].[Category] ([ID], [Name], [Description], [ImagePath], [IsDeleted], [TimeDeleted]) VALUES (13, N'Bánh ngọt', N'Bánh ngọt là loại bánh được làm từ bột, đường, và các nguyên liệu khác như sữa, trứng, và bơ. Chúng thường được nướng và có thể được tạo hương vị bằng cách thêm chocolate, trái cây, hạt, hoặc gia vị.', N'0cbe8ab4-5b0e-4f99-9961-1543374945ca.png', 0, NULL)
INSERT [dbo].[Category] ([ID], [Name], [Description], [ImagePath], [IsDeleted], [TimeDeleted]) VALUES (14, N'Gà Rán', N'Gà rán là món ăn phổ biến được làm từ các miếng gà tẩm bột và chiên giòn. Thường được ướp với gia vị và thảo mộc trước khi lăn qua bột mì hoặc bột ngô để tạo vỏ ngoài giòn rụm. Gà rán có thể được phục vụ với khoai tây chiên, nước sốt, hoặc salad làm món ăn nhanh hoặc trong bữa ăn chính.', N'28ef26e7-2af7-4618-81d4-3eb77e7b1b67.jpg', 0, NULL)
INSERT [dbo].[Category] ([ID], [Name], [Description], [ImagePath], [IsDeleted], [TimeDeleted]) VALUES (16, N'Bánh tráng', N'Bánh tráng là loại bánh mỏng, giòn truyền thống của Việt Nam, thường được làm từ bột gạo, nước và muối. ', N'1bb276d2-1240-4652-8f0e-a451a69638eb.jpeg', 0, NULL)
INSERT [dbo].[Category] ([ID], [Name], [Description], [ImagePath], [IsDeleted], [TimeDeleted]) VALUES (17, N'Salad', N'Salad là món ăn phổ biến gồm các loại rau sống hoặc luộc nhẹ, thường kết hợp với nguyên liệu như trái cây, hạt, phô mai, và thịt hoặc hải sản. Món này được trộn với nước sốt hoặc dầu giấm để tăng hương vị.', N'a05b5e02-bc05-4680-aadb-ec3b29f92de6.jpg', 0, NULL)
INSERT [dbo].[Category] ([ID], [Name], [Description], [ImagePath], [IsDeleted], [TimeDeleted]) VALUES (18, N'Mỳ ý', N'Mỳ Ý, hay còn gọi là pasta, là một loại thực phẩm truyền thống của Ý, được làm từ bột mì và nước, thường được hình thành thành nhiều hình dạng khác nhau như spaghetti, penne, và fusilli.', N'ae5f4e5c-7cb3-4ea1-82ae-806e3b967d93.png', 0, NULL)
INSERT [dbo].[Category] ([ID], [Name], [Description], [ImagePath], [IsDeleted], [TimeDeleted]) VALUES (19, N'Bánh Mì', N'Bánh mì là loại bánh được làm từ bột mì, nước, men, và thường có thêm muối. Sau khi trộn, bột sẽ được ủ cho nở và sau đó nướng trong lò để tạo thành bánh có vỏ ngoài giòn và ruột mềm.', N'dee200d4-7f1d-4328-ae0d-796af7fe083d.jpg', 0, NULL)
INSERT [dbo].[Category] ([ID], [Name], [Description], [ImagePath], [IsDeleted], [TimeDeleted]) VALUES (20, N'Mỳ cay', N'Mỳ cay như cách người yêu cũ đá bạn', N'667bb5fc-79b1-451b-8242-7e3a4c9bf933.jpg', 0, NULL)
INSERT [dbo].[Category] ([ID], [Name], [Description], [ImagePath], [IsDeleted], [TimeDeleted]) VALUES (21, N'Các món chiên', N'Các món chiên là những món ăn được chế biến bằng cách nhúng nguyên liệu vào dầu nóng để tạo ra một lớp vỏ ngoài giòn và vàng. Thực phẩm có thể được tẩm bột hoặc lăn qua trứng và bột chiên giòn trước khi chiên.', N'a28c2931-5772-49eb-80f7-f19886276411.jpg', 0, NULL)
INSERT [dbo].[Category] ([ID], [Name], [Description], [ImagePath], [IsDeleted], [TimeDeleted]) VALUES (26, N'Chè', N'Chè là một loại thức uống/tráng miệng truyền thống của Việt Nam, thường được làm từ các nguyên liệu như đậu, gạo nếp, trái cây, thạch, và sữa dừa.', N'518630d6-1c1c-4937-9d0a-7ea8c3ab8cbb.png', 0, NULL)
INSERT [dbo].[Category] ([ID], [Name], [Description], [ImagePath], [IsDeleted], [TimeDeleted]) VALUES (27, N'Bún', N'Các món bún thơm ngon, dễ ăn, dễ làm sẽ là một lựa chọn không nên bỏ qua khi bạn muốn đổi vị.', N'784eb670-d9f6-4444-9dc9-3fc5c68f8073.png', 0, NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Food] ON 

INSERT [dbo].[Food] ([ID], [Name], [Description], [Price], [Count], [ImagePath], [SaleCampaignID], [IsDeleted], [TimeDeleted]) VALUES (37, N'Vitamin C(AM)', N'Thành Phần: Nước ép cam, nước ép thơm, nha đam, trân châu trắng.', 20000, 100, N'0e0fbd5c-1537-4074-af01-c1bc158b0fad.jpg', NULL, 0, NULL)
INSERT [dbo].[Food] ([ID], [Name], [Description], [Price], [Count], [ImagePath], [SaleCampaignID], [IsDeleted], [TimeDeleted]) VALUES (38, N'Chè dưỡng nhan', N'Thành Phần: Chè bao gồm tuyết yến, nấm tuyết, nhựa đào, táo đỏ, kỉ tử. ', 30000, 100, N'f9a0f1af-1138-408a-91ca-f7815f8fb49c.jpg', NULL, 0, NULL)
INSERT [dbo].[Food] ([ID], [Name], [Description], [Price], [Count], [ImagePath], [SaleCampaignID], [IsDeleted], [TimeDeleted]) VALUES (39, N'Bạc xỉu', N'Thành phần: Cà phê pha phin, sữa béo, sữa tươi, sữa đặc, thạch cà phê', 15000, 100, N'486058b8-41df-47d1-a283-9ebd03b225d4.jpg', NULL, 1, CAST(N'2021-07-12T17:51:24.4952951' AS DateTime2))
INSERT [dbo].[Food] ([ID], [Name], [Description], [Price], [Count], [ImagePath], [SaleCampaignID], [IsDeleted], [TimeDeleted]) VALUES (40, N'Trà sữa trân châu', N'Thành phần: Trà đen, bột sữa tách béo, trân châu mật ong', 20000, 100, N'2fc60a81-08ad-4b14-bc15-9d30187b25e3.jpg', NULL, 0, NULL)
INSERT [dbo].[Food] ([ID], [Name], [Description], [Price], [Count], [ImagePath], [SaleCampaignID], [IsDeleted], [TimeDeleted]) VALUES (41, N'Matcha sữa dừa', N'Matcha sữa dừa. Thành phần: Bột matcha, sữa tươi, nước cốt dừa, thạch matcha', 25000, 100, N'9d4aa82a-e0a7-4d19-b3f6-8478bcfdb9f5.jpg', NULL, 0, NULL)
INSERT [dbo].[Food] ([ID], [Name], [Description], [Price], [Count], [ImagePath], [SaleCampaignID], [IsDeleted], [TimeDeleted]) VALUES (42, N'Dragon Fruit Yakult', N'Thành phần: Yakult, nước ép sơri thanh long, trân châu trắng', 30000, 100, N'bcd326bd-6122-4dd5-8ad4-23af5ead76c9.jpg', NULL, 0, NULL)
INSERT [dbo].[Food] ([ID], [Name], [Description], [Price], [Count], [ImagePath], [SaleCampaignID], [IsDeleted], [TimeDeleted]) VALUES (44, N'Sinh tố sapoche', N'Sinh tố sapoche là một loại sinh tố được làm từ quả sapoche (hay còn gọi là quả sa kê), một loại quả nhiệt đới có vị ngọt, bùi, và hơi béo. ', 25000, 100, N'f209a50f-92cd-4489-8ef7-877d2f8056c6.jpg', NULL, 0, NULL)
INSERT [dbo].[Food] ([ID], [Name], [Description], [Price], [Count], [ImagePath], [SaleCampaignID], [IsDeleted], [TimeDeleted]) VALUES (45, N'Gà rán giòn', N'Gà rán giòn là món ăn được làm từ các miếng gà đã được ướp với các gia vị, sau đó tẩm qua lớp bột mì hoặc bột ngô đặc biệt để khi chiên lên sẽ tạo thành lớp vỏ ngoài siêu giòn.', 45000, 100, N'5c081d5b-4bac-432e-b063-59dc2a5e0ef0.png', NULL, 0, NULL)
INSERT [dbo].[Food] ([ID], [Name], [Description], [Price], [Count], [ImagePath], [SaleCampaignID], [IsDeleted], [TimeDeleted]) VALUES (46, N'Hot dog Phô Mai', N'Hotdog phô mai là một biến thể của món hotdog truyền thống, nơi một cây xúc xích được nướng hoặc luộc, sau đó kẹp vào bên trong một ổ bánh mì dài và mềm.', 12000, 100, N'a987eebe-8466-464d-ae5d-204ff63032e8.jpg', NULL, 0, NULL)
INSERT [dbo].[Food] ([ID], [Name], [Description], [Price], [Count], [ImagePath], [SaleCampaignID], [IsDeleted], [TimeDeleted]) VALUES (47, N'Bánh tráng Sike', N'Bánh tráng sike là một biến thể của bánh tráng truyền thống Việt Nam. Đây là loại bánh tráng mỏng, được tẩm ướp với một hỗn hợp gia vị bao gồm ớt, muối, đường, và một số thành phần khác để tạo hương vị đặc trưng. ', 5000, 100, N'9d66364c-35dc-4683-a55f-f7b97f1915f3.jpg', NULL, 0, NULL)
INSERT [dbo].[Food] ([ID], [Name], [Description], [Price], [Count], [ImagePath], [SaleCampaignID], [IsDeleted], [TimeDeleted]) VALUES (48, N'Bò tắm phô mai', N'Thành phần: Bò, phô mai miếng, cà chua, thịt xông khói', 50000, 100, N'573d04fe-5630-41e2-8823-c7b83d2cf0f1.jpg', NULL, 0, NULL)
INSERT [dbo].[Food] ([ID], [Name], [Description], [Price], [Count], [ImagePath], [SaleCampaignID], [IsDeleted], [TimeDeleted]) VALUES (49, N'Salad trái cây', N'Salad trái cây là món tráng miệng hoặc món khai vị được làm từ nhiều loại trái cây tươi cắt nhỏ, như dâu tây, kiwi, xoài, táo, và nho.', 50000, 100, N'425fa16c-60aa-4af6-8d03-61cebd286c07.jpg', NULL, 0, NULL)
INSERT [dbo].[Food] ([ID], [Name], [Description], [Price], [Count], [ImagePath], [SaleCampaignID], [IsDeleted], [TimeDeleted]) VALUES (50, N'Mỳ ý sốt thịt băm', N'Mỳ Ý sốt thịt băm là một món ăn phổ biến và đặc trưng của ẩm thực Ý, gồm mỳ pasta (thường là spaghetti hoặc fettuccine) được phục vụ với sốt thịt băm. Sốt này được làm từ thịt bò hoặc lợn băm nhuyễn, nấu chín cùng với cà chua, hành tây, tỏi, và các loại thảo mộc như oregano và húng quế. ', 40000, 100, N'46d313dc-2a6b-4f7e-a475-9665fb79bc16.jpg', NULL, 0, NULL)
INSERT [dbo].[Food] ([ID], [Name], [Description], [Price], [Count], [ImagePath], [SaleCampaignID], [IsDeleted], [TimeDeleted]) VALUES (51, N'Bánh mì ốp la ', N'Bánh mì ốp la là một món ăn sáng phổ biến, đặc biệt là ở Việt Nam. Món này bao gồm một ổ bánh mì được cắt mở và nhồi với trứng ốp la. ', 10000, 100, N'e9bf5ef1-6538-4610-b8da-a4948abc9b7e.jpg', NULL, 0, NULL)
INSERT [dbo].[Food] ([ID], [Name], [Description], [Price], [Count], [ImagePath], [SaleCampaignID], [IsDeleted], [TimeDeleted]) VALUES (52, N'Mì cay thập cẩm', N'Món này nổi bật với nước dùng cay nóng, thường được tạo hương vị từ ớt, tỏi, và các loại gia vị khác. Mì cay thập cẩm không chỉ cung cấp hương vị cay nồng mà còn rất bổ dưỡng, phù hợp để ăn trong những ngày trời lạnh hoặc khi muốn thưởng thức một bữa ăn kích thích vị giác.', 30000, 100, N'49c06e11-4bfb-4f3f-ad99-0983969e0230.jpeg', NULL, 0, NULL)
INSERT [dbo].[Food] ([ID], [Name], [Description], [Price], [Count], [ImagePath], [SaleCampaignID], [IsDeleted], [TimeDeleted]) VALUES (53, N'Viên chiên thập cẩm', N'Cá viên chiên thường được phục vụ như một món nhắm hoặc món ăn vặt, có thể chấm cùng các loại sốt như sốt cà chua, sốt mayonnaise, hoặc sốt ớt để tăng thêm hương vị.', 100000, 1000, N'4eab2124-a1b3-4e30-8ae0-f312e8ab8d87.jpg', NULL, 0, NULL)
INSERT [dbo].[Food] ([ID], [Name], [Description], [Price], [Count], [ImagePath], [SaleCampaignID], [IsDeleted], [TimeDeleted]) VALUES (54, N'Gà sốt cay', N'Gà sốt cay là một món ăn được ưa chuộng với hương vị đậm đà và cay nồng, phổ biến ở nhiều nền văn hóa ẩm thực, đặc biệt là châu Á.', 70000, 100, N'47f03e11-2492-41ee-8f93-5be67d0c6cf9.jpg', NULL, 0, NULL)
INSERT [dbo].[Food] ([ID], [Name], [Description], [Price], [Count], [ImagePath], [SaleCampaignID], [IsDeleted], [TimeDeleted]) VALUES (55, N'Gà rán sốt Phô Mai', N'Gà rán sốt phô mai là một món ăn hấp dẫn kết hợp giữa vị giòn rụm của gà rán và hương vị béo ngậy của phô mai.', 80000, 100, N'd800af39-c3bd-4751-bf69-93f44acb7310.png', NULL, 0, NULL)
INSERT [dbo].[Food] ([ID], [Name], [Description], [Price], [Count], [ImagePath], [SaleCampaignID], [IsDeleted], [TimeDeleted]) VALUES (56, N'Gà chiên nước mắm', N'Gà chiên nước mắm là một món ăn đặc trưng của Việt Nam, nổi tiếng với hương vị mặn ngọt đậm đà.', 30000, 100, N'a164f36e-512b-45e1-9a6a-2b51f55cc406.jpg', NULL, 0, NULL)
INSERT [dbo].[Food] ([ID], [Name], [Description], [Price], [Count], [ImagePath], [SaleCampaignID], [IsDeleted], [TimeDeleted]) VALUES (57, N'Gà rán sốt me', N'Gà rán sốt me là món ăn kết hợp hương vị giòn rụm của gà rán với vị chua ngọt đặc trưng của sốt me', 100000, 100, N'4ee498b7-eccd-4df9-acf7-3251a21b190a.jpg', NULL, 0, NULL)
INSERT [dbo].[Food] ([ID], [Name], [Description], [Price], [Count], [ImagePath], [SaleCampaignID], [IsDeleted], [TimeDeleted]) VALUES (58, N'Khoai tây chiên', N'Khoai tây chiên là món ăn phổ biến trên toàn thế giới, thường được thưởng thức như một món ăn nhẹ hoặc món phụ.', 15000, 100, N'88d36d8c-9dfb-4a1e-a3f7-f3b34c753ae4.jpg', NULL, 0, NULL)
INSERT [dbo].[Food] ([ID], [Name], [Description], [Price], [Count], [ImagePath], [SaleCampaignID], [IsDeleted], [TimeDeleted]) VALUES (59, N'Bún thịt nướng', N'Bún thịt nướng là một món ăn truyền thống của Việt Nam, được yêu thích bởi sự kết hợp hài hòa giữa các nguyên liệu và hương vị', 25000, 100, N'c50d2b01-57aa-4560-8d8c-f88b0fa14ad9.jpg', NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[Food] OFF
GO
INSERT [dbo].[FoodCategory] ([FoodID], [CategoryID], [IsDeleted], [TimeDeleted]) VALUES (37, 10, 0, NULL)
INSERT [dbo].[FoodCategory] ([FoodID], [CategoryID], [IsDeleted], [TimeDeleted]) VALUES (38, 26, 0, NULL)
INSERT [dbo].[FoodCategory] ([FoodID], [CategoryID], [IsDeleted], [TimeDeleted]) VALUES (39, 10, 1, CAST(N'2021-07-12T17:51:24.4949597' AS DateTime2))
INSERT [dbo].[FoodCategory] ([FoodID], [CategoryID], [IsDeleted], [TimeDeleted]) VALUES (40, 10, 0, NULL)
INSERT [dbo].[FoodCategory] ([FoodID], [CategoryID], [IsDeleted], [TimeDeleted]) VALUES (41, 10, 0, NULL)
INSERT [dbo].[FoodCategory] ([FoodID], [CategoryID], [IsDeleted], [TimeDeleted]) VALUES (42, 10, 0, NULL)
INSERT [dbo].[FoodCategory] ([FoodID], [CategoryID], [IsDeleted], [TimeDeleted]) VALUES (44, 10, 0, NULL)
INSERT [dbo].[FoodCategory] ([FoodID], [CategoryID], [IsDeleted], [TimeDeleted]) VALUES (45, 14, 0, NULL)
INSERT [dbo].[FoodCategory] ([FoodID], [CategoryID], [IsDeleted], [TimeDeleted]) VALUES (46, 12, 0, NULL)
INSERT [dbo].[FoodCategory] ([FoodID], [CategoryID], [IsDeleted], [TimeDeleted]) VALUES (47, 16, 0, NULL)
INSERT [dbo].[FoodCategory] ([FoodID], [CategoryID], [IsDeleted], [TimeDeleted]) VALUES (48, 11, 0, NULL)
INSERT [dbo].[FoodCategory] ([FoodID], [CategoryID], [IsDeleted], [TimeDeleted]) VALUES (49, 17, 0, NULL)
INSERT [dbo].[FoodCategory] ([FoodID], [CategoryID], [IsDeleted], [TimeDeleted]) VALUES (50, 18, 0, NULL)
INSERT [dbo].[FoodCategory] ([FoodID], [CategoryID], [IsDeleted], [TimeDeleted]) VALUES (51, 19, 0, NULL)
INSERT [dbo].[FoodCategory] ([FoodID], [CategoryID], [IsDeleted], [TimeDeleted]) VALUES (52, 20, 0, NULL)
INSERT [dbo].[FoodCategory] ([FoodID], [CategoryID], [IsDeleted], [TimeDeleted]) VALUES (53, 21, 0, NULL)
INSERT [dbo].[FoodCategory] ([FoodID], [CategoryID], [IsDeleted], [TimeDeleted]) VALUES (54, 14, 0, NULL)
INSERT [dbo].[FoodCategory] ([FoodID], [CategoryID], [IsDeleted], [TimeDeleted]) VALUES (55, 14, 0, NULL)
INSERT [dbo].[FoodCategory] ([FoodID], [CategoryID], [IsDeleted], [TimeDeleted]) VALUES (56, 14, 0, NULL)
INSERT [dbo].[FoodCategory] ([FoodID], [CategoryID], [IsDeleted], [TimeDeleted]) VALUES (57, 14, 0, NULL)
INSERT [dbo].[FoodCategory] ([FoodID], [CategoryID], [IsDeleted], [TimeDeleted]) VALUES (58, 21, 0, NULL)
INSERT [dbo].[FoodCategory] ([FoodID], [CategoryID], [IsDeleted], [TimeDeleted]) VALUES (59, 27, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[Notification] ON 

INSERT [dbo].[Notification] ([ID], [UserID], [Title], [Message], [TimeCreated], [Type], [UserReceived], [IsDeleted], [TimeDeleted]) VALUES (1, N'5d597675-8179-4575-7872-08d90b25fb90', N'TEst', N'Test message', CAST(N'2021-05-22T22:46:54.1942777' AS DateTime2), 1, 0, 0, NULL)
SET IDENTITY_INSERT [dbo].[Notification] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (80, N'77cc3017-42fa-44f0-dae7-08d9365953c4', CAST(N'2021-06-23T22:24:06.5538562' AS DateTime2), 1, CAST(N'2021-06-23T22:25:09.1261808' AS DateTime2), 6, 1, 5000, N'hoàng phong sang', N'620 đỗ xuân hợp', NULL, 95000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (85, N'3a418542-eddd-407d-dae8-08d9365953c4', CAST(N'2021-06-23T22:29:14.9075496' AS DateTime2), 1, CAST(N'2021-06-23T22:35:43.5061671' AS DateTime2), 6, 1, 5000, N'hoàng long', N'123 tân bình, quận 9', NULL, 165000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (88, N'3a418542-eddd-407d-dae8-08d9365953c4', CAST(N'2021-06-24T14:41:04.0259437' AS DateTime2), 1, CAST(N'2021-06-24T14:44:53.1233622' AS DateTime2), 6, NULL, NULL, N'hoàng long', N'123 tân bình, quận 9', NULL, 160000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (90, N'3a418542-eddd-407d-dae8-08d9365953c4', CAST(N'2021-06-24T14:41:51.6056815' AS DateTime2), 1, CAST(N'2021-06-24T14:45:12.2065467' AS DateTime2), 6, NULL, NULL, N'hoàng long', N'123 tân bình, quận 9', NULL, 20000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (91, N'3a418542-eddd-407d-dae8-08d9365953c4', CAST(N'2021-06-24T14:42:22.9976673' AS DateTime2), 1, CAST(N'2021-06-24T14:45:37.6170866' AS DateTime2), 6, NULL, NULL, N'hoàng long', N'123 tân bình, quận 9', NULL, 75000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (92, N'3a418542-eddd-407d-dae8-08d9365953c4', CAST(N'2021-06-24T14:50:33.9567266' AS DateTime2), 1, CAST(N'2021-06-24T14:51:04.6054876' AS DateTime2), 6, NULL, NULL, N'hoàng long', N'123 tân bình, quận 9', NULL, 731500, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (93, N'77cc3017-42fa-44f0-dae7-08d9365953c4', CAST(N'2021-06-24T15:26:30.5925282' AS DateTime2), 1, CAST(N'2021-06-24T15:27:49.3062914' AS DateTime2), 6, NULL, NULL, N'hoàng phong sang', N'620 đỗ xuân hợp', NULL, 30000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (94, N'77cc3017-42fa-44f0-dae7-08d9365953c4', CAST(N'2021-06-24T15:26:57.7902648' AS DateTime2), 1, CAST(N'2021-06-24T15:28:19.4183758' AS DateTime2), 6, NULL, NULL, N'hoàng phong sang', N'620 đỗ xuân hợp', NULL, 17000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (95, N'77cc3017-42fa-44f0-dae7-08d9365953c4', CAST(N'2021-06-24T15:27:08.8614152' AS DateTime2), 1, CAST(N'2021-06-24T15:28:32.1202444' AS DateTime2), 6, NULL, NULL, N'hoàng phong sang', N'620 đỗ xuân hợp', NULL, 76500, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (96, N'77cc3017-42fa-44f0-dae7-08d9365953c4', CAST(N'2021-06-24T15:27:21.0903594' AS DateTime2), 1, CAST(N'2021-06-24T15:28:44.6521725' AS DateTime2), 6, NULL, NULL, N'hoàng phong sang', N'620 đỗ xuân hợp', NULL, 50000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (97, N'77cc3017-42fa-44f0-dae7-08d9365953c4', CAST(N'2021-06-24T19:27:53.4571107' AS DateTime2), 1, CAST(N'2021-06-24T20:29:58.5076888' AS DateTime2), 6, NULL, NULL, N'hoàng phong sang', N'620 đỗ xuân hợp', NULL, 100000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (98, N'77cc3017-42fa-44f0-dae7-08d9365953c4', CAST(N'2021-06-24T19:50:34.3253838' AS DateTime2), 1, CAST(N'2021-06-24T20:30:18.9876446' AS DateTime2), 6, NULL, NULL, N'hoàng phong sang', N'620 đỗ xuân hợp', NULL, 30000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (99, N'77cc3017-42fa-44f0-dae7-08d9365953c4', CAST(N'2021-06-24T19:51:04.2036503' AS DateTime2), 1, CAST(N'2021-06-24T20:30:31.4052735' AS DateTime2), 6, NULL, NULL, N'hoàng phong sang', N'620 đỗ xuân hợp', NULL, 17000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (100, N'77cc3017-42fa-44f0-dae7-08d9365953c4', CAST(N'2021-06-24T20:52:36.5486256' AS DateTime2), 1, CAST(N'2021-07-13T21:19:43.6926898' AS DateTime2), 6, NULL, NULL, N'hoàng phong sang', N'620 đỗ xuân hợp', NULL, 12000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (101, N'2594afe6-daf1-4bfc-94a8-08d92c06723d', CAST(N'2021-06-25T21:01:31.9517989' AS DateTime2), 1, CAST(N'2024-04-05T14:04:20.9479178' AS DateTime2), 6, NULL, NULL, N'nhà', N'140/11 Bình Quới', NULL, 34000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (102, N'2594afe6-daf1-4bfc-94a8-08d92c06723d', CAST(N'2021-06-25T21:05:34.9181555' AS DateTime2), 1, CAST(N'2021-06-25T21:58:12.6551004' AS DateTime2), 6, 1, 5000, N'nhà', N'140/11 Bình Quới', NULL, 80000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (103, N'2594afe6-daf1-4bfc-94a8-08d92c06723d', CAST(N'2021-06-25T21:28:42.0587762' AS DateTime2), 1, CAST(N'2021-06-25T21:52:11.7117485' AS DateTime2), 6, 1, 5000, N'nhà', N'140/11 Bình Quới', NULL, 131000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (104, N'2594afe6-daf1-4bfc-94a8-08d92c06723d', CAST(N'2021-06-27T23:03:54.6696660' AS DateTime2), 1, CAST(N'2021-07-08T15:47:18.5125747' AS DateTime2), 6, NULL, NULL, N'nhà', N'140/11 Bình Quới', NULL, 51000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (105, N'2594afe6-daf1-4bfc-94a8-08d92c06723d', CAST(N'2021-07-06T14:34:19.3442189' AS DateTime2), 1, CAST(N'2024-04-05T14:04:43.8994629' AS DateTime2), 6, NULL, NULL, N'nhà', N'140/11 Bình Quới', NULL, 102000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (110, N'2594afe6-daf1-4bfc-94a8-08d92c06723d', CAST(N'2021-07-07T18:06:40.9820950' AS DateTime2), 1, CAST(N'2021-07-08T15:49:07.2639911' AS DateTime2), 6, NULL, NULL, N'nhà', N'140/11 Bình Quới', NULL, 20000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (111, N'2594afe6-daf1-4bfc-94a8-08d92c06723d', CAST(N'2021-07-07T22:10:52.9719572' AS DateTime2), 1, CAST(N'2021-07-08T15:48:38.5175335' AS DateTime2), 6, NULL, NULL, N'nhà', N'140/11 Bình Quới', NULL, 17000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (117, N'2594afe6-daf1-4bfc-94a8-08d92c06723d', CAST(N'2021-07-08T15:02:23.7695744' AS DateTime2), 1, CAST(N'2021-07-08T15:48:17.1743052' AS DateTime2), 6, 1, 25000, N'nhà', N'140/11 Bình Quới', NULL, 148000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (118, N'bfa9a675-be59-49eb-7711-08d9466da975', CAST(N'2021-07-14T09:28:39.6120485' AS DateTime2), 1, CAST(N'2024-04-05T14:05:34.3700342' AS DateTime2), 6, 4, 75000, N'nhà', N'phú lộc', NULL, 125000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (119, N'3a418542-eddd-407d-dae8-08d9365953c4', CAST(N'2021-07-14T11:57:13.1891399' AS DateTime2), 1, CAST(N'2021-07-14T12:03:30.8932446' AS DateTime2), 6, 4, 75000, N'hoàng long', N'123 tân bình, quận 9', NULL, 235000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (121, N'3a418542-eddd-407d-dae8-08d9365953c4', CAST(N'2021-07-14T11:58:33.6601328' AS DateTime2), 1, CAST(N'2021-07-14T12:03:48.7858570' AS DateTime2), 6, NULL, NULL, N'hoàng long', N'123 tân bình, quận 9', NULL, 195000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (122, N'3a418542-eddd-407d-dae8-08d9365953c4', CAST(N'2021-07-14T11:59:18.8885369' AS DateTime2), 1, CAST(N'2021-07-14T12:03:58.8089518' AS DateTime2), 6, 1, 45000, N'hoàng long', N'123 tân bình, quận 9', NULL, 451500, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (123, N'bcb9bc68-7548-476c-27c9-08d946853436', CAST(N'2021-07-14T12:07:59.3295128' AS DateTime2), 1, CAST(N'2021-07-14T12:09:15.6818196' AS DateTime2), 6, NULL, NULL, N'nhà', N'123 long xuân, cam ranh', NULL, 51000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (124, N'bcb9bc68-7548-476c-27c9-08d946853436', CAST(N'2021-07-14T12:08:38.4851125' AS DateTime2), 1, CAST(N'2021-07-14T12:09:28.8987645' AS DateTime2), 6, 4, 75000, N'nhà', N'123 long xuân, cam ranh', NULL, 95000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (125, N'bcb9bc68-7548-476c-27c9-08d946853436', CAST(N'2021-07-14T14:37:43.6209628' AS DateTime2), 1, CAST(N'2024-04-05T14:05:45.0209226' AS DateTime2), 6, NULL, NULL, N'nhà', N'123 long xuân, cam ranh', NULL, 40000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (126, N'4a2baf8a-1212-4244-7f04-08dc53fc63ba', CAST(N'2024-04-05T14:25:37.7964810' AS DateTime2), 1, CAST(N'2024-04-05T20:51:01.7664464' AS DateTime2), 4, NULL, NULL, N'dfg', N'dfg', NULL, 88000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (127, N'4a2baf8a-1212-4244-7f04-08dc53fc63ba', CAST(N'2024-04-05T17:33:49.2597957' AS DateTime2), 1, CAST(N'2024-04-05T20:41:44.0741033' AS DateTime2), 4, NULL, NULL, N'dfg', N'dfg', NULL, 17000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (128, N'4a2baf8a-1212-4244-7f04-08dc53fc63ba', CAST(N'2024-04-05T17:35:48.7112603' AS DateTime2), 1, CAST(N'2024-04-05T20:41:26.6752068' AS DateTime2), 4, 6, 5100, N'dfg', N'dfg', NULL, 45900, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (129, N'4a2baf8a-1212-4244-7f04-08dc53fc63ba', CAST(N'2024-04-05T20:43:11.8992677' AS DateTime2), 1, CAST(N'2024-04-05T20:44:11.0699783' AS DateTime2), 4, NULL, NULL, N'dfg', N'dfg', NULL, 85000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (130, N'4a2baf8a-1212-4244-7f04-08dc53fc63ba', CAST(N'2024-04-05T20:50:51.3883857' AS DateTime2), 1, CAST(N'2024-04-05T21:43:18.5051795' AS DateTime2), 4, NULL, NULL, N'dfg', N'dfg', NULL, 20000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (131, N'31c13439-369a-4fa9-7724-08dc09eb2512', CAST(N'2024-04-05T21:26:12.5209917' AS DateTime2), 1, CAST(N'2024-04-05T21:27:29.0303968' AS DateTime2), 4, NULL, NULL, N'Trong Nghia', N'Hoc Mon', NULL, 37000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (132, N'31c13439-369a-4fa9-7724-08dc09eb2512', CAST(N'2024-04-05T21:35:51.4258027' AS DateTime2), 1, CAST(N'2024-04-05T21:36:25.2000595' AS DateTime2), 4, NULL, NULL, N'Trong Nghia', N'Hoc Mon', NULL, 34000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (133, N'4a2baf8a-1212-4244-7f04-08dc53fc63ba', CAST(N'2024-04-05T21:43:15.2554713' AS DateTime2), 1, CAST(N'2024-04-05T21:55:11.5151608' AS DateTime2), 4, NULL, NULL, N'dfg', N'dfg', NULL, 76500, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (134, N'4a2baf8a-1212-4244-7f04-08dc53fc63ba', CAST(N'2024-04-05T21:58:14.0687403' AS DateTime2), 1, CAST(N'2024-04-05T21:58:28.6012199' AS DateTime2), 4, NULL, NULL, N'dfg', N'dfg', NULL, 17000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (135, N'31c13439-369a-4fa9-7724-08dc09eb2512', CAST(N'2024-04-06T02:59:53.1023025' AS DateTime2), 1, CAST(N'2024-04-06T03:00:59.7328477' AS DateTime2), 4, NULL, NULL, N'Trong Nghia', N'Hoc Mon', NULL, 1428000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (136, N'31c13439-369a-4fa9-7724-08dc09eb2512', CAST(N'2024-04-06T09:21:35.2893108' AS DateTime2), 0, NULL, 2, NULL, NULL, N'Trọng Nghĩa', N'Hốc Môn', NULL, 34000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (137, N'ad96709a-d17d-4ef4-c90e-08dc0a03f7cf', CAST(N'2024-04-13T14:21:22.4892697' AS DateTime2), 1, CAST(N'2024-04-13T14:23:07.8076720' AS DateTime2), 4, 4, 75000, N'Trọng Nghĩa ', N'Hóc Môn ', NULL, 95000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (138, N'2227c447-6b88-49fd-7a54-08dc55b7143c', CAST(N'2024-04-27T11:31:16.8730162' AS DateTime2), 1, CAST(N'2024-04-27T11:32:28.6493713' AS DateTime2), 4, 4, 75000, N'Trọng Nghĩa ', N'Hốc Môn', NULL, 180000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (139, N'a6afd775-4364-4f88-7a52-08dc55b7143c', CAST(N'2024-05-04T14:45:10.0325094' AS DateTime2), 1, CAST(N'2024-05-04T14:47:48.9330815' AS DateTime2), 4, 5, 40000, N'Trọng Nghĩa', N'Sư Vạn Hạnh ', NULL, 398000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (140, N'a6afd775-4364-4f88-7a52-08dc55b7143c', CAST(N'2024-05-04T15:04:07.8074207' AS DateTime2), 0, NULL, 2, 6, 15000, N'Trọng Nghĩa', N'Sư Vạn Hạnh ', NULL, 240000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (141, N'a6afd775-4364-4f88-7a52-08dc55b7143c', CAST(N'2024-05-10T21:17:51.2485353' AS DateTime2), 0, NULL, 2, NULL, NULL, N'Trọng Nghĩa', N'Sư Vạn Hạnh ', NULL, 259500, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (142, N'ad96709a-d17d-4ef4-c90e-08dc0a03f7cf', CAST(N'2024-05-11T10:41:09.8646656' AS DateTime2), 0, NULL, 2, NULL, NULL, N'Trọng Nghĩa ', N'Hóc Môn', NULL, 153000, 0, NULL)
INSERT [dbo].[Order] ([ID], [AppUserID], [CreatedDate], [IsPaid], [DatePaid], [OrderStatusID], [PromotionID], [PromotionAmount], [AddressName], [AddressString], [SaleCampaignID], [FinalTotalPrice], [IsDeleted], [TimeDeleted]) VALUES (143, N'ad96709a-d17d-4ef4-c90e-08dc0a03f7cf', CAST(N'2024-06-07T13:15:01.1196688' AS DateTime2), 1, CAST(N'2024-06-07T13:16:13.7529939' AS DateTime2), 4, 5, 40000, N'Trọng Nghĩa ', N'Hóc Môn', NULL, 130000, 0, NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (126, 40, 4, 20000, 1, 15, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (126, 44, 1, 20000, NULL, NULL, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (127, 40, 1, 20000, 1, 15, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (128, 40, 3, 20000, 1, 15, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (129, 53, 1, 100000, 1, 15, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (130, 44, 1, 20000, NULL, NULL, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (131, 40, 1, 20000, 1, 15, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (131, 44, 1, 20000, NULL, NULL, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (132, 40, 2, 20000, 1, 15, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (133, 56, 1, 90000, 1, 15, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (134, 40, 1, 20000, 1, 15, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (135, 51, 28, 60000, 1, 15, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (136, 40, 2, 20000, 1, 15, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (137, 53, 2, 100000, 1, 15, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (138, 40, 15, 20000, 1, 15, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (139, 40, 6, 20000, 1, 15, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (139, 51, 6, 60000, 1, 15, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (139, 52, 1, 30000, NULL, NULL, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (140, 40, 1, 20000, 1, 15, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (140, 51, 3, 60000, 1, 15, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (140, 53, 1, 100000, 1, 15, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (141, 40, 1, 20000, 1, 15, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (141, 51, 1, 60000, 1, 15, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (141, 52, 1, 30000, NULL, NULL, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (141, 53, 1, 100000, 1, 15, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (141, 56, 1, 90000, 1, 15, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (142, 40, 1, 20000, 1, 15, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (142, 51, 1, 60000, 1, 15, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (142, 53, 1, 100000, 1, 15, 0, NULL)
INSERT [dbo].[OrderDetail] ([OrderID], [FoodID], [Amount], [Price], [SaleCampaignID], [SalePercent], [IsDeleted], [TimeDeleted]) VALUES (143, 40, 10, 20000, 1, 15, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[OrderStatus] ON 

INSERT [dbo].[OrderStatus] ([ID], [Name], [Description], [PNBody], [PNTitle]) VALUES (2, N'Đang chuẩn bị', N'', NULL, NULL)
INSERT [dbo].[OrderStatus] ([ID], [Name], [Description], [PNBody], [PNTitle]) VALUES (3, N'Đang giao hàng', N'', NULL, NULL)
INSERT [dbo].[OrderStatus] ([ID], [Name], [Description], [PNBody], [PNTitle]) VALUES (4, N'Đã nhận hàng', N'', NULL, NULL)
INSERT [dbo].[OrderStatus] ([ID], [Name], [Description], [PNBody], [PNTitle]) VALUES (5, N'Đã hủy', N'', NULL, NULL)
INSERT [dbo].[OrderStatus] ([ID], [Name], [Description], [PNBody], [PNTitle]) VALUES (6, N'Đã đến nơi', NULL, N'Body', N'Title')
SET IDENTITY_INSERT [dbo].[OrderStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Promotion] ON 

INSERT [dbo].[Promotion] ([ID], [Name], [Code], [Desciption], [StartDate], [EndDate], [UseTimes], [Percent], [Enabled], [Max], [MinPrice], [IsGlobal], [Priority], [ImagePath], [IsDeleted], [TimeDeleted]) VALUES (1, N'Ăn thả ga | Giảm 40%', N'ANTHAGA40', N'Ăn thả ga, giảm ngay 40% cho tất cả các đơn hàng. ', CAST(N'2021-07-17T20:18:18.4635034' AS DateTime2), CAST(N'2024-01-01T00:00:00.0000000' AS DateTime2), 4, 40, 1, 45000, 100000, 1, 4, N'a2b7903e-064b-4505-91d1-daaf404d46f8.jpg', 0, NULL)
INSERT [dbo].[Promotion] ([ID], [Name], [Code], [Desciption], [StartDate], [EndDate], [UseTimes], [Percent], [Enabled], [Max], [MinPrice], [IsGlobal], [Priority], [ImagePath], [IsDeleted], [TimeDeleted]) VALUES (3, N'Ăn thả ga | Khao 20%.', N'ANTHAGA20', N'Ăn thả ga. Khao 20% cho tất cả các đơn hàng.', CAST(N'2021-05-05T17:56:00.0000000' AS DateTime2), CAST(N'2024-02-24T17:56:00.0000000' AS DateTime2), 3, 20, 1, 20000, 70000, 0, 0, N'445b17b4-3d8b-40b1-b216-f10796baf701.jpg', 0, NULL)
INSERT [dbo].[Promotion] ([ID], [Name], [Code], [Desciption], [StartDate], [EndDate], [UseTimes], [Percent], [Enabled], [Max], [MinPrice], [IsGlobal], [Priority], [ImagePath], [IsDeleted], [TimeDeleted]) VALUES (4, N'Ăn thả ga | Giảm 50%', N'ANTHAGA50', N'Ăn thả ga. Giảm 50% cho tất cả các đơn hàng', CAST(N'2021-07-09T18:37:00.0000000' AS DateTime2), CAST(N'2024-11-09T18:37:00.0000000' AS DateTime2), 1, 50, 1, 75000, 140000, 0, 1, N'd83fbd0b-ecb2-4746-b807-1a933ada5d95.jpg', 0, NULL)
INSERT [dbo].[Promotion] ([ID], [Name], [Code], [Desciption], [StartDate], [EndDate], [UseTimes], [Percent], [Enabled], [Max], [MinPrice], [IsGlobal], [Priority], [ImagePath], [IsDeleted], [TimeDeleted]) VALUES (5, N'An thả ga | Giảm 30%', N'ANTHAGA30', N'An thả ga | Giảm 30%', CAST(N'2021-07-23T18:40:00.0000000' AS DateTime2), CAST(N'2024-10-22T18:40:00.0000000' AS DateTime2), 3, 30, 1, 40000, 120000, 0, 2, N'5e71d1d5-03e4-4aa3-bdc1-c7a9ca0020d0.jpg', 0, NULL)
INSERT [dbo].[Promotion] ([ID], [Name], [Code], [Desciption], [StartDate], [EndDate], [UseTimes], [Percent], [Enabled], [Max], [MinPrice], [IsGlobal], [Priority], [ImagePath], [IsDeleted], [TimeDeleted]) VALUES (6, N'Ăn thả ga | Giảm 10%', N'ANTHAGA10', N'Ăn thả ga | Giảm 10%', CAST(N'2021-07-29T18:42:00.0000000' AS DateTime2), CAST(N'2024-07-28T18:42:00.0000000' AS DateTime2), 4, 10, 1, 15000, 50000, 0, 4, N'7d8eec02-25e8-413c-ba2e-a077a1cea9f3.jpg', 0, NULL)
SET IDENTITY_INSERT [dbo].[Promotion] OFF
GO
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 44, 3, N'Ún sapoche là khỏi chê', CAST(N'2021-06-23T22:25:29.0772667' AS DateTime2), 80, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 55, 5, N'nhìn ngon ghê', CAST(N'2021-06-24T14:48:54.8679429' AS DateTime2), 88, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 44, 4, N'sapoche là món tui thích', CAST(N'2021-06-24T14:48:25.2576199' AS DateTime2), 90, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 41, 5, N'matcha bình thường rất đắng nhưng ở quán thì lại rất vừa và ngon', CAST(N'2021-06-24T14:47:21.4867082' AS DateTime2), 91, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 48, 5, N'burger ở quán thì ngon thôi rồi. 100 điểm', CAST(N'2021-06-24T14:48:07.3597168' AS DateTime2), 91, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 37, 5, N'thức uống đúng chuâne cho hè nóng bức như thế này ở sg', CAST(N'2021-06-24T14:51:49.5266481' AS DateTime2), 92, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 38, 4, N'lần đầu nghe tên chè thật lạ. nhưng vị cũng thật lạ và ngon ^^. ', CAST(N'2021-06-24T14:52:23.2354149' AS DateTime2), 92, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 39, 5, N'một con nghiện bạc xỉu như mình đã phải siêu lòng bạc xỉu ở đây mất rồi hehe', CAST(N'2021-06-24T14:53:09.5868329' AS DateTime2), 92, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 40, 3, N'hơi ngọt nhưng chân trâu thì ngon lắm', CAST(N'2021-06-24T14:53:26.2481224' AS DateTime2), 92, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 42, 5, N'ôi dồi ôi. chân âi của tui đây rồi. rất ngon và mát', CAST(N'2021-06-24T14:53:51.5080608' AS DateTime2), 92, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 45, 5, N'cũng đã thử làm ở nhà nhưng k bằng quán được. quán làm ngon và giòn lắm', CAST(N'2021-06-24T14:54:21.5237021' AS DateTime2), 92, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 46, 5, N'Hot dog ăn mà k có dog hjc :<', CAST(N'2021-06-24T14:54:45.5400212' AS DateTime2), 92, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 47, 3, N'bánh tráng cay ngon mà nổi mụn vãi', CAST(N'2021-06-24T14:55:10.9455511' AS DateTime2), 92, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 48, 5, N'ngon lắm muốn ăn 2 cái nhưng sợ béo :)))', CAST(N'2021-06-24T14:55:37.5247379' AS DateTime2), 92, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 49, 5, N'nhìn fresh vc', CAST(N'2021-06-24T14:56:04.2368033' AS DateTime2), 92, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 50, 5, N'ngon nhưng mà lần sau mong cho em nhiều sốt hơn tí nữa', CAST(N'2021-06-24T14:56:27.5577846' AS DateTime2), 92, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 51, 5, N'cái thứ 3 trong ngày r đó. ngon thật sự', CAST(N'2021-06-24T14:56:48.1791177' AS DateTime2), 92, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 52, 5, N'cay qua troi lun a', CAST(N'2021-06-24T14:57:19.5480174' AS DateTime2), 92, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 53, 5, N'mình mua cho cả nhà ăn. ai cũng khen ngon tấm tắc hehe', CAST(N'2021-06-24T14:57:39.5186506' AS DateTime2), 92, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 54, 3, N'cung dc', CAST(N'2021-06-24T14:58:05.3311081' AS DateTime2), 92, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 56, 5, N'đúng chuẩn vị tui á ngon', CAST(N'2021-06-24T14:58:27.5606911' AS DateTime2), 92, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 57, 5, N'ngon k tả dc', CAST(N'2021-06-24T14:58:49.4812461' AS DateTime2), 92, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 45, 5, N'yumi yumi ngon quá xá', CAST(N'2021-06-24T15:30:14.1828071' AS DateTime2), 93, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 40, 5, N'tín đồ của trà sữa như tui đã đổ gục trước món trà sữa ở quán mình', CAST(N'2021-06-24T15:30:03.0156209' AS DateTime2), 94, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 56, 5, N'món quá ngon', CAST(N'2021-06-24T15:29:38.0085250' AS DateTime2), 95, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 48, 5, N'ta nói nó ngon k thể cưỡng lại được', CAST(N'2021-06-24T15:29:16.7334391' AS DateTime2), 96, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 40, 4, N'ngon', CAST(N'2021-06-25T21:58:24.4914021' AS DateTime2), 102, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 51, 4, N'tốt', CAST(N'2021-06-25T21:58:31.2351817' AS DateTime2), 102, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 40, 4, N'ngon', CAST(N'2021-06-25T21:52:52.8950218' AS DateTime2), 103, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 40, 4, N'ngon', CAST(N'2021-07-08T15:49:23.6289225' AS DateTime2), 117, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 44, 4, N'ngon lắm', CAST(N'2021-07-14T12:06:13.8837950' AS DateTime2), 119, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 48, 4, N'bò nhiều dễ sợ ', CAST(N'2021-07-14T12:06:07.8968217' AS DateTime2), 119, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 37, 3, N'mùa hè làm 1 ly còn gì bằng', CAST(N'2021-07-14T12:05:19.9655693' AS DateTime2), 121, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 41, 5, N'siêu đỉnh', CAST(N'2021-07-14T12:05:34.0737368' AS DateTime2), 121, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 44, 4, N'pefect', CAST(N'2021-07-14T12:05:41.5381755' AS DateTime2), 121, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 53, 4, N'ngon quá điiiiiii', CAST(N'2021-07-14T12:04:17.0509460' AS DateTime2), 122, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 54, 5, N'ngon thực sự', CAST(N'2021-07-14T12:04:35.7924306' AS DateTime2), 122, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 55, 4, N'qua ok', CAST(N'2021-07-14T12:04:38.9225712' AS DateTime2), 122, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 56, 3, N'hơi tệ so với mong đợi', CAST(N'2021-07-14T12:04:49.9233558' AS DateTime2), 122, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 58, 4, N'ngon!!!', CAST(N'2021-07-14T12:04:57.0034322' AS DateTime2), 122, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 44, 5, N'100 điểmmmm', CAST(N'2021-07-14T12:09:50.7551913' AS DateTime2), 124, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 45, 5, N'ngon quá', CAST(N'2021-07-14T12:09:55.8830393' AS DateTime2), 124, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 54, 5, N'ngon thật sự', CAST(N'2021-07-14T12:10:10.1826438' AS DateTime2), 124, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 40, 1, N'do qua', CAST(N'2024-04-05T20:42:27.3364359' AS DateTime2), 127, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 40, 5, N'rat ngon', CAST(N'2024-04-05T20:37:37.6683753' AS DateTime2), 128, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 53, 5, N'ngon lam ', CAST(N'2024-04-05T20:44:34.3895559' AS DateTime2), 129, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 44, 5, N'tuyet cmn voi', CAST(N'2024-04-05T21:43:52.6795628' AS DateTime2), 130, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 40, 4, N'rat ngon', CAST(N'2024-04-05T21:27:49.3314069' AS DateTime2), 131, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 44, 4, N'rat ngon', CAST(N'2024-04-05T21:27:54.2052525' AS DateTime2), 131, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 40, 5, N'rat ngon', CAST(N'2024-04-05T21:36:47.1537251' AS DateTime2), 132, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 56, 3, N'ngon vcc', CAST(N'2024-04-05T21:55:28.6096551' AS DateTime2), 133, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 40, 5, N'te', CAST(N'2024-04-05T21:58:40.5440990' AS DateTime2), 134, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 51, 4, N'ngon', CAST(N'2024-04-06T03:01:14.6177117' AS DateTime2), 135, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 53, 4, N'ngon', CAST(N'2024-04-13T14:23:49.6555438' AS DateTime2), 137, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 40, 5, N'rat ngon', CAST(N'2024-04-27T11:32:48.5448158' AS DateTime2), 138, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 40, 5, N'ok', CAST(N'2024-05-04T14:48:07.8989081' AS DateTime2), 139, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 52, 5, N'tot', CAST(N'2024-05-04T14:48:29.1496331' AS DateTime2), 139, 0, NULL)
INSERT [dbo].[Rating] ([AppUserId], [FoodID], [Star], [Comment], [TimeCreate], [OrderID], [IsDeleted], [TimeDeleted]) VALUES (NULL, 40, 5, N'rat ngon', CAST(N'2024-06-07T13:17:03.1708387' AS DateTime2), 143, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[SaleCampaign] ON 

INSERT [dbo].[SaleCampaign] ([ID], [Name], [Desciption], [StartDate], [EndDate], [Percent], [Enabled], [Priority], [IsDeleted], [TimeDeleted]) VALUES (1, N'Ăn no không lo giá | Giảm 15%', N'Giảm 15% tất cả các món ăn trong danh sách', CAST(N'2021-05-11T16:39:00.0000000' AS DateTime2), CAST(N'2024-11-06T16:39:00.0000000' AS DateTime2), 15, 1, 1, 0, NULL)
INSERT [dbo].[SaleCampaign] ([ID], [Name], [Desciption], [StartDate], [EndDate], [Percent], [Enabled], [Priority], [IsDeleted], [TimeDeleted]) VALUES (2, N'Cùng ăn nào | Giảm 30%', N'Giảm 30%', CAST(N'2021-05-27T21:24:00.0000000' AS DateTime2), CAST(N'2024-10-31T21:24:00.0000000' AS DateTime2), 30, 0, 0, 0, NULL)
SET IDENTITY_INSERT [dbo].[SaleCampaign] OFF
GO
INSERT [dbo].[SaleCampaignFood] ([FoodID], [SaleCampaignID], [IsDeleted], [TimeDeleted]) VALUES (40, 1, 0, NULL)
INSERT [dbo].[SaleCampaignFood] ([FoodID], [SaleCampaignID], [IsDeleted], [TimeDeleted]) VALUES (51, 1, 0, NULL)
INSERT [dbo].[SaleCampaignFood] ([FoodID], [SaleCampaignID], [IsDeleted], [TimeDeleted]) VALUES (53, 1, 0, NULL)
INSERT [dbo].[SaleCampaignFood] ([FoodID], [SaleCampaignID], [IsDeleted], [TimeDeleted]) VALUES (56, 1, 0, NULL)
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AppRole] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AppUser] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [TimeCreateJWT]
GO
ALTER TABLE [dbo].[AppUser] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [RefreshTokenExpire]
GO
ALTER TABLE [dbo].[AppUser] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Cart] ADD  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Category] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Food] ADD  DEFAULT ((0)) FOR [Count]
GO
ALTER TABLE [dbo].[Food] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[FoodCategory] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Notification] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsPaid]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT (N'') FOR [AddressName]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT (N'') FOR [AddressString]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [FinalTotalPrice]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  DEFAULT ((1)) FOR [Amount]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[OrderStatus] ADD  DEFAULT (N'Body') FOR [PNBody]
GO
ALTER TABLE [dbo].[OrderStatus] ADD  DEFAULT (N'Title') FOR [PNTitle]
GO
ALTER TABLE [dbo].[Promotion] ADD  DEFAULT ('2021-07-17T20:18:18.4062913+07:00') FOR [StartDate]
GO
ALTER TABLE [dbo].[Promotion] ADD  DEFAULT ('2021-07-17T20:18:18.4079337+07:00') FOR [EndDate]
GO
ALTER TABLE [dbo].[Promotion] ADD  DEFAULT (CONVERT([real],(10))) FOR [Percent]
GO
ALTER TABLE [dbo].[Promotion] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Enabled]
GO
ALTER TABLE [dbo].[Promotion] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsGlobal]
GO
ALTER TABLE [dbo].[Promotion] ADD  DEFAULT ((0)) FOR [Priority]
GO
ALTER TABLE [dbo].[Promotion] ADD  DEFAULT (N'default.png') FOR [ImagePath]
GO
ALTER TABLE [dbo].[Promotion] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Rating] ADD  DEFAULT ((5)) FOR [Star]
GO
ALTER TABLE [dbo].[Rating] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [TimeCreate]
GO
ALTER TABLE [dbo].[Rating] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[SaleCampaign] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[SaleCampaignFood] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_AppUser_AppUserID] FOREIGN KEY([AppUserID])
REFERENCES [dbo].[AppUser] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_AppUser_AppUserID]
GO
ALTER TABLE [dbo].[AppRoleClaim]  WITH CHECK ADD  CONSTRAINT [FK_AppRoleClaim_AppRole_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AppRole] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppRoleClaim] CHECK CONSTRAINT [FK_AppRoleClaim_AppRole_RoleId]
GO
ALTER TABLE [dbo].[AppUserClaim]  WITH CHECK ADD  CONSTRAINT [FK_AppUserClaim_AppUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUser] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppUserClaim] CHECK CONSTRAINT [FK_AppUserClaim_AppUser_UserId]
GO
ALTER TABLE [dbo].[AppUserLogin]  WITH CHECK ADD  CONSTRAINT [FK_AppUserLogin_AppUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUser] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppUserLogin] CHECK CONSTRAINT [FK_AppUserLogin_AppUser_UserId]
GO
ALTER TABLE [dbo].[AppUserRole]  WITH CHECK ADD  CONSTRAINT [FK_AppUserRole_AppRole_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AppRole] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppUserRole] CHECK CONSTRAINT [FK_AppUserRole_AppRole_RoleId]
GO
ALTER TABLE [dbo].[AppUserRole]  WITH CHECK ADD  CONSTRAINT [FK_AppUserRole_AppUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUser] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppUserRole] CHECK CONSTRAINT [FK_AppUserRole_AppUser_UserId]
GO
ALTER TABLE [dbo].[AppUserToken]  WITH CHECK ADD  CONSTRAINT [FK_AppUserToken_AppUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUser] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppUserToken] CHECK CONSTRAINT [FK_AppUserToken_AppUser_UserId]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_AppUser_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AppUser] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_AppUser_AppUserId]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Food_FoodID] FOREIGN KEY([FoodID])
REFERENCES [dbo].[Food] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Food_FoodID]
GO
ALTER TABLE [dbo].[Food]  WITH CHECK ADD  CONSTRAINT [FK_Food_SaleCampaign_SaleCampaignID] FOREIGN KEY([SaleCampaignID])
REFERENCES [dbo].[SaleCampaign] ([ID])
GO
ALTER TABLE [dbo].[Food] CHECK CONSTRAINT [FK_Food_SaleCampaign_SaleCampaignID]
GO
ALTER TABLE [dbo].[FoodCategory]  WITH CHECK ADD  CONSTRAINT [FK_FoodCategory_Category_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FoodCategory] CHECK CONSTRAINT [FK_FoodCategory_Category_CategoryID]
GO
ALTER TABLE [dbo].[FoodCategory]  WITH CHECK ADD  CONSTRAINT [FK_FoodCategory_Food_FoodID] FOREIGN KEY([FoodID])
REFERENCES [dbo].[Food] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FoodCategory] CHECK CONSTRAINT [FK_FoodCategory_Food_FoodID]
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_AppUser_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[AppUser] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_AppUser_UserID]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_AppUser_AppUserID] FOREIGN KEY([AppUserID])
REFERENCES [dbo].[AppUser] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_AppUser_AppUserID]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus_OrderStatusID] FOREIGN KEY([OrderStatusID])
REFERENCES [dbo].[OrderStatus] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus_OrderStatusID]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Promotion_PromotionID] FOREIGN KEY([PromotionID])
REFERENCES [dbo].[Promotion] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Promotion_PromotionID]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_SaleCampaign_SaleCampaignID] FOREIGN KEY([SaleCampaignID])
REFERENCES [dbo].[SaleCampaign] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_SaleCampaign_SaleCampaignID]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Food_FoodID] FOREIGN KEY([FoodID])
REFERENCES [dbo].[Food] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Food_FoodID]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order_OrderID]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_SaleCampaign_SaleCampaignID] FOREIGN KEY([SaleCampaignID])
REFERENCES [dbo].[SaleCampaign] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_SaleCampaign_SaleCampaignID]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_AppUser_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AppUser] ([Id])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_AppUser_AppUserId]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Food_FoodID] FOREIGN KEY([FoodID])
REFERENCES [dbo].[Food] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Food_FoodID]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Order_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Order_OrderID]
GO
ALTER TABLE [dbo].[SaleCampaignFood]  WITH CHECK ADD  CONSTRAINT [FK_SaleCampaignFood_Food_FoodID] FOREIGN KEY([FoodID])
REFERENCES [dbo].[Food] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SaleCampaignFood] CHECK CONSTRAINT [FK_SaleCampaignFood_Food_FoodID]
GO
ALTER TABLE [dbo].[SaleCampaignFood]  WITH CHECK ADD  CONSTRAINT [FK_SaleCampaignFood_SaleCampaign_SaleCampaignID] FOREIGN KEY([SaleCampaignID])
REFERENCES [dbo].[SaleCampaign] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SaleCampaignFood] CHECK CONSTRAINT [FK_SaleCampaignFood_SaleCampaign_SaleCampaignID]
GO
