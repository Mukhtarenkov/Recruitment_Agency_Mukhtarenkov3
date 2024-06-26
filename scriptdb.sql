USE [master]
GO
/****** Object:  Database [recruitment_agency]    Script Date: 6/6/2024 6:53:38 AM ******/
CREATE DATABASE [recruitment_agency]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'recruitment_agency', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\recruitment_agency.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'recruitment_agency_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\recruitment_agency_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [recruitment_agency] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [recruitment_agency].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [recruitment_agency] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [recruitment_agency] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [recruitment_agency] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [recruitment_agency] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [recruitment_agency] SET ARITHABORT OFF 
GO
ALTER DATABASE [recruitment_agency] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [recruitment_agency] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [recruitment_agency] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [recruitment_agency] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [recruitment_agency] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [recruitment_agency] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [recruitment_agency] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [recruitment_agency] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [recruitment_agency] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [recruitment_agency] SET  DISABLE_BROKER 
GO
ALTER DATABASE [recruitment_agency] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [recruitment_agency] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [recruitment_agency] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [recruitment_agency] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [recruitment_agency] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [recruitment_agency] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [recruitment_agency] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [recruitment_agency] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [recruitment_agency] SET  MULTI_USER 
GO
ALTER DATABASE [recruitment_agency] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [recruitment_agency] SET DB_CHAINING OFF 
GO
ALTER DATABASE [recruitment_agency] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [recruitment_agency] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [recruitment_agency] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [recruitment_agency] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [recruitment_agency] SET QUERY_STORE = OFF
GO
USE [recruitment_agency]
GO
/****** Object:  Table [dbo].[Resume]    Script Date: 6/6/2024 6:53:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resume](
	[IDResume] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[FamilyName] [nvarchar](50) NULL,
	[DadsName] [nvarchar](50) NULL,
	[Education] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[Proficiences] [nvarchar](max) NULL,
	[Mail] [nvarchar](50) NULL,
 CONSTRAINT [PK_Resume] PRIMARY KEY CLUSTERED 
(
	[IDResume] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 6/6/2024 6:53:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[IDRole] [int] IDENTITY(1,1) NOT NULL,
	[Role] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[IDRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sobesedovanie]    Script Date: 6/6/2024 6:53:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sobesedovanie](
	[IdSobesedovanie] [int] IDENTITY(1,1) NOT NULL,
	[Resume] [int] NULL,
	[Vacancy] [int] NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_sobesedovanie2] PRIMARY KEY CLUSTERED 
(
	[IdSobesedovanie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 6/6/2024 6:53:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[IDUser] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Role] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[IDUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacancies]    Script Date: 6/6/2024 6:53:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacancies](
	[IDVacancy] [int] IDENTITY(1,1) NOT NULL,
	[Vacancy] [nvarchar](50) NULL,
	[Employer] [nvarchar](50) NULL,
	[Specifications] [nvarchar](max) NULL,
	[Affiliation] [nvarchar](max) NULL,
	[ContanctInfo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Vacancies_1] PRIMARY KEY CLUSTERED 
(
	[IDVacancy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[sobesedovanie]  WITH CHECK ADD  CONSTRAINT [FK_sobesedovanie_Resume] FOREIGN KEY([Resume])
REFERENCES [dbo].[Resume] ([IDResume])
GO
ALTER TABLE [dbo].[sobesedovanie] CHECK CONSTRAINT [FK_sobesedovanie_Resume]
GO
ALTER TABLE [dbo].[sobesedovanie]  WITH CHECK ADD  CONSTRAINT [FK_sobesedovanie_Vacancies] FOREIGN KEY([Vacancy])
REFERENCES [dbo].[Vacancies] ([IDVacancy])
GO
ALTER TABLE [dbo].[sobesedovanie] CHECK CONSTRAINT [FK_sobesedovanie_Vacancies]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([IDRole])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [recruitment_agency] SET  READ_WRITE 
GO
