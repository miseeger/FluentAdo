USE [master]
GO

/****** Object:  Database [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF]    Script Date: 07/02/2009 13:52:32 ******/
CREATE DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] ON  PRIMARY 
( NAME = N'MsSqlTestDb', FILENAME = N'C:\Development\Dotnet\FluentAdo\FluentAdo.SqlServer.Tests\MsSqlTestDb.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MsSqlTestDb_log', FILENAME = N'C:\Development\Dotnet\FluentAdo\FluentAdo.SqlServer.Tests\MsSqlTestDb_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET ARITHABORT OFF 
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET AUTO_CLOSE ON 
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET AUTO_SHRINK ON 
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET  DISABLE_BROKER 
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET  READ_WRITE 
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET  MULTI_USER 
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [C:\DEVELOPMENT\DOTNET\FLUENTADO\FLUENTADO.SQLSERVER.TESTS\MSSQLTESTDB.MDF] SET DB_CHAINING OFF 
GO


