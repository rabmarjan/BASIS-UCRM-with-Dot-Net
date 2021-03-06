USE [master]
GO
/****** Object:  Database [CountryCity]    Script Date: 09/13/2015 19:04:50 ******/
CREATE DATABASE [CountryCity] ON  PRIMARY 
( NAME = N'CountryCity', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\CountryCity.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CountryCity_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\CountryCity_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CountryCity] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CountryCity].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CountryCity] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [CountryCity] SET ANSI_NULLS OFF
GO
ALTER DATABASE [CountryCity] SET ANSI_PADDING OFF
GO
ALTER DATABASE [CountryCity] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [CountryCity] SET ARITHABORT OFF
GO
ALTER DATABASE [CountryCity] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [CountryCity] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [CountryCity] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [CountryCity] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [CountryCity] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [CountryCity] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [CountryCity] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [CountryCity] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [CountryCity] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [CountryCity] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [CountryCity] SET  ENABLE_BROKER
GO
ALTER DATABASE [CountryCity] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [CountryCity] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [CountryCity] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [CountryCity] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [CountryCity] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [CountryCity] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [CountryCity] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [CountryCity] SET  READ_WRITE
GO
ALTER DATABASE [CountryCity] SET RECOVERY FULL
GO
ALTER DATABASE [CountryCity] SET  MULTI_USER
GO
ALTER DATABASE [CountryCity] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [CountryCity] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'CountryCity', N'ON'
GO
USE [CountryCity]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 09/13/2015 19:04:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201509101903272_InitialCreate', N'EFDEmo.EmployeeDBContext', 0x1F8B0800000000000400ED59DB6EDC36107D2FD07F10F4D416CECA4E5E52633741B2B68B45E30B2C27E85B404BB36BA214A99294B18BA25FD6877E527FA1435D29722FDA4D6C14451120B0A999C399E119CE0CFDF79F7F8DDF2E33163C825454F04978323A0E03E08948295F4CC242CF5FBC0EDFBEF9F69BF1799A2D834F8DDC2B23879A5C4DC207ADF3D32852C90364448D329A48A1C45C8F1291452415D1CBE3E31FA3939308102244AC2018DF165CD30CCA5FF0D7A9E009E4BA20EC52A4C054BD8E5FE21235B82219A89C243009CF2FCECE331106EF1825B87B0C6C1E068473A18946DB4E3F2A88B5147C11E7B840D8DD2A07949B13A6A0B6F9B4131F6AFEF14B637ED429365049A1B4C8F6043C7955C72372D50F8A6AD8C60B23768E91D52BE37519B549780639913A03AEC3C0DDEE74CAA4116DC23AEA848F826AE9A83D752487F977144C0BA60B09130E8596841D0537C53DA3C9CFB0BA13BF029FF08231DB26B40ABFF51670E9468A1CA45EDDC2BCB674761606515F2F72155B354BA7F260C6F5AB976170859B937B06ED915BDEC65A48F8093848A221BD215A83C4139BA55006CDDBDDD9CBFCDFEC861CC31409834BB2FC007CA11F2621FE180617740969B3525BF09153CC2854D2B2006F932BF24817A57DCE76E759CEC40A4085C12DB052423DD0BCE2FCA8F9FAD93EDF0B29B25BC12C65EBF3E73B221780527762B34C2C0A9938468EA38E545BA9D6000E205A23FA3FCDBCBD2EA854FA69B8E6ECF4813CD346188C14E4936F131346E46AD7490DCD3F3BB1BE4E0236C9B52D019B241D9280EF9412092D0D7332D036AAEFEE394F830116560765FB89E7850949734C41346512FEE045723B747BFB74D076E4FAE0C7A3D1891B03CB5BFF16C21642138A29E704E2ECBDF902CB75C50F5B85FA5A5235BF5C7F0C720CDA23045EC9DD89AC71C60B4C1FC8BAD93D982EDC0E88E5BE8FD423A125B985ABEE45398C18AD2B3D2FA2FDC01A2A5860BDD8BAB773DFF53589D19E7ED7394655EBD8B498D1861E737C49F21C6F23ABE7AC5782B86A38A72FE2FDBBB2ACC28812B5A6396BAD6D77C2824116E07CC5ADD1D2B21A9C114DEE89B9BCA669E689F95CDF40BF663F9FCEFEF935B46C74CCCF35E7DC56D1D5EE6278816E1989D243587BDCBE72D9F69B9B7C4D0D9E0A56647C531DDFA65DD5395BBF5AF111C69163BD1B9CC88B8EC35737E0838EA34BA7030EA3BD35F63F8ACDAA4F7310567B638358CBC3B1BA06C686EA568723351D8A8DD3AC0D47691A101BA5597B7EA2F5AFCDF56CEB158E8DB4EA490D259029021B469A35C5C08FCE20EE5940EB686842D41A71987D75E53BD0BEBD8DC22B3CA565473753A6756DDBD6C15EBBF5D2E78657365D9196996DF974CAE4B82E59BBDF6BBC1A5689840106E091A6A67EC52BA5211B198151FC1B9B325AF2AC11B8249CCE41E96AEA0BB1C4BE769E7FFE3D4F319152291BFC1EF3ECC32B6DF377DB78BA6B62DAF22CC21F894C1E88FC2E23CBEF6D247F7CDBFF55E1BF112E6FBCDF2366BB47F82F02EB8FE95F04D51FC5CB40EE1927E78EB380BC416E86662F27E1EFA5E66930FBE5734FF928B896E8D769701CFC711827BF6CD0764BEC01D3EFDA91EAC0311DB303A4212F61580094965802BCD6E346529ED09C30DF07BF120EC93B13DC16D4FD82E8867AD89D3A1E0ED96B670BD0A23B17C1AE40ECF9E4E04F6B439F1376BC2654157312A6F7028FBCE2EEB67979D373C3D6D786759B6C9CF09FF131C28F923B400E797D58FB70F1340F0D7E67844CB3FEDE85645774D141988E8F43D2E3582B33E373D130DEB1A81171AECD4BD0244502BE939ACE49A2F173024A950FAE9F082BCAA0DC433AE3D785CE0B8D2E4376CF7A038A49996DFB97AF297D9BC7D779F93EFA355C403329BA00D7FC7D4159DADA7DE1978D4D102617EB9A6DCE529BDABD58B54857820F04AAC3D75E217780E4413075CD63F20887D8F651C107589064D534B89B41761F443FECE3334A169264AAC6E8F4F157E4709A2DDFFC03A76E2624F61D0000, N'6.1.3-40302')
/****** Object:  Table [dbo].[Countries]    Script Date: 09/13/2015 19:04:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Countries](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[countryName] [varchar](150) NOT NULL,
	[about] [varchar](1000) NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Countries] ON [dbo].[Countries] 
(
	[countryName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Countries] ON
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (31, N'Bangladesh', N'Nice Country')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (32, N'India', N'Its Good')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (33, N'Nepal', N'Has Mountain')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (34, N'Bhutan', N'Very Nice')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (35, N'Pakistan', N'Boom Boom')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (36, N'Afganistan', N'War')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (37, N'England', N'Colonial Country')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (38, N'Maldives', N'Nice Country')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (39, N'China', N'Huge Country')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (40, N'Russia', N'Boom and Gun')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (41, N'Belarus', N'Cold Country')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (42, N'Barma', N'Very Bad Country')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (43, N'France', N'Long bow')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (44, N'Australia', N'Ocenian Country')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (45, N'Romania', N'Eu Country')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (46, N'Aruba', N'Nice Country')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (50, N'Germany', N'Industrial Country')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (53, N'Finland', N'Nokia')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (54, N'Mongolia', N'UlanBator')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (55, N'Chad', N'Worst Country')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (56, N'Korea', N'War zone')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (57, N'Comoros', N'Boom Boom')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (58, N'Alaska', N'cold snow man')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (60, N'Vietnam', N'Mekong')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (61, N'Netherland', N'Country of Dam')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (62, N'Keneys', N'hot')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (63, N'select * from countries', N'fghfgh')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (64, N'Benin', N'Dont Know about ')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (65, N'Venezuela', N'Good')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (66, N'Mesedonia', N'cold')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (67, N'Congo', N'wartorn')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (68, N'	China ', N'	Huge Country ')
INSERT [dbo].[Countries] ([CountryId], [countryName], [about]) VALUES (69, N'Congos', N'sdfsdf')
SET IDENTITY_INSERT [dbo].[Countries] OFF
/****** Object:  Table [dbo].[Cities]    Script Date: 09/13/2015 19:04:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cities](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[cityName] [varchar](250) NOT NULL,
	[about] [varchar](1000) NULL,
	[noOfDwellers] [int] NULL,
	[location] [varchar](150) NULL,
	[weather] [varchar](150) NULL,
	[countryId] [int] NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Cities] ON [dbo].[Cities] 
(
	[cityName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cities] ON
INSERT [dbo].[Cities] ([CityId], [cityName], [about], [noOfDwellers], [location], [weather], [countryId]) VALUES (7, N'Dhaka', N'Jam Jam', 1000000, N'Asia', N'Hot', 31)
INSERT [dbo].[Cities] ([CityId], [cityName], [about], [noOfDwellers], [location], [weather], [countryId]) VALUES (8, N'Thimpo', N'Nice Country', 1000000, N'Asia', N'Cold Weather', 34)
INSERT [dbo].[Cities] ([CityId], [cityName], [about], [noOfDwellers], [location], [weather], [countryId]) VALUES (9, N'Kabul', N'War torn', 230000, N'Asia', N'Cold and Hot', 36)
INSERT [dbo].[Cities] ([CityId], [cityName], [about], [noOfDwellers], [location], [weather], [countryId]) VALUES (10, N'Kolkata', N'Noise', 10000000, N'Asia', N'Cold and Hot', 32)
INSERT [dbo].[Cities] ([CityId], [cityName], [about], [noOfDwellers], [location], [weather], [countryId]) VALUES (11, N'London', N'Colonist', 23432345, N'Europe', N'Cold', 37)
INSERT [dbo].[Cities] ([CityId], [cityName], [about], [noOfDwellers], [location], [weather], [countryId]) VALUES (13, N'Sylhet', N'Tea Garden', 2385745, N'Asia', N'Moderate', 31)
INSERT [dbo].[Cities] ([CityId], [cityName], [about], [noOfDwellers], [location], [weather], [countryId]) VALUES (14, N'Anuradhapur', N'Good Country', 2134563, N'Asia', N'Moderate', 33)
INSERT [dbo].[Cities] ([CityId], [cityName], [about], [noOfDwellers], [location], [weather], [countryId]) VALUES (15, N'Kishoreganj', N'Vary Beaytiful', 1234235, N'Asia', N'Nice', 31)
INSERT [dbo].[Cities] ([CityId], [cityName], [about], [noOfDwellers], [location], [weather], [countryId]) VALUES (16, N'Hobiganj', N'Good City', 345634, N'Asia', N'Nice', 31)
INSERT [dbo].[Cities] ([CityId], [cityName], [about], [noOfDwellers], [location], [weather], [countryId]) VALUES (17, N'Bombay', N'Bad', 34645675, N'Asia', N'Cold', 32)
INSERT [dbo].[Cities] ([CityId], [cityName], [about], [noOfDwellers], [location], [weather], [countryId]) VALUES (18, N'Notingham', N'Chup thak bandor', 2353456, N'Europe', N'Bad', 37)
INSERT [dbo].[Cities] ([CityId], [cityName], [about], [noOfDwellers], [location], [weather], [countryId]) VALUES (19, N'Islamabad', N'Boooom', 6756858, N'Asia', N'Moderate', 35)
INSERT [dbo].[Cities] ([CityId], [cityName], [about], [noOfDwellers], [location], [weather], [countryId]) VALUES (20, N'Lahore', N'Tough', 343657, N'Asia', N'Hot', 35)
INSERT [dbo].[Cities] ([CityId], [cityName], [about], [noOfDwellers], [location], [weather], [countryId]) VALUES (22, N'Male', N'Sandy Country', 253466, N'Asia', N'Moderate', 38)
INSERT [dbo].[Cities] ([CityId], [cityName], [about], [noOfDwellers], [location], [weather], [countryId]) VALUES (23, N'Amsterdam', N'Full of Dan Engineer', 235544, N'Europe', N'Cold Weather', 61)
INSERT [dbo].[Cities] ([CityId], [cityName], [about], [noOfDwellers], [location], [weather], [countryId]) VALUES (24, N'Jalalabad', N'Jalalabad is war torn', 454545, N'Asia', N'Extreme', 36)
INSERT [dbo].[Cities] ([CityId], [cityName], [about], [noOfDwellers], [location], [weather], [countryId]) VALUES (25, N'Mombasa', N'<b>rtufjfgh</b>', 235245, N'Afriac', N'Moderate', 62)
INSERT [dbo].[Cities] ([CityId], [cityName], [about], [noOfDwellers], [location], [weather], [countryId]) VALUES (26, N'sdgffdf', N'wgdfgfsdf', 557474, N'cfgsdhsdf', N'fdgdsfgasdf', 64)
INSERT [dbo].[Cities] ([CityId], [cityName], [about], [noOfDwellers], [location], [weather], [countryId]) VALUES (27, N'Caracas', N'its good', 235235, N'America', N'hot', 65)
SET IDENTITY_INSERT [dbo].[Cities] OFF
/****** Object:  ForeignKey [FK_Cities_Countries]    Script Date: 09/13/2015 19:04:50 ******/
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD  CONSTRAINT [FK_Cities_Countries] FOREIGN KEY([countryId])
REFERENCES [dbo].[Countries] ([CountryId])
GO
ALTER TABLE [dbo].[Cities] CHECK CONSTRAINT [FK_Cities_Countries]
GO
