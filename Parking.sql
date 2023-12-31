USE [master]
GO
/****** Object:  Database [Parking]    Script Date: 2023/5/01 06:54:37 PM ******/
CREATE DATABASE [Parking]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Parking', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Parking.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Parking_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Parking_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Parking] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Parking].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Parking] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Parking] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Parking] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Parking] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Parking] SET ARITHABORT OFF 
GO
ALTER DATABASE [Parking] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Parking] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Parking] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Parking] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Parking] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Parking] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Parking] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Parking] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Parking] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Parking] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Parking] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Parking] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Parking] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Parking] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Parking] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Parking] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Parking] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Parking] SET RECOVERY FULL 
GO
ALTER DATABASE [Parking] SET  MULTI_USER 
GO
ALTER DATABASE [Parking] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Parking] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Parking] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Parking] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Parking] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Parking', N'ON'
GO
USE [Parking]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 2023/5/01 06:54:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Booking](
	[Id] [varchar](50) NULL,
	[Section] [varchar](50) NULL,
	[Slot] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
	[ST] [varchar](50) NULL,
	[ET] [varchar](50) NULL,
	[Hrs] [varchar](50) NULL,
	[Sname] [varchar](50) NULL,
	[Sclass] [varchar](50) NULL,
	[Sid] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 2023/5/01 06:54:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feedback](
	[Sname] [varchar](50) NULL,
	[Msg] [varchar](max) NULL,
	[DateTime] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 2023/5/01 06:54:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[Sid] [varchar](50) NULL,
	[SName] [varchar](50) NULL,
	[Class] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[DOB] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Pass] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Booking] ([Id], [Section], [Slot], [Date], [ST], [ET], [Hrs], [Sname], [Sclass], [Sid]) VALUES (N'1', N'G1', N'Slot 3', N'2016-12-24', N'14:00', N'17:00', N'3 hrs', N'TestStud', N'FY', N'1001')
INSERT [dbo].[Booking] ([Id], [Section], [Slot], [Date], [ST], [ET], [Hrs], [Sname], [Sclass], [Sid]) VALUES (N'1', N'G4', N'Slot 3', N'2016-12-25', N'10:00', N'13:00', N'3 hrs', N'Hardik', N'SY', N'1002')
INSERT [dbo].[Booking] ([Id], [Section], [Slot], [Date], [ST], [ET], [Hrs], [Sname], [Sclass], [Sid]) VALUES (N'1', N'P1', N'Slot 28', N'2016-12-25', N'13:00', N'16:00', N'3 hrs', N'Hardik', N'SY', N'1002')
INSERT [dbo].[Feedback] ([Sname], [Msg], [DateTime]) VALUES (N'TestStud', N'Very much easier to book a slot for parking of my vehicle.', N'2016-12-24 18:21')
INSERT [dbo].[Feedback] ([Sname], [Msg], [DateTime]) VALUES (N'Hardik', N'Nice GUI.', N'2016-12-24 18:35')
INSERT [dbo].[Student] ([Sid], [SName], [Class], [Mobile], [Email], [DOB], [Gender], [Pass]) VALUES (N'1001', N'soufiane', N'FY', N'9876543215', N'amribtsoufiane@gmail.com', N'2023-05-11', N'Male', N'1234')
INSERT [dbo].[Student] ([Sid], [SName], [Class], [Mobile], [Email], [DOB], [Gender], [Pass]) VALUES (N'1002', N'Hardik', N'SY', N'9876543210', N'testemail@gmail.com', N'1992-05-04', N'Male', N'dg82dg')
USE [master]
GO
ALTER DATABASE [Parking] SET  READ_WRITE 
GO
