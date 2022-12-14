USE [master]
GO
/****** Object:  Database [auditmanagement_db]    Script Date: 24-09-2022 15:50:55 ******/
CREATE DATABASE [auditmanagement_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'auditmanagement_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\auditmanagement_db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'auditmanagement_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\auditmanagement_db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [auditmanagement_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [auditmanagement_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [auditmanagement_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [auditmanagement_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [auditmanagement_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [auditmanagement_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [auditmanagement_db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [auditmanagement_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [auditmanagement_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [auditmanagement_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [auditmanagement_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [auditmanagement_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [auditmanagement_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [auditmanagement_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [auditmanagement_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [auditmanagement_db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [auditmanagement_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [auditmanagement_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [auditmanagement_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [auditmanagement_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [auditmanagement_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [auditmanagement_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [auditmanagement_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [auditmanagement_db] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [auditmanagement_db] SET  MULTI_USER 
GO
ALTER DATABASE [auditmanagement_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [auditmanagement_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [auditmanagement_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [auditmanagement_db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [auditmanagement_db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [auditmanagement_db] SET QUERY_STORE = OFF
GO
USE [auditmanagement_db]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 24-09-2022 15:50:56 ******/
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
/****** Object:  Table [dbo].[AuditRequest]    Script Date: 24-09-2022 15:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditRequest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [nvarchar](max) NOT NULL,
	[ProjectManagerName] [nvarchar](max) NOT NULL,
	[ApplicationOwnerName] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
	[Date] [nvarchar](max) NOT NULL,
	[Question1] [bit] NOT NULL,
	[Question2] [bit] NOT NULL,
	[Question3] [bit] NOT NULL,
	[Question4] [bit] NOT NULL,
	[Question5] [bit] NOT NULL,
 CONSTRAINT [PK_AuditRequest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditResponse]    Script Date: 24-09-2022 15:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditResponse](
	[AuditId] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [nvarchar](max) NOT NULL,
	[ProjectExecutionStatus] [nvarchar](max) NOT NULL,
	[RemedialActionDuration] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AuditResponse] PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Benchmarks]    Script Date: 24-09-2022 15:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Benchmarks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[auditType] [nvarchar](max) NOT NULL,
	[benchmarkConstraint] [int] NOT NULL,
 CONSTRAINT [PK_Benchmarks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 24-09-2022 15:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuestionNo] [int] NOT NULL,
	[Question] [nvarchar](max) NOT NULL,
	[AuditType] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 24-09-2022 15:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 24-09-2022 15:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Questions] ADD  DEFAULT (N'') FOR [AuditType]
GO
/****** Object:  StoredProcedure [dbo].[spShowOddNumbers]    Script Date: 24-09-2022 15:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spShowOddNumbers]
@LowerRange INT,
@UpperRange INT
AS
BEGIN
	WHILE (@LowerRange < @UpperRange)
	BEGIN
		if(@LowerRange % 2 != 0)
		BEGIN
			PRINT @LowerRange
		END
		SET @LowerRange = @LowerRange + 1
	END
	PRINT 'Printed Odd numbers betwwen ' + RTRIM(@LowerRange) + ' and ' + RTRIM(@UpperRange)
END

GO
/****** Object:  StoredProcedure [dbo].[usp_AuditRequestInsert]    Script Date: 24-09-2022 15:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_AuditRequestInsert]
	@ProjectName VARCHAR(max),
	@ProjectManagerName VARCHAR(max),
	@ApplicationOwnerName VARCHAR(max),
	@Type VARCHAR(max),
	@Date  VARCHAR(max),
	@Question1 BIT,
	@Question2 BIT,
	@Question3 BIT,
	@Question4 BIT,
	@Question5 BIT,
	@Id INT OUT
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO [AuditRequest] VALUES 
	(@ProjectName, @ProjectManagerName, @ApplicationOwnerName, @Type, @Date,
	@Question1,@Question2,@Question3,@Question4,@Question5)
	SELECT @Id = SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[usp_AuditResponseInsert]    Script Date: 24-09-2022 15:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_AuditResponseInsert]
	@ProjectName VARCHAR(max),
	@ProjectExecutionStatus VARCHAR(max),
	@RemedialActionDuration VARCHAR(max)
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO [AuditResponse] VALUES (@ProjectName, @ProjectExecutionStatus, @RemedialActionDuration)
	SELECT * FROM [AuditResponse] A WHERE A.AuditId = SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[usp_BenchmarkRetriveBenchmarkConstriants]    Script Date: 24-09-2022 15:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_BenchmarkRetriveBenchmarkConstriants]
	-- Add the parameters for the stored procedure here
	@auditType VARCHAR(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM [Benchmarks] WHERE auditType = @auditType
END
GO
/****** Object:  StoredProcedure [dbo].[usp_QuestionRetrieveByAuditType]    Script Date: 24-09-2022 15:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_QuestionRetrieveByAuditType]
	@AuditType VARCHAR(10)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT Q.QuestionNo, Q.Question FROM [Questions] Q WHERE Q.AuditType = @AuditType
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UserCheckUserExists]    Script Date: 24-09-2022 15:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_UserCheckUserExists] 
(@Username VARCHAR(50), 
@Password VARCHAR(50))
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT CASE 
	WHEN EXISTS( SELECT * FROM [Users] AS U WHERE U.Username='Ramkumar' and U.Password='123456')
	THEN
		'True'
	ELSE
		'False'
	END AS 'Result'
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UserRetirveAll]    Script Date: 24-09-2022 15:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_UserRetirveAll] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM [Users]
END
GO
/****** Object:  StoredProcedure [dbo].[usp_UserRetirveSingleUser]    Script Date: 24-09-2022 15:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_UserRetirveSingleUser]
(@Username VARCHAR(50), 
@Password VARCHAR(50))
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM [Users] AS U WHERE U.Username=@Username and U.Password=@Password
END
GO
USE [master]
GO
ALTER DATABASE [auditmanagement_db] SET  READ_WRITE 
GO
