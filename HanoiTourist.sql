USE [master]
GO
/****** Object:  Database [HanoiTourist]    Script Date: 8/27/2020 5:25:27 AM ******/
CREATE DATABASE [HanoiTourist]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HanoiTourist', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL\MSSQL\DATA\HanoiTourist.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HanoiTourist_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL\MSSQL\DATA\HanoiTourist_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HanoiTourist] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HanoiTourist].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HanoiTourist] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HanoiTourist] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HanoiTourist] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HanoiTourist] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HanoiTourist] SET ARITHABORT OFF 
GO
ALTER DATABASE [HanoiTourist] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HanoiTourist] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HanoiTourist] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HanoiTourist] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HanoiTourist] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HanoiTourist] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HanoiTourist] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HanoiTourist] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HanoiTourist] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HanoiTourist] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HanoiTourist] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HanoiTourist] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HanoiTourist] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HanoiTourist] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HanoiTourist] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HanoiTourist] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HanoiTourist] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HanoiTourist] SET RECOVERY FULL 
GO
ALTER DATABASE [HanoiTourist] SET  MULTI_USER 
GO
ALTER DATABASE [HanoiTourist] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HanoiTourist] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HanoiTourist] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HanoiTourist] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [HanoiTourist] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HanoiTourist', N'ON'
GO
USE [HanoiTourist]
GO
/****** Object:  User [trung]    Script Date: 8/27/2020 5:25:27 AM ******/
CREATE USER [trung] FOR LOGIN [trung] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 8/27/2020 5:25:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country](
	[CountryId] [char](5) NOT NULL,
	[CountryName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 8/27/2020 5:25:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[UserId] [int] NOT NULL,
	[TourId] [char](10) NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [pk_Order] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[TourId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Place]    Script Date: 8/27/2020 5:25:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Place](
	[PlaceId] [char](5) NOT NULL,
	[PlaceName] [nvarchar](100) NULL,
	[CountryId] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[PlaceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 8/27/2020 5:25:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] NOT NULL,
	[RoleName] [nvarchar](100) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tour]    Script Date: 8/27/2020 5:25:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tour](
	[TourId] [char](10) NOT NULL,
	[TourPhoto] [nvarchar](100) NULL,
	[TourName] [nvarchar](100) NULL,
	[TourDescription] [nvarchar](max) NULL,
	[TourPrice] [money] NULL,
	[TourDeparture] [nvarchar](100) NULL,
	[TourDestination] [nvarchar](100) NULL,
	[TourTime] [nvarchar](100) NULL,
	[TourVehicle] [nvarchar](100) NULL,
	[TourSchedule] [nvarchar](1000) NULL,
	[PlaceId] [char](5) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[TourId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/27/2020 5:25:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Phone] [int] NULL,
	[Address] [nvarchar](100) NULL,
	[RoleId] [int] NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [fk_Order_Tour] FOREIGN KEY([TourId])
REFERENCES [dbo].[Tour] ([TourId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [fk_Order_Tour]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [fk_Order_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [fk_Order_User]
GO
ALTER TABLE [dbo].[Place]  WITH CHECK ADD  CONSTRAINT [fk_Place_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([CountryId])
GO
ALTER TABLE [dbo].[Place] CHECK CONSTRAINT [fk_Place_Country]
GO
ALTER TABLE [dbo].[Tour]  WITH CHECK ADD  CONSTRAINT [fk_Tour_Place] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[Place] ([PlaceId])
GO
ALTER TABLE [dbo].[Tour] CHECK CONSTRAINT [fk_Tour_Place]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [fk_Users_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [fk_Users_Roles]
GO
USE [master]
GO
ALTER DATABASE [HanoiTourist] SET  READ_WRITE 
GO
