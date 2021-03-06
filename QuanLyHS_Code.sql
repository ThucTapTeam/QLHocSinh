USE [master]
GO
/****** Object:  Database [ThucTapNhom_2]    Script Date: 5/15/2018 1:30:40 AM ******/
CREATE DATABASE [ThucTapNhom_2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ThucTapNhom_2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ThucTapNhom_2.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ThucTapNhom_2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ThucTapNhom_2_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ThucTapNhom_2] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ThucTapNhom_2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ThucTapNhom_2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ThucTapNhom_2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ThucTapNhom_2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ThucTapNhom_2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ThucTapNhom_2] SET ARITHABORT OFF 
GO
ALTER DATABASE [ThucTapNhom_2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ThucTapNhom_2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ThucTapNhom_2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ThucTapNhom_2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ThucTapNhom_2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ThucTapNhom_2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ThucTapNhom_2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ThucTapNhom_2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ThucTapNhom_2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ThucTapNhom_2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ThucTapNhom_2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ThucTapNhom_2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ThucTapNhom_2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ThucTapNhom_2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ThucTapNhom_2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ThucTapNhom_2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ThucTapNhom_2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ThucTapNhom_2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ThucTapNhom_2] SET  MULTI_USER 
GO
ALTER DATABASE [ThucTapNhom_2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ThucTapNhom_2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ThucTapNhom_2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ThucTapNhom_2] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ThucTapNhom_2] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ThucTapNhom_2]
GO
/****** Object:  Table [dbo].[BangDiem]    Script Date: 5/15/2018 1:30:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BangDiem](
	[MaHS] [char](5) NOT NULL,
	[MaMH] [char](5) NOT NULL,
	[DMieng] [float] NULL,
	[D15Phut] [float] NULL,
	[D1Tiet] [float] NULL,
	[DCuoiKy] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHS] ASC,
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 5/15/2018 1:30:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[MaGV] [char](5) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[GioiTinh] [nchar](10) NULL,
	[SoDT] [char](10) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[Luong] [float] NULL,
 CONSTRAINT [PK__GiaoVien__2725AEF3D5B68602] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HanhKiem]    Script Date: 5/15/2018 1:30:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HanhKiem](
	[MaHK] [char](5) NOT NULL,
	[Ten] [nvarchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HanhKiemHS]    Script Date: 5/15/2018 1:30:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HanhKiemHS](
	[MaHK] [char](5) NOT NULL,
	[MaHS] [char](5) NOT NULL,
	[NamHoc] [nvarchar](30) NULL,
	[HocKy] [int] NULL,
 CONSTRAINT [PK_HanhKiemHS] PRIMARY KEY CLUSTERED 
(
	[MaHK] ASC,
	[MaHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HocSinh]    Script Date: 5/15/2018 1:30:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HocSinh](
	[MaHS] [char](5) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[GioiTinh] [nchar](10) NULL,
	[NgaySinh] [date] NULL,
	[TenNguoiThan] [nvarchar](50) NULL,
	[MaLH] [char](5) NULL,
 CONSTRAINT [PK__HocSinh__2725A6EFADDF55C9] PRIMARY KEY CLUSTERED 
(
	[MaHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KetQuaHocTap]    Script Date: 5/15/2018 1:30:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KetQuaHocTap](
	[makqht] [nchar](10) NOT NULL,
	[MaHS] [char](5) NOT NULL,
	[TBHK1] [float] NULL,
	[HocLuc1] [nvarchar](30) NULL,
	[TBHK2] [float] NULL,
	[HocLuc2] [nvarchar](30) NULL,
	[TBCN] [float] NULL,
	[HocLuc] [nvarchar](30) NULL,
 CONSTRAINT [PK_KetQuaHocTap] PRIMARY KEY CLUSTERED 
(
	[makqht] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Login]    Script Date: 5/15/2018 1:30:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[taikhoan] [nvarchar](50) NOT NULL,
	[matkhau] [nvarchar](50) NOT NULL,
	[quyen] [int] NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[taikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LopHoc]    Script Date: 5/15/2018 1:30:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LopHoc](
	[MaLH] [char](5) NOT NULL,
	[MaGVCN] [char](5) NULL,
	[TenLH] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 5/15/2018 1:30:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMH] [char](5) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[HeSo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThongTinGiangDay]    Script Date: 5/15/2018 1:30:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThongTinGiangDay](
	[MaGV] [char](5) NOT NULL,
	[MaLH] [char](5) NOT NULL,
	[Thu] [nvarchar](15) NULL,
	[Tiet] [nvarchar](20) NULL,
	[MaMH] [char](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC,
	[MaLH] ASC,
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[BangDiem]  WITH CHECK ADD  CONSTRAINT [FK_BangDiem_HocSinh] FOREIGN KEY([MaHS])
REFERENCES [dbo].[HocSinh] ([MaHS])
GO
ALTER TABLE [dbo].[BangDiem] CHECK CONSTRAINT [FK_BangDiem_HocSinh]
GO
ALTER TABLE [dbo].[BangDiem]  WITH CHECK ADD  CONSTRAINT [FK_BangDiem_MonHoc] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[BangDiem] CHECK CONSTRAINT [FK_BangDiem_MonHoc]
GO
ALTER TABLE [dbo].[HanhKiemHS]  WITH CHECK ADD  CONSTRAINT [FK_HanhKiemHS_HanhKiem] FOREIGN KEY([MaHK])
REFERENCES [dbo].[HanhKiem] ([MaHK])
GO
ALTER TABLE [dbo].[HanhKiemHS] CHECK CONSTRAINT [FK_HanhKiemHS_HanhKiem]
GO
ALTER TABLE [dbo].[HanhKiemHS]  WITH CHECK ADD  CONSTRAINT [FK_HanhKiemHS_HocSinh] FOREIGN KEY([MaHS])
REFERENCES [dbo].[HocSinh] ([MaHS])
GO
ALTER TABLE [dbo].[HanhKiemHS] CHECK CONSTRAINT [FK_HanhKiemHS_HocSinh]
GO
ALTER TABLE [dbo].[HocSinh]  WITH CHECK ADD  CONSTRAINT [FK__HocSinh__MaLH__1920BF5C] FOREIGN KEY([MaLH])
REFERENCES [dbo].[LopHoc] ([MaLH])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[HocSinh] CHECK CONSTRAINT [FK__HocSinh__MaLH__1920BF5C]
GO
ALTER TABLE [dbo].[KetQuaHocTap]  WITH CHECK ADD  CONSTRAINT [FK_KetQuaHocTap_HocSinh] FOREIGN KEY([MaHS])
REFERENCES [dbo].[HocSinh] ([MaHS])
GO
ALTER TABLE [dbo].[KetQuaHocTap] CHECK CONSTRAINT [FK_KetQuaHocTap_HocSinh]
GO
ALTER TABLE [dbo].[ThongTinGiangDay]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinGiangDay_GiaoVien] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiaoVien] ([MaGV])
GO
ALTER TABLE [dbo].[ThongTinGiangDay] CHECK CONSTRAINT [FK_ThongTinGiangDay_GiaoVien]
GO
ALTER TABLE [dbo].[ThongTinGiangDay]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinGiangDay_MonHoc] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[ThongTinGiangDay] CHECK CONSTRAINT [FK_ThongTinGiangDay_MonHoc]
GO
USE [master]
GO
ALTER DATABASE [ThucTapNhom_2] SET  READ_WRITE 
GO
