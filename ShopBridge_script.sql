USE [master]
GO
/****** Object:  Database [ShopBridge]    Script Date: 6/20/2022 12:45:04 AM ******/
CREATE DATABASE [ShopBridge]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopBridge', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ShopBridge.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ShopBridge_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ShopBridge_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ShopBridge] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopBridge].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopBridge] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopBridge] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopBridge] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopBridge] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopBridge] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopBridge] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ShopBridge] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopBridge] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopBridge] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopBridge] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopBridge] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopBridge] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopBridge] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopBridge] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopBridge] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ShopBridge] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopBridge] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopBridge] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopBridge] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopBridge] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopBridge] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopBridge] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopBridge] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShopBridge] SET  MULTI_USER 
GO
ALTER DATABASE [ShopBridge] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopBridge] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopBridge] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopBridge] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ShopBridge] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ShopBridge]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/20/2022 12:45:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Ctgry_Id] [int] IDENTITY(1,1) NOT NULL,
	[Category_Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ctgry_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_Inventory]    Script Date: 6/20/2022 12:45:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Inventory](
	[Product_Id] [int] IDENTITY(1,1) NOT NULL,
	[Product_Name] [nvarchar](255) NULL,
	[Product_Description] [nvarchar](255) NULL,
	[Product_Quantity] [int] NULL,
	[Product_Price] [int] NULL,
	[Product_Category] [int] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreaedDate] [datetime] NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[DeleteddBy] [varchar](100) NULL,
	[DeletedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Product_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Login]    Script Date: 6/20/2022 12:45:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Login](
	[Login_Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Login_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Ctgry_Id], [Category_Name]) VALUES (1, N'Mobile')
INSERT [dbo].[Category] ([Ctgry_Id], [Category_Name]) VALUES (2, N'Laptop')
INSERT [dbo].[Category] ([Ctgry_Id], [Category_Name]) VALUES (3, N'Washing Machine')
INSERT [dbo].[Category] ([Ctgry_Id], [Category_Name]) VALUES (4, N'Music System')
INSERT [dbo].[Category] ([Ctgry_Id], [Category_Name]) VALUES (5, N'AC')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[T_Inventory] ON 

INSERT [dbo].[T_Inventory] ([Product_Id], [Product_Name], [Product_Description], [Product_Quantity], [Product_Price], [Product_Category], [IsDeleted], [CreatedBy], [CreaedDate], [ModifiedBy], [ModifiedDate], [DeleteddBy], [DeletedDate]) VALUES (1, N'Dell', N'Good ', 5, 1000000, 1, 1, N'Admin', CAST(N'2022-06-20 00:29:03.217' AS DateTime), N'Admin', CAST(N'2022-06-20 00:31:20.737' AS DateTime), N'Admin', CAST(N'2022-06-20 00:34:59.547' AS DateTime))
INSERT [dbo].[T_Inventory] ([Product_Id], [Product_Name], [Product_Description], [Product_Quantity], [Product_Price], [Product_Category], [IsDeleted], [CreatedBy], [CreaedDate], [ModifiedBy], [ModifiedDate], [DeleteddBy], [DeletedDate]) VALUES (2, N'Dell', N'Good ', 4, 1000000, 5, NULL, N'Admin', CAST(N'2022-06-20 00:42:18.857' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[T_Inventory] ([Product_Id], [Product_Name], [Product_Description], [Product_Quantity], [Product_Price], [Product_Category], [IsDeleted], [CreatedBy], [CreaedDate], [ModifiedBy], [ModifiedDate], [DeleteddBy], [DeletedDate]) VALUES (3, N'Nokia', N'Excellent', 5, 304500, 1, NULL, N'Admin', CAST(N'2022-06-20 00:42:35.500' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[T_Inventory] OFF
SET IDENTITY_INSERT [dbo].[T_Login] ON 

INSERT [dbo].[T_Login] ([Login_Id], [Username], [Password]) VALUES (1, N'Admin', N'123')
SET IDENTITY_INSERT [dbo].[T_Login] OFF
/****** Object:  StoredProcedure [dbo].[Proc_InventoryDetail]    Script Date: 6/20/2022 12:45:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Proc_InventoryDetail](
@action nvarchar(255) =null,
@Product_Id int=0,
@Product_Name nvarchar(255)=null,
@Product_Description nvarchar (255) =null,
@Product_Quantity int=0,
@Product_Price int=0,
@Product_Category int=0,
@CreatedBy nvarchar(100) =null)
As Begin
if(@action='insert')
begin
insert into T_Inventory(Product_Name,Product_Description,Product_Quantity,Product_Price,Product_Category,CreatedBy,CreaedDate)
values (@Product_Name,@Product_Description,@Product_Quantity,@Product_Price,@Product_Category,@CreatedBy,getdate())
end
if(@action='select')
begin
Select Product_Id,Product_Name,Product_Description,Product_Quantity,Product_Price,Product_Category ,Category_Name from T_Inventory
inner join Category on T_Inventory.Product_Category=Category.Ctgry_Id where isnull(IsDeleted,0)=0
end
if(@action='delete')
begin
update T_Inventory set IsDeleted=1,DeleteddBy=@CreatedBy,DeletedDate=getdate() where Product_Id=@Product_Id
end
if(@action='edit')
begin
Select Product_Id,Product_Name,Product_Description,Product_Quantity,Product_Price,Product_Category from T_Inventory where Product_Id=@Product_Id
end
if(@action='update')
begin
update T_Inventory set Product_Name=@Product_Name,Product_Description=@Product_Description,
Product_Quantity=@Product_Quantity,Product_Price=@Product_Price,Product_Category=@Product_Category,ModifiedBy=@CreatedBy,
ModifiedDate=getdate() where Product_Id=@Product_Id
end
if(@action='select_Category')
begin
Select Ctgry_Id,Category_Name from Category order by Category_Name asc
end
End;

GO
/****** Object:  StoredProcedure [dbo].[Proc_LoginDetail]    Script Date: 6/20/2022 12:45:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Proc_LoginDetail]
(@Username nvarchar(255) = null,
@Password nvarchar(255) = null
)
As Begin 
Select * from T_Login where Username=@Username and Password=@Password
End

GO
USE [master]
GO
ALTER DATABASE [ShopBridge] SET  READ_WRITE 
GO
