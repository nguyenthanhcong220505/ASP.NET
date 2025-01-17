USE [master]
GO
/****** Object:  Database [ASPNET]    Script Date: 1/15/2025 2:49:03 PM ******/
CREATE DATABASE [ASPNET]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ASPNET', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLTHANHCONG\MSSQL\DATA\ASPNET.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ASPNET_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLTHANHCONG\MSSQL\DATA\ASPNET_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ASPNET] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ASPNET].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ASPNET] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ASPNET] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ASPNET] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ASPNET] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ASPNET] SET ARITHABORT OFF 
GO
ALTER DATABASE [ASPNET] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ASPNET] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ASPNET] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ASPNET] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ASPNET] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ASPNET] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ASPNET] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ASPNET] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ASPNET] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ASPNET] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ASPNET] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ASPNET] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ASPNET] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ASPNET] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ASPNET] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ASPNET] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ASPNET] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ASPNET] SET RECOVERY FULL 
GO
ALTER DATABASE [ASPNET] SET  MULTI_USER 
GO
ALTER DATABASE [ASPNET] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ASPNET] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ASPNET] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ASPNET] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ASPNET] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ASPNET] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ASPNET', N'ON'
GO
ALTER DATABASE [ASPNET] SET QUERY_STORE = OFF
GO
USE [ASPNET]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 1/15/2025 2:49:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[BrandID] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CreateAt] [datetime] NULL,
	[CreateBy] [nvarchar](100) NULL,
	[UpdateAt] [datetime] NULL,
	[UpdateBy] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/15/2025 2:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CreateAt] [datetime] NULL,
	[CreateBy] [nvarchar](100) NULL,
	[UpdateAt] [datetime] NULL,
	[UpdateBy] [nvarchar](100) NULL,
	[Image] [nvarchar](255) NULL,
	[CategoryImage] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 1/15/2025 2:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[UserId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedOnUtc] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 1/15/2025 2:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 1/15/2025 2:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[ShortDescription] [nvarchar](500) NULL,
	[FullDescription] [nvarchar](max) NULL,
	[ProductImage] [nvarchar](255) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[BrandID] [int] NOT NULL,
	[CreateAt] [datetime] NULL,
	[CreateBy] [nvarchar](100) NULL,
	[UpdateAt] [datetime] NULL,
	[UpdateBy] [nvarchar](100) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/15/2025 2:49:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[idUser] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([BrandID], [BrandName], [Description], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1, N'Apple', N'Thương hiệu Apple', CAST(N'2024-12-11T13:49:19.803' AS DateTime), N'Admin', CAST(N'2024-12-11T13:49:19.803' AS DateTime), NULL)
INSERT [dbo].[Brand] ([BrandID], [BrandName], [Description], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (2, N'Sony', N'Thương hiệu Sony', CAST(N'2024-12-11T13:49:19.803' AS DateTime), N'Admin', CAST(N'2024-12-11T13:49:19.803' AS DateTime), NULL)
INSERT [dbo].[Brand] ([BrandID], [BrandName], [Description], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (3, N'Dell', N'Thương hiệu Dell', CAST(N'2024-12-11T13:49:19.803' AS DateTime), N'Admin', CAST(N'2024-12-11T13:49:19.803' AS DateTime), NULL)
INSERT [dbo].[Brand] ([BrandID], [BrandName], [Description], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (4, N'Apple', N'Thương hiệu Apple', CAST(N'2024-12-11T13:51:28.847' AS DateTime), N'Admin', CAST(N'2024-12-11T13:51:28.847' AS DateTime), NULL)
INSERT [dbo].[Brand] ([BrandID], [BrandName], [Description], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (5, N'Sony', N'Thương hiệu Sony', CAST(N'2024-12-11T13:51:28.847' AS DateTime), N'Admin', CAST(N'2024-12-11T13:51:28.847' AS DateTime), NULL)
INSERT [dbo].[Brand] ([BrandID], [BrandName], [Description], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (6, N'Dell', N'Thương hiệu Dell', CAST(N'2024-12-11T13:51:28.847' AS DateTime), N'Admin', CAST(N'2024-12-11T13:51:28.847' AS DateTime), NULL)
INSERT [dbo].[Brand] ([BrandID], [BrandName], [Description], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (7, N'Apple', N'Thương hiệu Apple', CAST(N'2024-12-18T13:11:39.877' AS DateTime), N'Admin', CAST(N'2024-12-18T13:11:39.877' AS DateTime), NULL)
INSERT [dbo].[Brand] ([BrandID], [BrandName], [Description], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (8, N'Sony', N'Thương hiệu Sony', CAST(N'2024-12-18T13:11:39.877' AS DateTime), N'Admin', CAST(N'2024-12-18T13:11:39.877' AS DateTime), NULL)
INSERT [dbo].[Brand] ([BrandID], [BrandName], [Description], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (9, N'Dell', N'Thương hiệu Dell', CAST(N'2024-12-18T13:11:39.877' AS DateTime), N'Admin', CAST(N'2024-12-18T13:11:39.877' AS DateTime), NULL)
INSERT [dbo].[Brand] ([BrandID], [BrandName], [Description], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (10, N'Apple', N'Thương hiệu Apple', CAST(N'2024-12-18T17:17:13.720' AS DateTime), N'Admin', CAST(N'2024-12-18T17:17:13.720' AS DateTime), NULL)
INSERT [dbo].[Brand] ([BrandID], [BrandName], [Description], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (11, N'Sony', N'Thương hiệu Sony', CAST(N'2024-12-18T17:17:13.720' AS DateTime), N'Admin', CAST(N'2024-12-18T17:17:13.720' AS DateTime), NULL)
INSERT [dbo].[Brand] ([BrandID], [BrandName], [Description], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (12, N'Dell', N'Thương hiệu Dell', CAST(N'2024-12-18T17:17:13.720' AS DateTime), N'Admin', CAST(N'2024-12-18T17:17:13.720' AS DateTime), NULL)
INSERT [dbo].[Brand] ([BrandID], [BrandName], [Description], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (13, N'Apple', N'Thương hiệu Apple', CAST(N'2024-12-23T13:19:44.480' AS DateTime), N'Admin', CAST(N'2024-12-23T13:19:44.480' AS DateTime), NULL)
INSERT [dbo].[Brand] ([BrandID], [BrandName], [Description], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (14, N'Sony', N'Thương hiệu Sony', CAST(N'2024-12-23T13:19:44.480' AS DateTime), N'Admin', CAST(N'2024-12-23T13:19:44.480' AS DateTime), NULL)
INSERT [dbo].[Brand] ([BrandID], [BrandName], [Description], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (15, N'Dell', N'Thương hiệu Dell', CAST(N'2024-12-23T13:19:44.480' AS DateTime), N'Admin', CAST(N'2024-12-23T13:19:44.480' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Image], [CategoryImage]) VALUES (1, N'Điện thoại', N'Danh mục các sản phẩm điện thoại', CAST(N'2024-12-11T13:49:15.023' AS DateTime), N'Admin', CAST(N'2024-12-11T13:49:15.023' AS DateTime), NULL, N'18.jpg', NULL)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Image], [CategoryImage]) VALUES (2, N'Âm thanh', N'Danh mục các thiết bị âm thanh', CAST(N'2024-12-11T13:49:15.023' AS DateTime), N'Admin', CAST(N'2024-12-11T13:49:15.023' AS DateTime), NULL, N'19.jpg', NULL)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Image], [CategoryImage]) VALUES (3, N'Máy tính', N'Danh mục các thiết bị máy tính', CAST(N'2024-12-11T13:49:15.023' AS DateTime), N'Admin', CAST(N'2024-12-11T13:49:15.023' AS DateTime), NULL, N'20.jpg', NULL)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Image], [CategoryImage]) VALUES (4, N'Phụ kiện', N'Danh mục các sản phẩm điện thoại', CAST(N'2024-12-11T13:51:23.893' AS DateTime), N'Admin', CAST(N'2024-12-11T13:51:23.893' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Image], [CategoryImage]) VALUES (31, N'Đi?n tho?i', N'Danh m?c các s?n ph?m đi?n tho?i di đ?ng', CAST(N'2025-01-15T13:34:21.997' AS DateTime), N'Admin', CAST(N'2025-01-15T13:34:21.997' AS DateTime), N'Admin', NULL, N'https://example.com/images/dien-thoai.jpg')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Image], [CategoryImage]) VALUES (32, N'Laptop', N'Danh m?c các s?n ph?m máy tính xách tay', CAST(N'2025-01-15T13:34:21.997' AS DateTime), N'Admin', CAST(N'2025-01-15T13:34:21.997' AS DateTime), N'Admin', NULL, N'https://example.com/images/laptop.jpg')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Image], [CategoryImage]) VALUES (33, N'Ph? ki?n', N'Danh m?c các s?n ph?m ph? ki?n công ngh?', CAST(N'2025-01-15T13:34:21.997' AS DateTime), N'Admin', CAST(N'2025-01-15T13:34:21.997' AS DateTime), N'Admin', NULL, N'https://example.com/images/phu-kien.jpg')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (1, N'DonHang-20241225154914', 1, 17, CAST(N'2024-12-25T15:49:14.680' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (2, N'DonHang-20241230124405', 1, 17, CAST(N'2024-12-30T12:44:05.330' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (3, N'DonHang-20241230155337', 1, 17, CAST(N'2024-12-30T15:53:37.157' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (4, N'DonHang-20250108140338', 1, 17, CAST(N'2025-01-08T14:03:38.170' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (5, N'DonHang-20250108140544', 1, 17, CAST(N'2025-01-08T14:05:44.440' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (6, N'DonHang-20250108140552', 1, 17, CAST(N'2025-01-08T14:05:52.657' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (7, N'DonHang-20250108140751', 1, 17, CAST(N'2025-01-08T14:07:51.233' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (8, N'DonHang-20250108142914', 1, 17, CAST(N'2025-01-08T14:29:14.120' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (9, N'DonHang-20250108143513', 1, 17, CAST(N'2025-01-08T14:35:13.140' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (10, N'DonHang-20250115142802', 1, 17, CAST(N'2025-01-15T14:28:02.323' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (11, N'DonHang-20250115142820', 1, 17, CAST(N'2025-01-15T14:28:20.047' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (12, N'DonHang-20250115143047', 1, 17, CAST(N'2025-01-15T14:30:47.200' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (13, N'DonHang-20250115143230', 1, 17, CAST(N'2025-01-15T14:32:30.920' AS DateTime))
INSERT [dbo].[Order] ([Id], [Name], [UserId], [Status], [CreatedOnUtc]) VALUES (14, N'DonHang-20250115144523', 2, 17, CAST(N'2025-01-15T14:45:23.673' AS DateTime))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (1, 1, 1, 2)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (2, 2, 1, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (3, 3, 1, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (4, 4, 1, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (5, 5, 2, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (6, 6, 2, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (7, 7, 2, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (8, 8, 2, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (9, 9, 1, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (10, 10, 1, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (11, 11, 1, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (12, 12, 1, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (13, 13, 1, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (14, 14, 1, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDescription], [FullDescription], [ProductImage], [Price], [CategoryID], [BrandID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Status]) VALUES (1, N'iPhone 16 Pro Max 256GB |', N'Mẫu iPhone mới nhất với hiệu năng vượt trội.', N'Màn hình Super Retina XDR 6,9 inch lớn hơn có viền mỏng hơn, đem đến cảm giác tuyệt vời khi cầm trên tay.Điều khiển Camera - Chỉ cần trượt ngón tay để điều chỉnh camera giúp chụp ảnh hoặc quay video đẹp hoàn hảo và siêu nhanh.', N'iphone-16-pro-max.jpg', CAST(33900000.00 AS Decimal(18, 2)), 1, 1, CAST(N'2024-12-11T13:51:45.000' AS DateTime), N'Admin', CAST(N'2024-12-11T13:51:45.000' AS DateTime), N'Admin', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDescription], [FullDescription], [ProductImage], [Price], [CategoryID], [BrandID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Status]) VALUES (2, N'Tai nghe Sony WH-1000XM5', N'Tai nghe chống ồn tốt nhất trên thị trường.', N'Trải nghiệm âm thanh chất lượng cao với công nghệ OPPO Alive Audio và driver 13.4mm
Thời lượng pin ấn tượng dùng lên đến 35 giờ với hộp sạc, cho bạn thoải mái nghe nhạc', N'138_1_1.jpg', CAST(890000.00 AS Decimal(18, 2)), 2, 2, CAST(N'2024-12-11T13:51:45.370' AS DateTime), N'Admin', CAST(N'2024-12-11T13:51:45.370' AS DateTime), N'Admin', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDescription], [FullDescription], [ProductImage], [Price], [CategoryID], [BrandID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Status]) VALUES (3, N'Máy tính xách tay Dell XPS 15', N'Vi xử lý Intel Core i5-12450H, RAM 8GB và ổ cứng SSD 512GB PCIe mang đến hiệu suất mượt mà cho các tác vụ hàng ngày, chơi game và chỉnh sửa video cơ bản', N'Laptop MSI Gaming Thin 15 B12UCX-1419VN sử dụng chiếc CPU Intel Core i5-12450H với 8 nhân, 12 luồng, và card đồ họa NVIDIA GeForce RTX 2050 mạnh mẽ. Máy có RAM 8GB DDR4 cùng ổ cứng SSD M.2 PCIe dung lượng 512GB', N'text_d_i_3__3_3.jpg', CAST(45990000.00 AS Decimal(18, 2)), 3, 3, CAST(N'2024-12-11T13:51:45.370' AS DateTime), N'Admin', CAST(N'2024-12-11T13:51:45.370' AS DateTime), N'Admin', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDescription], [FullDescription], [ProductImage], [Price], [CategoryID], [BrandID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Status]) VALUES (11, N'Samsung Galaxy S24 Ultra 12GB 256GB', N'Trải nghiệm đỉnh cao với hiệu năng mạnh mẽ từ vi xử lý tân tiến, kết hợp cùng RAM 12GB cho khả năng đa nhiệm mượt mà.', N'Samsung S24 Ultra là siêu phẩm smartphone đỉnh cao mở đầu năm 2024 đến từ nhà Samsung với chip Snapdragon 8 Gen 3 For Galaxy mạnh mẽ, công nghệ tương lai Galaxy AI cùng khung viền Titan đẳng cấp hứa hẹn sẽ mang tới nhiều sự thay đổi lớn về mặt thiết kế và cấu hình.', N'galaxy-s24-ultra-xam_1_3.jpg', CAST(29990000.00 AS Decimal(18, 2)), 1, 1, CAST(N'2024-12-30T13:45:18.943' AS DateTime), N'Admin', CAST(N'2024-12-30T13:45:18.943' AS DateTime), NULL, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDescription], [FullDescription], [ProductImage], [Price], [CategoryID], [BrandID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Status]) VALUES (12, N'iPhone 13 128GB | Chính hãng VN/A
', N'Hiệu năng vượt trội - Chip Apple A15 Bionic mạnh mẽ, hỗ trợ mạng 5G tốc độ cao', N'iPhone 13 được trang bị chip A15 Bionic mạnh mẽ với 6 nhân CPU và 4 nhân GPU, cung cấp mức hiệu năng vượt trội, giúp xử lý nhanh chóng các tác vụ nặng. Màn hình Super Retina XDR 6.1 inch trên máy cũng được đánh giá cao khi mang tới hình ảnh sắc nét với độ sáng cao, tối ưu hóa trải nghiệm xem nội dung dưới mọi điều kiện ánh sáng. ', N'17.jpg', CAST(14390000.00 AS Decimal(18, 2)), 1, 1, CAST(N'2024-12-30T14:54:10.750' AS DateTime), N'Admin', CAST(N'2024-12-30T14:54:10.750' AS DateTime), NULL, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDescription], [FullDescription], [ProductImage], [Price], [CategoryID], [BrandID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Status]) VALUES (13, N'Tai nghe Bluetooth True Wireless Baseus Bowie E11', N'Màng loa kích thước 12mm cho âm thanh sống động, phù hợp với nhiều nhu cầu nghe
Chơi game không lo gián đoạn với khả năng đồng bộ hoá tốt nhờ độ trễ thấp chỉ 0.06s', N'Tai nghe Baseus Bowie E11 là tai nghe không dây có cấu trúc bên trong là driver 12mm với khả năng mang đến âm thanh Hi-Fi có sống động và chân thực. Kết hợp với đó là microphone cùng công nghệ chống ồn chủ động ENC giúp bạn có thể thoải mái đàm thoại. Với dung lượng pin đến 400mAh, tai nghe có thể hoạt động liên tục trong 15 giờ. ', N'21.jpg', CAST(690000.00 AS Decimal(18, 2)), 2, 2, CAST(N'2024-12-30T15:04:30.830' AS DateTime), N'Admin', CAST(N'2024-12-30T15:04:30.830' AS DateTime), NULL, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDescription], [FullDescription], [ProductImage], [Price], [CategoryID], [BrandID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Status]) VALUES (14, N'Laptop ASUS ROG Strix G16 G614JU-N4132W', N'Trang bị bộ vi xử lý Intel Core i7-13650HX mạnh mẽ, RAM 16GB và card đồ họa NVIDIA GeForce RTX 4050 6GB.
Màn hình 16 inch QHD+ (2560x1600) với tần số quét 240Hz mang đến hình ảnh sắc nét, sống động và mượt mà cho mọi tác vụ từ chơi game đến thiết kế đồ họa.', N'Laptop Asus ROG Strix G16 G614JU-N4132W được trang bị bộ vi xử lý Intel Core i7-13650HX với xung nhịp 2.6 - 4.9 GHz, RAM 16GB và bộ nhớ trong 512GB. Laptop trang bị màn hình QHD+ 16 inch, tốc độ làm mới 240Hz với công nghệ G-SYNC. Ngoài ra, laptop còn được trang bị pin 4-cell Li-ion dung lượng lớn 90WHrs cùng đa dạng cổng kết nối.', N'22.jpg', CAST(35490000.00 AS Decimal(18, 2)), 3, 3, CAST(N'2024-12-30T15:10:14.890' AS DateTime), N'Admin', CAST(N'2024-12-30T15:10:14.890' AS DateTime), NULL, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDescription], [FullDescription], [ProductImage], [Price], [CategoryID], [BrandID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Status]) VALUES (15, N'iPhone 15 Pro Max 256GB | Chính hãng VN/A', N'Thiết kế khung viền từ titan chuẩn hàng không vũ trụ - Cực nhẹ, bền cùng viền cạnh mỏng cầm nắm thoải mái
Hiệu năng Pro chiến game thả ga - Chip A17 Pro mang lại hiệu năng đồ họa vô cùng sống động và chân thực
Thoả sức sáng tạo và quay phim chuyên nghiệp - Cụm 3 camera sau đến 48MP và nhiều chế độ tiên tiến
Nút tác vụ mới giúp nhanh chóng kích hoạt tính năng yêu thích của bạn', N'iPhone 15 Pro Max hứa hẹn đem tới trải nghiệm hình ảnh với độ sắc nét và mượt mà cao nhờ sở hữu màn hình Super Retina XDR OLED 6.7 inch tần số quét 120Hz. Nhờ vận hành với chipset A17 Pro sản xuất trên tiến trình 3nm, thế hệ iPhone 15 bản Pro Max đảm bảo vận hành mạnh mẽ và tiết kiệm pin tối ưu. Đặc biệt, máy còn sở hữu cụm camera chính 48MP cùng khả năng zoom quang học 5x, giúp iPhone 15 Pro Max trở thành lựa chọn tuyệt vời cho người đam mê nhiếp ảnh và quay phim chuyên nghiệp.', N'23.jpg', CAST(29290000.00 AS Decimal(18, 2)), 1, 1, CAST(N'2025-01-08T15:05:05.660' AS DateTime), N'Admin', CAST(N'2025-01-08T15:05:05.660' AS DateTime), N'Admin', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDescription], [FullDescription], [ProductImage], [Price], [CategoryID], [BrandID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Status]) VALUES (16, N'iPhone 12 Pro Max 128GB I Chính hãng VN/A', N'Mạnh mẽ, siêu nhanh với chip A14, RAM 6GB, mạng 5G tốc độ cao
Rực rỡ, sắc nét, độ sáng cao - Màn hình OLED cao cấp, Super Retina XDR hỗ trợ HDR10, Dolby Vision', N'Sản phẩm thu lại từ khách hàng không còn nhu cầu sử dụng, ngoại hình trầy nhẹ thân máy, mặt kính màn hình (Một số sản phẩm có thể đã qua bảo hành hãng hoặc sửa chữa thay thế linh kiện) Có nguồn gốc rõ ràng, xuất hoá đơn eVAT.', N'24.jpg', CAST(23490000.00 AS Decimal(18, 2)), 1, 1, CAST(N'2025-01-08T15:10:07.930' AS DateTime), N'Admin', CAST(N'2025-01-08T15:10:07.930' AS DateTime), N'Admin', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDescription], [FullDescription], [ProductImage], [Price], [CategoryID], [BrandID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Status]) VALUES (17, N'edrfgh', N'defrgthyk', N'wefrgthyu', N'2.jpg', CAST(25590000.00 AS Decimal(18, 2)), 1, 3, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDescription], [FullDescription], [ProductImage], [Price], [CategoryID], [BrandID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Status]) VALUES (18, N'dyukl', N'dfghjk', N'iuytrd', N'3.jpg', CAST(29990000.00 AS Decimal(18, 2)), 2, 10, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([idUser], [FirstName], [LastName], [Email], [Password]) VALUES (1, N'cong', N'thanhcong', N'nguyenthanhcong12a9.hvt@gmail.com', N'e10adc3949ba59abbe56e057f20f883e')
INSERT [dbo].[Users] ([idUser], [FirstName], [LastName], [Email], [Password]) VALUES (2, N'thanhcong', N'nguyen', N'thanhcong@gmail.com', N'e10adc3949ba59abbe56e057f20f883e')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Brand] ADD  DEFAULT (getdate()) FOR [CreateAt]
GO
ALTER TABLE [dbo].[Brand] ADD  DEFAULT (getdate()) FOR [UpdateAt]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (getdate()) FOR [CreateAt]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (getdate()) FOR [UpdateAt]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT (getdate()) FOR [CreateAt]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT (getdate()) FOR [UpdateAt]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([BrandID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Products_Brands]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Products_Categories]
GO
USE [master]
GO
ALTER DATABASE [ASPNET] SET  READ_WRITE 
GO
