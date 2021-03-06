/****** Object:  Database [QuanLyHocSinh]    Script Date: 13/12/2020 2:09:31 PM ******/
CREATE DATABASE [QuanLyHocSinh]  (EDITION = 'Basic', SERVICE_OBJECTIVE = 'Basic', MAXSIZE = 2 GB) WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS;
GO
ALTER DATABASE [QuanLyHocSinh] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [QuanLyHocSinh] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyHocSinh] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyHocSinh] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [QuanLyHocSinh] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyHocSinh] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [QuanLyHocSinh] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyHocSinh] SET ENCRYPTION ON
GO
ALTER DATABASE [QuanLyHocSinh] SET QUERY_STORE = ON
GO
ALTER DATABASE [QuanLyHocSinh] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 7), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 10, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
/*** The scripts of database scoped configurations in Azure should be executed inside the target database connection. ***/
GO
-- ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 8;
GO
/****** Object:  Table [dbo].[DANTOC]    Script Date: 13/12/2020 2:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANTOC](
	[MaDanToc] [varchar](6) NOT NULL,
	[TenDanToc] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDanToc] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIEM]    Script Date: 13/12/2020 2:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIEM](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[MaHocSinh] [varchar](6) NOT NULL,
	[MaMonHoc] [varchar](6) NOT NULL,
	[MaHocKy] [varchar](3) NOT NULL,
	[MaNamHoc] [varchar](6) NOT NULL,
	[MaLop] [varchar](10) NOT NULL,
	[MaLoai] [varchar](6) NOT NULL,
	[Diem] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIAOVIEN]    Script Date: 13/12/2020 2:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIAOVIEN](
	[MaGiaoVien] [varchar](6) NOT NULL,
	[TenGiaoVien] [nvarchar](30) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[DienThoai] [nvarchar](15) NOT NULL,
	[MaMonHoc] [varchar](6) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGiaoVien] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HANHKIEM]    Script Date: 13/12/2020 2:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANHKIEM](
	[MaHanhKiem] [varchar](6) NOT NULL,
	[TenHanhKiem] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHanhKiem] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOCKY]    Script Date: 13/12/2020 2:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCKY](
	[MaHocKy] [varchar](3) NOT NULL,
	[TenHocKy] [nvarchar](30) NOT NULL,
	[HeSo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHocKy] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOCLUC]    Script Date: 13/12/2020 2:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCLUC](
	[MaHocLuc] [varchar](6) NOT NULL,
	[TenHocLuc] [nvarchar](30) NOT NULL,
	[DiemCanDuoi] [float] NOT NULL,
	[DiemCanTren] [float] NOT NULL,
	[DiemKhongChe] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHocLuc] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOCSINH]    Script Date: 13/12/2020 2:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOCSINH](
	[MaHocSinh] [varchar](6) NOT NULL,
	[HoTen] [nvarchar](30) NOT NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[MaDanToc] [varchar](6) NOT NULL,
	[MaTonGiao] [varchar](6) NOT NULL,
	[HoTenCha] [nvarchar](30) NOT NULL,
	[MaNNghiepCha] [varchar](6) NOT NULL,
	[HoTenMe] [nvarchar](30) NOT NULL,
	[MaNNghiepMe] [varchar](6) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHocSinh] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KETQUA]    Script Date: 13/12/2020 2:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KETQUA](
	[MaKetQua] [varchar](6) NOT NULL,
	[TenKetQua] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKetQua] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHOILOP]    Script Date: 13/12/2020 2:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOILOP](
	[MaKhoiLop] [varchar](6) NOT NULL,
	[TenKhoiLop] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhoiLop] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KQ_HOCSINH_CANAM]    Script Date: 13/12/2020 2:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KQ_HOCSINH_CANAM](
	[MaHocSinh] [varchar](6) NOT NULL,
	[MaLop] [varchar](10) NOT NULL,
	[MaNamHoc] [varchar](6) NOT NULL,
	[MaHocLuc] [varchar](6) NOT NULL,
	[MaHanhKiem] [varchar](6) NOT NULL,
	[MaKetQua] [varchar](6) NOT NULL,
	[DiemTBHK1] [float] NOT NULL,
	[DiemTBHK2] [float] NOT NULL,
	[DiemTBCN] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHocSinh] ASC,
	[MaLop] ASC,
	[MaNamHoc] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KQ_HOCSINH_MONHOC]    Script Date: 13/12/2020 2:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KQ_HOCSINH_MONHOC](
	[MaHocSinh] [varchar](6) NOT NULL,
	[MaLop] [varchar](10) NOT NULL,
	[MaNamHoc] [varchar](6) NOT NULL,
	[MaMonHoc] [varchar](6) NOT NULL,
	[MaHocKy] [varchar](3) NOT NULL,
	[DiemMiengTB] [float] NOT NULL,
	[Diem15PhutTB] [float] NOT NULL,
	[Diem45PhutTB] [float] NOT NULL,
	[DiemThi] [float] NOT NULL,
	[DiemTBHK] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHocSinh] ASC,
	[MaLop] ASC,
	[MaNamHoc] ASC,
	[MaMonHoc] ASC,
	[MaHocKy] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KQ_LOPHOC_HOCKY]    Script Date: 13/12/2020 2:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KQ_LOPHOC_HOCKY](
	[MaLop] [varchar](10) NOT NULL,
	[MaNamHoc] [varchar](6) NOT NULL,
	[MaHocKy] [varchar](3) NOT NULL,
	[SoLuongDat] [int] NOT NULL,
	[TiLe] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC,
	[MaNamHoc] ASC,
	[MaHocKy] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KQ_LOPHOC_MONHOC]    Script Date: 13/12/2020 2:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KQ_LOPHOC_MONHOC](
	[MaLop] [varchar](10) NOT NULL,
	[MaNamHoc] [varchar](6) NOT NULL,
	[MaMonHoc] [varchar](6) NOT NULL,
	[MaHocKy] [varchar](3) NOT NULL,
	[SoLuongDat] [int] NOT NULL,
	[TiLe] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC,
	[MaNamHoc] ASC,
	[MaMonHoc] ASC,
	[MaHocKy] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIDIEM]    Script Date: 13/12/2020 2:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIDIEM](
	[MaLoai] [varchar](6) NOT NULL,
	[TenLoai] [nvarchar](30) NOT NULL,
	[HeSo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAINGUOIDUNG]    Script Date: 13/12/2020 2:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAINGUOIDUNG](
	[MaLoai] [varchar](6) NOT NULL,
	[TenLoai] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOP]    Script Date: 13/12/2020 2:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOP](
	[MaLop] [varchar](10) NOT NULL,
	[TenLop] [nvarchar](30) NOT NULL,
	[MaKhoiLop] [varchar](6) NOT NULL,
	[MaNamHoc] [varchar](6) NOT NULL,
	[SiSo] [int] NOT NULL,
	[MaGiaoVien] [varchar](6) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MONHOC]    Script Date: 13/12/2020 2:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MONHOC](
	[MaMonHoc] [varchar](6) NOT NULL,
	[TenMonHoc] [nvarchar](30) NOT NULL,
	[SoTiet] [int] NOT NULL,
	[HeSo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMonHoc] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NAMHOC]    Script Date: 13/12/2020 2:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NAMHOC](
	[MaNamHoc] [varchar](6) NOT NULL,
	[TenNamHoc] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNamHoc] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGHENGHIEP]    Script Date: 13/12/2020 2:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGHENGHIEP](
	[MaNghe] [varchar](6) NOT NULL,
	[TenNghe] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNghe] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUOIDUNG]    Script Date: 13/12/2020 2:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOIDUNG](
	[MaNguoiDung] [varchar](6) NOT NULL,
	[MaLoai] [varchar](6) NOT NULL,
	[TenNguoiDung] [nvarchar](30) NOT NULL,
	[TenDangNhap] [nvarchar](30) NOT NULL,
	[MatKhau] [varchar](64) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANCONG]    Script Date: 13/12/2020 2:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANCONG](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[MaNamHoc] [varchar](6) NOT NULL,
	[MaLop] [varchar](10) NOT NULL,
	[MaMonHoc] [varchar](6) NOT NULL,
	[MaGiaoVien] [varchar](6) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANLOP]    Script Date: 13/12/2020 2:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANLOP](
	[MaNamHoc] [varchar](6) NOT NULL,
	[MaKhoiLop] [varchar](6) NOT NULL,
	[MaLop] [varchar](10) NOT NULL,
	[MaHocSinh] [varchar](6) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNamHoc] ASC,
	[MaKhoiLop] ASC,
	[MaLop] ASC,
	[MaHocSinh] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUYDINH]    Script Date: 13/12/2020 2:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUYDINH](
	[TuoiCanDuoi] [int] NOT NULL,
	[TuoiCanTren] [int] NOT NULL,
	[SiSoCanDuoi] [int] NOT NULL,
	[SiSoCanTren] [int] NOT NULL,
	[DiemDat] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TONGIAO]    Script Date: 13/12/2020 2:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TONGIAO](
	[MaTonGiao] [varchar](6) NOT NULL,
	[TenTonGiao] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTonGiao] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DANTOC] ([MaDanToc], [TenDanToc]) VALUES (N'DT0001', N'Kinh')
INSERT [dbo].[DANTOC] ([MaDanToc], [TenDanToc]) VALUES (N'DT0002', N'Hoa')
INSERT [dbo].[DANTOC] ([MaDanToc], [TenDanToc]) VALUES (N'DT0003', N'Khơ-me')
INSERT [dbo].[DANTOC] ([MaDanToc], [TenDanToc]) VALUES (N'DT0004', N'Chăm')
GO
SET IDENTITY_INSERT [dbo].[DIEM] ON 

INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (56, N'HS0001', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0001', 5)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (57, N'HS0001', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0001', 6)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (58, N'HS0001', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0002', 7)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (59, N'HS0001', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0003', 8)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (60, N'HS0001', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0004', 9)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (61, N'HS0002', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0001', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (62, N'HS0002', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0002', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (63, N'HS0002', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0003', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (64, N'HS0002', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0004', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (65, N'HS0003', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0001', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (66, N'HS0003', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0002', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (67, N'HS0003', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0003', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (68, N'HS0003', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0004', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (69, N'HS0004', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0001', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (70, N'HS0004', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0002', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (71, N'HS0004', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0003', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (72, N'HS0004', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0004', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (73, N'HS0005', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0001', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (74, N'HS0005', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0002', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (75, N'HS0005', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0003', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (76, N'HS0005', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0004', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (77, N'HS0006', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0001', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (78, N'HS0006', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0002', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (79, N'HS0006', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0003', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (80, N'HS0006', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0004', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (81, N'HS0007', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0001', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (82, N'HS0007', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0002', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (83, N'HS0007', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0003', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (84, N'HS0007', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0004', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (85, N'HS0008', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0001', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (86, N'HS0008', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0002', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (87, N'HS0008', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0003', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (88, N'HS0008', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0004', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (89, N'HS0009', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0001', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (90, N'HS0009', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0002', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (91, N'HS0009', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0003', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (92, N'HS0009', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0004', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (93, N'HS0010', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0001', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (94, N'HS0010', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0002', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (95, N'HS0010', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0003', 0)
INSERT [dbo].[DIEM] ([STT], [MaHocSinh], [MaMonHoc], [MaHocKy], [MaNamHoc], [MaLop], [MaLoai], [Diem]) VALUES (96, N'HS0010', N'MH0001', N'HK1', N'NH1920', N'LOP1011920', N'LD0004', 0)
SET IDENTITY_INSERT [dbo].[DIEM] OFF
GO
INSERT [dbo].[GIAOVIEN] ([MaGiaoVien], [TenGiaoVien], [DiaChi], [DienThoai], [MaMonHoc]) VALUES (N'GV0001', N'Nguyễn Hoàng Trung', N'100 Trần Hưng Đạo, Long Xuyên', N'0975058876', N'MH0001')
INSERT [dbo].[GIAOVIEN] ([MaGiaoVien], [TenGiaoVien], [DiaChi], [DienThoai], [MaMonHoc]) VALUES (N'GV0002', N'Phan Hồng Nhung', N'Lac Quoi - Tri Ton', N'0976630315', N'MH0002')
INSERT [dbo].[GIAOVIEN] ([MaGiaoVien], [TenGiaoVien], [DiaChi], [DienThoai], [MaMonHoc]) VALUES (N'GV0003', N'Huỳnh Thanh Trúc', N'10C Nguyễn Trung Trực, Châu Đốc', N'0699015456', N'MH0003')
INSERT [dbo].[GIAOVIEN] ([MaGiaoVien], [TenGiaoVien], [DiaChi], [DienThoai], [MaMonHoc]) VALUES (N'GV0004', N'Lam Trung Toan', N'Long Dien B, An Phú', N'0845241566', N'MH0004')
INSERT [dbo].[GIAOVIEN] ([MaGiaoVien], [TenGiaoVien], [DiaChi], [DienThoai], [MaMonHoc]) VALUES (N'GV0005', N'Huynh Túc Trí', N'Rạch Giá, Kiên Giang', N'0123456789', N'MH0005')
INSERT [dbo].[GIAOVIEN] ([MaGiaoVien], [TenGiaoVien], [DiaChi], [DienThoai], [MaMonHoc]) VALUES (N'GV0006', N'Lê Thi Minh Nguyệt', N'000 Long Xuyên, An Giang', N'0123456789', N'MH0006')
GO
INSERT [dbo].[HANHKIEM] ([MaHanhKiem], [TenHanhKiem]) VALUES (N'HK0001', N'Tốt')
INSERT [dbo].[HANHKIEM] ([MaHanhKiem], [TenHanhKiem]) VALUES (N'HK0002', N'Khá')
INSERT [dbo].[HANHKIEM] ([MaHanhKiem], [TenHanhKiem]) VALUES (N'HK0003', N'Trung bình')
INSERT [dbo].[HANHKIEM] ([MaHanhKiem], [TenHanhKiem]) VALUES (N'HK0004', N'Yếu')
GO
INSERT [dbo].[HOCKY] ([MaHocKy], [TenHocKy], [HeSo]) VALUES (N'HK1', N'Học Kỳ 1', 1)
INSERT [dbo].[HOCKY] ([MaHocKy], [TenHocKy], [HeSo]) VALUES (N'HK2', N'Học Kỳ 2', 2)
GO
INSERT [dbo].[HOCLUC] ([MaHocLuc], [TenHocLuc], [DiemCanDuoi], [DiemCanTren], [DiemKhongChe]) VALUES (N'HL0001', N'Giỏi', 8, 10, 6.5)
INSERT [dbo].[HOCLUC] ([MaHocLuc], [TenHocLuc], [DiemCanDuoi], [DiemCanTren], [DiemKhongChe]) VALUES (N'HL0002', N'Khá', 6.5, 7.9, 5)
INSERT [dbo].[HOCLUC] ([MaHocLuc], [TenHocLuc], [DiemCanDuoi], [DiemCanTren], [DiemKhongChe]) VALUES (N'HL0003', N'Trung bình', 5, 6.4, 3.5)
INSERT [dbo].[HOCLUC] ([MaHocLuc], [TenHocLuc], [DiemCanDuoi], [DiemCanTren], [DiemKhongChe]) VALUES (N'HL0004', N'Yếu', 3.5, 4.9, 2)
INSERT [dbo].[HOCLUC] ([MaHocLuc], [TenHocLuc], [DiemCanDuoi], [DiemCanTren], [DiemKhongChe]) VALUES (N'HL0005', N'Kém', 0, 3.4, 0)
GO
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0001', N'Nguyễn Văn Tú', 0, CAST(N'2005-01-02T00:00:00.000' AS DateTime), N'Long Xuyên', N'DT0001', N'TG0005', N'Biết chết liền', N'NN0005', N'Biết chết liền', N'NN0002', N'hs001@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0002', N'Nguyễn Ngọc An', 0, CAST(N'2005-01-02T00:00:00.000' AS DateTime), N'Bến Tre', N'DT0001', N'TG0002', N'Biết chết liền', N'NN0003', N'Biết chết liền', N'NN0001', N'hs002@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0003', N'Lê Hoàng Anh', 0, CAST(N'2005-04-15T00:00:00.000' AS DateTime), N'Chợ Mới', N'DT0001', N'TG0004', N'Biết chết liền', N'NN0005', N'Biết chết liền', N'NN0005', N'hs003@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0004', N'Huỳnh Thiên Chí', 0, CAST(N'2004-01-02T00:00:00.000' AS DateTime), N'Đồng Tháp', N'DT0001', N'TG0003', N'Biết chết liền', N'NN0002', N'Biết chết liền', N'NN0004', N'hs004@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0005', N'Lý Ngọc Duy', 0, CAST(N'2005-01-02T00:00:00.000' AS DateTime), N'Long Xuyên', N'DT0001', N'TG0005', N'Biết chết liền', N'NN0005', N'Biết chết liền', N'NN0002', N'hs005@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0006', N'Huỳnh Ngọc Điệp', 1, CAST(N'2005-01-02T00:00:00.000' AS DateTime), N'Bến Tre', N'DT0001', N'TG0002', N'Biết chết liền', N'NN0003', N'Biết chết liền', N'NN0001', N'hs006@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0007', N'Trần Thị Huệ', 1, CAST(N'2005-04-15T00:00:00.000' AS DateTime), N'Chợ Mới', N'DT0001', N'TG0004', N'Biết chết liền', N'NN0005', N'Biết chết liền', N'NN0005', N'hs007@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0008', N'Nguyễn Thanh Huy', 0, CAST(N'2004-01-02T00:00:00.000' AS DateTime), N'Đồng Tháp', N'DT0001', N'TG0003', N'Biết chết liền', N'NN0002', N'Biết chết liền', N'NN0004', N'hs008@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0009', N'Trần Phước Lập', 0, CAST(N'2005-01-02T00:00:00.000' AS DateTime), N'Long Xuyên', N'DT0001', N'TG0005', N'Biết chết liền', N'NN0005', N'Biết chết liền', N'NN0002', N'hs009@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0010', N'Trương Thị Nga', 1, CAST(N'2005-01-02T00:00:00.000' AS DateTime), N'Bến Tre', N'DT0001', N'TG0002', N'Biết chết liền', N'NN0003', N'Biết chết liền', N'NN0001', N'hs010@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0011', N'Nguyễn Thị Nga', 1, CAST(N'2005-04-15T00:00:00.000' AS DateTime), N'Chợ Mới', N'DT0001', N'TG0004', N'Biết chết liền', N'NN0005', N'Biết chết liền', N'NN0005', N'hs011@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0012', N'Trần Thị Hồng Nghi', 1, CAST(N'2004-01-02T00:00:00.000' AS DateTime), N'Đồng Tháp', N'DT0001', N'TG0003', N'Biết chết liền', N'NN0002', N'Biết chết liền', N'NN0004', N'hs012@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0013', N'Huỳnh Thị Mỹ Ngọc', 1, CAST(N'2005-01-02T00:00:00.000' AS DateTime), N'Long Xuyên', N'DT0001', N'TG0005', N'Biết chết liền', N'NN0005', N'Biết chết liền', N'NN0002', N'hs013@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0014', N'Trần Thị My Nhân', 1, CAST(N'2005-01-02T00:00:00.000' AS DateTime), N'Bến Tre', N'DT0001', N'TG0002', N'Biết chết liền', N'NN0003', N'Biết chết liền', N'NN0001', N'hs014@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0015', N'Trương Thị Ngoc Nhung', 1, CAST(N'2005-04-15T00:00:00.000' AS DateTime), N'Chợ Mới', N'DT0001', N'TG0004', N'Biết chết liền', N'NN0005', N'Biết chết liền', N'NN0005', N'hs015@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0016', N'Huỳnh Quốc Phuong', 0, CAST(N'2004-01-02T00:00:00.000' AS DateTime), N'Đồng Tháp', N'DT0001', N'TG0003', N'Biết chết liền', N'NN0002', N'Biết chết liền', N'NN0004', N'hs016@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0017', N'Lý Ngọc Phương', 1, CAST(N'2005-01-02T00:00:00.000' AS DateTime), N'Long Xuyên', N'DT0001', N'TG0005', N'Biết chết liền', N'NN0005', N'Biết chết liền', N'NN0002', N'hs017@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0018', N'Nguyễn Thị Phương', 1, CAST(N'2005-01-02T00:00:00.000' AS DateTime), N'Bến Tre', N'DT0001', N'TG0002', N'Biết chết liền', N'NN0003', N'Biết chết liền', N'NN0001', N'hs018@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0019', N'Nguyễn Phú Quốc', 0, CAST(N'2005-04-15T00:00:00.000' AS DateTime), N'Chợ Mới', N'DT0001', N'TG0004', N'Biết chết liền', N'NN0005', N'Biết chết liền', N'NN0005', N'hs019@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0020', N'Võ Thiên Quốc', 0, CAST(N'2004-01-02T00:00:00.000' AS DateTime), N'Đồng Tháp', N'DT0001', N'TG0003', N'Biết chết liền', N'NN0002', N'Biết chết liền', N'NN0004', N'hs020@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0021', N'Trần Văn Rang', 0, CAST(N'2004-01-02T00:00:00.000' AS DateTime), N'Long Xuyên', N'DT0001', N'TG0005', N'Biết chết liền', N'NN0005', N'Biết chết liền', N'NN0002', N'hs021@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0022', N'Võ Hưu Tanh', 0, CAST(N'2004-01-02T00:00:00.000' AS DateTime), N'Bến Tre', N'DT0001', N'TG0002', N'Biết chết liền', N'NN0003', N'Biết chết liền', N'NN0001', N'hs022@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0023', N'Lê Minh Tâm', 0, CAST(N'2004-04-15T00:00:00.000' AS DateTime), N'Chợ Mới', N'DT0001', N'TG0004', N'Biết chết liền', N'NN0005', N'Biết chết liền', N'NN0005', N'hs023@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0024', N'Nguyễn Đức Tâm', 0, CAST(N'2003-01-02T00:00:00.000' AS DateTime), N'Đồng Tháp', N'DT0001', N'TG0003', N'Biết chết liền', N'NN0002', N'Biết chết liền', N'NN0004', N'hs024@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0025', N'Nguyễn Thanh Tâm', 0, CAST(N'2004-01-02T00:00:00.000' AS DateTime), N'Long Xuyên', N'DT0001', N'TG0005', N'Biết chết liền', N'NN0005', N'Biết chết liền', N'NN0002', N'hs025@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0026', N'Trần Ngọc Minh Tân', 0, CAST(N'2004-01-02T00:00:00.000' AS DateTime), N'Bến Tre', N'DT0001', N'TG0002', N'Biết chết liền', N'NN0003', N'Biết chết liền', N'NN0001', N'hs026@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0027', N'Dương Kim Thanh', 1, CAST(N'2004-04-15T00:00:00.000' AS DateTime), N'Chợ Mới', N'DT0001', N'TG0004', N'Biết chết liền', N'NN0005', N'Biết chết liền', N'NN0005', N'hs027@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0028', N'Vang Si Thanh', 0, CAST(N'2004-01-02T00:00:00.000' AS DateTime), N'Đồng Tháp', N'DT0001', N'TG0003', N'Biết chết liền', N'NN0002', N'Biết chết liền', N'NN0004', N'hs028@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0029', N'Đỗ Thị Bích Thảo', 1, CAST(N'2004-01-02T00:00:00.000' AS DateTime), N'Long Xuyên', N'DT0001', N'TG0005', N'Biết chết liền', N'NN0005', N'Biết chết liền', N'NN0002', N'hs029@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0030', N'Hồ Minh Thiên', 0, CAST(N'2004-01-02T00:00:00.000' AS DateTime), N'Bến Tre', N'DT0001', N'TG0002', N'Biết chết liền', N'NN0003', N'Biết chết liền', N'NN0001', N'hs030@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0031', N'Nguyễn Thị Anh Thư', 1, CAST(N'2004-04-15T00:00:00.000' AS DateTime), N'Chợ Mới', N'DT0001', N'TG0004', N'Biết chết liền', N'NN0005', N'Biết chết liền', N'NN0005', N'hs031@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0032', N'Phạm Nguyễn B.Trinh', 1, CAST(N'2003-01-02T00:00:00.000' AS DateTime), N'Đồng Tháp', N'DT0001', N'TG0003', N'Biết chết liền', N'NN0002', N'Biết chết liền', N'NN0004', N'hs032@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0033', N'Võ Ngọc Trinh', 1, CAST(N'2004-01-02T00:00:00.000' AS DateTime), N'Long Xuyên', N'DT0001', N'TG0005', N'Biết chết liền', N'NN0005', N'Biết chết liền', N'NN0002', N'hs033@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0034', N'Nguyễn Huỳnh Minh Trí', 0, CAST(N'2004-01-02T00:00:00.000' AS DateTime), N'Bến Tre', N'DT0001', N'TG0002', N'Biết chết liền', N'NN0003', N'Biết chết liền', N'NN0001', N'hs034@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0035', N'Đỗ Xuân Trinh', 0, CAST(N'2004-04-15T00:00:00.000' AS DateTime), N'Chợ Mới', N'DT0001', N'TG0004', N'Biết chết liền', N'NN0005', N'Biết chết liền', N'NN0005', N'hs035@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0036', N'Nguyễn Hiếu Trung', 0, CAST(N'2003-01-02T00:00:00.000' AS DateTime), N'Đồng Tháp', N'DT0001', N'TG0003', N'Biết chết liền', N'NN0002', N'Biết chết liền', N'NN0004', N'hs036@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0037', N'Nguyễn Thanh Trung', 0, CAST(N'2004-01-02T00:00:00.000' AS DateTime), N'Long Xuyên', N'DT0001', N'TG0005', N'Biết chết liền', N'NN0005', N'Biết chết liền', N'NN0002', N'hs037@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0038', N'Trần Thanh Trúc', 1, CAST(N'2004-01-02T00:00:00.000' AS DateTime), N'Bến Tre', N'DT0001', N'TG0002', N'Biết chết liền', N'NN0003', N'Biết chết liền', N'NN0001', N'hs038@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0039', N'Cao Minh Tuấn', 0, CAST(N'2004-04-15T00:00:00.000' AS DateTime), N'Chợ Mới', N'DT0001', N'TG0004', N'Biết chết liền', N'NN0005', N'Biết chết liền', N'NN0005', N'hs039@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0040', N'Nguyễn Hoang Tuấn', 0, CAST(N'2004-01-02T00:00:00.000' AS DateTime), N'Đồng Tháp', N'DT0001', N'TG0003', N'Biết chết liền', N'NN0002', N'Biết chết liền', N'NN0004', N'hs040@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0041', N'Trương Minh Tuyên', 0, CAST(N'2003-01-02T00:00:00.000' AS DateTime), N'Long Xuyên', N'DT0001', N'TG0005', N'Biết chết liền', N'NN0005', N'Biết chết liền', N'NN0002', N'hs041@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0042', N'Lê Thanh Tung', 0, CAST(N'2003-01-02T00:00:00.000' AS DateTime), N'Bến Tre', N'DT0001', N'TG0002', N'Biết chết liền', N'NN0003', N'Biết chết liền', N'NN0001', N'hs042@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0043', N'Phạm Thị Bích Vi', 1, CAST(N'2003-04-15T00:00:00.000' AS DateTime), N'Chợ Mới', N'DT0001', N'TG0004', N'Biết chết liền', N'NN0005', N'Biết chết liền', N'NN0005', N'hs043@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0044', N'Đặng Quang Vinh', 0, CAST(N'2003-01-02T00:00:00.000' AS DateTime), N'Đồng Tháp', N'DT0001', N'TG0003', N'Biết chết liền', N'NN0002', N'Biết chết liền', N'NN0004', N'hs044@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0045', N'Âu Ngọc Vũ', 0, CAST(N'2003-01-02T00:00:00.000' AS DateTime), N'Long Xuyên', N'DT0001', N'TG0005', N'Biết chết liền', N'NN0005', N'Biết chết liền', N'NN0002', N'hs045@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0046', N'Hồ Thanh Vũ', 0, CAST(N'2002-01-02T00:00:00.000' AS DateTime), N'Bến Tre', N'DT0001', N'TG0002', N'Biết chết liền', N'NN0003', N'Biết chết liền', N'NN0001', N'hs046@gmail.com')
INSERT [dbo].[HOCSINH] ([MaHocSinh], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaDanToc], [MaTonGiao], [HoTenCha], [MaNNghiepCha], [HoTenMe], [MaNNghiepMe], [Email]) VALUES (N'HS0047', N'Phan Quốc Vương', 0, CAST(N'2003-04-15T00:00:00.000' AS DateTime), N'Chợ Mới', N'DT0001', N'TG0004', N'Biết chết liền', N'NN0005', N'Biết chết liền', N'NN0005', N'hs047@gmail.com')
GO
INSERT [dbo].[KETQUA] ([MaKetQua], [TenKetQua]) VALUES (N'KQ0001', N'Lên lớp')
INSERT [dbo].[KETQUA] ([MaKetQua], [TenKetQua]) VALUES (N'KQ0002', N'Thi lại')
INSERT [dbo].[KETQUA] ([MaKetQua], [TenKetQua]) VALUES (N'KQ0003', N'Rèn luyện hè')
INSERT [dbo].[KETQUA] ([MaKetQua], [TenKetQua]) VALUES (N'KQ0004', N'Ở lại')
GO
INSERT [dbo].[KHOILOP] ([MaKhoiLop], [TenKhoiLop]) VALUES (N'KHOI10', N'Khối 10')
INSERT [dbo].[KHOILOP] ([MaKhoiLop], [TenKhoiLop]) VALUES (N'KHOI11', N'Khối 11')
INSERT [dbo].[KHOILOP] ([MaKhoiLop], [TenKhoiLop]) VALUES (N'KHOI12', N'Khối 12')
GO
INSERT [dbo].[KQ_HOCSINH_CANAM] ([MaHocSinh], [MaLop], [MaNamHoc], [MaHocLuc], [MaHanhKiem], [MaKetQua], [DiemTBHK1], [DiemTBHK2], [DiemTBCN]) VALUES (N'HS0001', N'LOP1011920', N'NH1920', N'HL0005', N'HK0001', N'KQ0004', 2.869999885559082, 0, 0)
INSERT [dbo].[KQ_HOCSINH_CANAM] ([MaHocSinh], [MaLop], [MaNamHoc], [MaHocLuc], [MaHanhKiem], [MaKetQua], [DiemTBHK1], [DiemTBHK2], [DiemTBCN]) VALUES (N'HS0002', N'LOP1011920', N'NH1920', N'HL0005', N'HK0001', N'KQ0004', 0, 0, 0)
INSERT [dbo].[KQ_HOCSINH_CANAM] ([MaHocSinh], [MaLop], [MaNamHoc], [MaHocLuc], [MaHanhKiem], [MaKetQua], [DiemTBHK1], [DiemTBHK2], [DiemTBCN]) VALUES (N'HS0003', N'LOP1011920', N'NH1920', N'HL0005', N'HK0001', N'KQ0004', 0, 0, 0)
INSERT [dbo].[KQ_HOCSINH_CANAM] ([MaHocSinh], [MaLop], [MaNamHoc], [MaHocLuc], [MaHanhKiem], [MaKetQua], [DiemTBHK1], [DiemTBHK2], [DiemTBCN]) VALUES (N'HS0004', N'LOP1011920', N'NH1920', N'HL0005', N'HK0001', N'KQ0004', 0, 0, 0)
INSERT [dbo].[KQ_HOCSINH_CANAM] ([MaHocSinh], [MaLop], [MaNamHoc], [MaHocLuc], [MaHanhKiem], [MaKetQua], [DiemTBHK1], [DiemTBHK2], [DiemTBCN]) VALUES (N'HS0005', N'LOP1011920', N'NH1920', N'HL0005', N'HK0001', N'KQ0004', 0, 0, 0)
INSERT [dbo].[KQ_HOCSINH_CANAM] ([MaHocSinh], [MaLop], [MaNamHoc], [MaHocLuc], [MaHanhKiem], [MaKetQua], [DiemTBHK1], [DiemTBHK2], [DiemTBCN]) VALUES (N'HS0006', N'LOP1011920', N'NH1920', N'HL0005', N'HK0001', N'KQ0004', 0, 0, 0)
INSERT [dbo].[KQ_HOCSINH_CANAM] ([MaHocSinh], [MaLop], [MaNamHoc], [MaHocLuc], [MaHanhKiem], [MaKetQua], [DiemTBHK1], [DiemTBHK2], [DiemTBCN]) VALUES (N'HS0007', N'LOP1011920', N'NH1920', N'HL0005', N'HK0001', N'KQ0004', 0, 0, 0)
INSERT [dbo].[KQ_HOCSINH_CANAM] ([MaHocSinh], [MaLop], [MaNamHoc], [MaHocLuc], [MaHanhKiem], [MaKetQua], [DiemTBHK1], [DiemTBHK2], [DiemTBCN]) VALUES (N'HS0008', N'LOP1011920', N'NH1920', N'HL0005', N'HK0001', N'KQ0004', 0, 0, 0)
INSERT [dbo].[KQ_HOCSINH_CANAM] ([MaHocSinh], [MaLop], [MaNamHoc], [MaHocLuc], [MaHanhKiem], [MaKetQua], [DiemTBHK1], [DiemTBHK2], [DiemTBCN]) VALUES (N'HS0009', N'LOP1011920', N'NH1920', N'HL0005', N'HK0001', N'KQ0004', 0, 0, 0)
INSERT [dbo].[KQ_HOCSINH_CANAM] ([MaHocSinh], [MaLop], [MaNamHoc], [MaHocLuc], [MaHanhKiem], [MaKetQua], [DiemTBHK1], [DiemTBHK2], [DiemTBCN]) VALUES (N'HS0010', N'LOP1011920', N'NH1920', N'HL0005', N'HK0001', N'KQ0004', 0, 0, 0)
GO
INSERT [dbo].[KQ_HOCSINH_MONHOC] ([MaHocSinh], [MaLop], [MaNamHoc], [MaMonHoc], [MaHocKy], [DiemMiengTB], [Diem15PhutTB], [Diem45PhutTB], [DiemThi], [DiemTBHK]) VALUES (N'HS0001', N'LOP1011920', N'NH1920', N'MH0001', N'HK1', 5.5, 7, 8, 9, 7.1700000762939453)
INSERT [dbo].[KQ_HOCSINH_MONHOC] ([MaHocSinh], [MaLop], [MaNamHoc], [MaMonHoc], [MaHocKy], [DiemMiengTB], [Diem15PhutTB], [Diem45PhutTB], [DiemThi], [DiemTBHK]) VALUES (N'HS0002', N'LOP1011920', N'NH1920', N'MH0001', N'HK1', 0, 0, 0, 0, 0)
INSERT [dbo].[KQ_HOCSINH_MONHOC] ([MaHocSinh], [MaLop], [MaNamHoc], [MaMonHoc], [MaHocKy], [DiemMiengTB], [Diem15PhutTB], [Diem45PhutTB], [DiemThi], [DiemTBHK]) VALUES (N'HS0003', N'LOP1011920', N'NH1920', N'MH0001', N'HK1', 0, 0, 0, 0, 0)
INSERT [dbo].[KQ_HOCSINH_MONHOC] ([MaHocSinh], [MaLop], [MaNamHoc], [MaMonHoc], [MaHocKy], [DiemMiengTB], [Diem15PhutTB], [Diem45PhutTB], [DiemThi], [DiemTBHK]) VALUES (N'HS0004', N'LOP1011920', N'NH1920', N'MH0001', N'HK1', 0, 0, 0, 0, 0)
INSERT [dbo].[KQ_HOCSINH_MONHOC] ([MaHocSinh], [MaLop], [MaNamHoc], [MaMonHoc], [MaHocKy], [DiemMiengTB], [Diem15PhutTB], [Diem45PhutTB], [DiemThi], [DiemTBHK]) VALUES (N'HS0005', N'LOP1011920', N'NH1920', N'MH0001', N'HK1', 0, 0, 0, 0, 0)
INSERT [dbo].[KQ_HOCSINH_MONHOC] ([MaHocSinh], [MaLop], [MaNamHoc], [MaMonHoc], [MaHocKy], [DiemMiengTB], [Diem15PhutTB], [Diem45PhutTB], [DiemThi], [DiemTBHK]) VALUES (N'HS0006', N'LOP1011920', N'NH1920', N'MH0001', N'HK1', 0, 0, 0, 0, 0)
INSERT [dbo].[KQ_HOCSINH_MONHOC] ([MaHocSinh], [MaLop], [MaNamHoc], [MaMonHoc], [MaHocKy], [DiemMiengTB], [Diem15PhutTB], [Diem45PhutTB], [DiemThi], [DiemTBHK]) VALUES (N'HS0007', N'LOP1011920', N'NH1920', N'MH0001', N'HK1', 0, 0, 0, 0, 0)
INSERT [dbo].[KQ_HOCSINH_MONHOC] ([MaHocSinh], [MaLop], [MaNamHoc], [MaMonHoc], [MaHocKy], [DiemMiengTB], [Diem15PhutTB], [Diem45PhutTB], [DiemThi], [DiemTBHK]) VALUES (N'HS0008', N'LOP1011920', N'NH1920', N'MH0001', N'HK1', 0, 0, 0, 0, 0)
INSERT [dbo].[KQ_HOCSINH_MONHOC] ([MaHocSinh], [MaLop], [MaNamHoc], [MaMonHoc], [MaHocKy], [DiemMiengTB], [Diem15PhutTB], [Diem45PhutTB], [DiemThi], [DiemTBHK]) VALUES (N'HS0009', N'LOP1011920', N'NH1920', N'MH0001', N'HK1', 0, 0, 0, 0, 0)
INSERT [dbo].[KQ_HOCSINH_MONHOC] ([MaHocSinh], [MaLop], [MaNamHoc], [MaMonHoc], [MaHocKy], [DiemMiengTB], [Diem15PhutTB], [Diem45PhutTB], [DiemThi], [DiemTBHK]) VALUES (N'HS0010', N'LOP1011920', N'NH1920', N'MH0001', N'HK1', 0, 0, 0, 0, 0)
GO
INSERT [dbo].[KQ_LOPHOC_HOCKY] ([MaLop], [MaNamHoc], [MaHocKy], [SoLuongDat], [TiLe]) VALUES (N'LOP1011920', N'NH1920', N'HK1', 0, 0)
GO
INSERT [dbo].[KQ_LOPHOC_MONHOC] ([MaLop], [MaNamHoc], [MaMonHoc], [MaHocKy], [SoLuongDat], [TiLe]) VALUES (N'LOP1011920', N'NH1920', N'MH0001', N'HK1', 1, 2.8599998950958252)
GO
INSERT [dbo].[LOAIDIEM] ([MaLoai], [TenLoai], [HeSo]) VALUES (N'LD0001', N'Kiểm tra miệng', 1)
INSERT [dbo].[LOAIDIEM] ([MaLoai], [TenLoai], [HeSo]) VALUES (N'LD0002', N'Kiểm tra 15 phút', 1)
INSERT [dbo].[LOAIDIEM] ([MaLoai], [TenLoai], [HeSo]) VALUES (N'LD0003', N'Kiểm tra 1 tiết', 2)
INSERT [dbo].[LOAIDIEM] ([MaLoai], [TenLoai], [HeSo]) VALUES (N'LD0004', N'Thi học kỳ', 1)
GO
INSERT [dbo].[LOAINGUOIDUNG] ([MaLoai], [TenLoai]) VALUES (N'LND001', N'Ban giám hiệu')
INSERT [dbo].[LOAINGUOIDUNG] ([MaLoai], [TenLoai]) VALUES (N'LND002', N'Giáo viện')
INSERT [dbo].[LOAINGUOIDUNG] ([MaLoai], [TenLoai]) VALUES (N'LND003', N'Nhân viên giáo vụ')
GO
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoiLop], [MaNamHoc], [SiSo], [MaGiaoVien]) VALUES (N'LOP1011920', N'10A1', N'KHOI10', N'NH1920', 35, N'GV0006')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoiLop], [MaNamHoc], [SiSo], [MaGiaoVien]) VALUES (N'LOP1012021', N'10A1', N'KHOI10', N'NH2021', 39, N'GV0001')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoiLop], [MaNamHoc], [SiSo], [MaGiaoVien]) VALUES (N'LOP1021920', N'10A2', N'KHOI10', N'NH1920', 36, N'GV0005')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoiLop], [MaNamHoc], [SiSo], [MaGiaoVien]) VALUES (N'LOP1022021', N'10A2', N'KHOI10', N'NH2021', 38, N'GV0002')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoiLop], [MaNamHoc], [SiSo], [MaGiaoVien]) VALUES (N'LOP1031920', N'10A3', N'KHOI10', N'NH1920', 34, N'GV0004')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoiLop], [MaNamHoc], [SiSo], [MaGiaoVien]) VALUES (N'LOP1032021', N'10A3', N'KHOI10', N'NH2021', 35, N'GV0003')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoiLop], [MaNamHoc], [SiSo], [MaGiaoVien]) VALUES (N'LOP1111920', N'11A1', N'KHOI11', N'NH1920', 37, N'GV0003')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoiLop], [MaNamHoc], [SiSo], [MaGiaoVien]) VALUES (N'LOP1112021', N'11A1', N'KHOI11', N'NH2021', 40, N'GV0004')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoiLop], [MaNamHoc], [SiSo], [MaGiaoVien]) VALUES (N'LOP1121920', N'11A2', N'KHOI11', N'NH1920', 38, N'GV0002')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoiLop], [MaNamHoc], [SiSo], [MaGiaoVien]) VALUES (N'LOP1122021', N'11A2', N'KHOI11', N'NH2021', 38, N'GV0005')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoiLop], [MaNamHoc], [SiSo], [MaGiaoVien]) VALUES (N'LOP1211920', N'12A1', N'KHOI12', N'NH1920', 39, N'GV0001')
INSERT [dbo].[LOP] ([MaLop], [TenLop], [MaKhoiLop], [MaNamHoc], [SiSo], [MaGiaoVien]) VALUES (N'LOP1212021', N'12A1', N'KHOI12', N'NH2021', 38, N'GV0006')
GO
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoTiet], [HeSo]) VALUES (N'MH0001', N'Toán', 90, 2)
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoTiet], [HeSo]) VALUES (N'MH0002', N'Vật Lý', 60, 1)
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoTiet], [HeSo]) VALUES (N'MH0003', N'Hóa Học', 60, 1)
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoTiet], [HeSo]) VALUES (N'MH0004', N'Sinh Học', 60, 1)
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoTiet], [HeSo]) VALUES (N'MH0005', N'Lịch Sử', 45, 1)
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoTiet], [HeSo]) VALUES (N'MH0006', N'Địa Lý', 45, 1)
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoTiet], [HeSo]) VALUES (N'MH0007', N'Ngữ Văn', 90, 2)
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoTiet], [HeSo]) VALUES (N'MH0008', N'Đạo Đức', 30, 1)
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoTiet], [HeSo]) VALUES (N'MH0009', N'Thể Dục', 30, 1)
GO
INSERT [dbo].[NAMHOC] ([MaNamHoc], [TenNamHoc]) VALUES (N'NH1920', N'2019-2020')
INSERT [dbo].[NAMHOC] ([MaNamHoc], [TenNamHoc]) VALUES (N'NH2021', N'2020-2021')
GO
INSERT [dbo].[NGHENGHIEP] ([MaNghe], [TenNghe]) VALUES (N'NN0001', N'Nội trợ')
INSERT [dbo].[NGHENGHIEP] ([MaNghe], [TenNghe]) VALUES (N'NN0002', N'Giáo viên')
INSERT [dbo].[NGHENGHIEP] ([MaNghe], [TenNghe]) VALUES (N'NN0003', N'Công nhân')
INSERT [dbo].[NGHENGHIEP] ([MaNghe], [TenNghe]) VALUES (N'NN0004', N'Làm ruộng')
INSERT [dbo].[NGHENGHIEP] ([MaNghe], [TenNghe]) VALUES (N'NN0005', N'Buôn bán')
GO
INSERT [dbo].[NGUOIDUNG] ([MaNguoiDung], [MaLoai], [TenNguoiDung], [TenDangNhap], [MatKhau]) VALUES (N'ND0001', N'LND001', N'18520339-Quân', N'admin', N'ÓFSW¥°(Š€“;ñ¯‹ÂQhÚ€$v·TB¿E {>ÙO×Jöw´¿ý/î¨²‹.Ä$‰5Ä:(ÕØ¿`Ã 6')
INSERT [dbo].[NGUOIDUNG] ([MaNguoiDung], [MaLoai], [TenNguoiDung], [TenDangNhap], [MatKhau]) VALUES (N'ND0002', N'LND002', N'18520597-Diễm', N'18520597', N'üaªÒFÌf‡<¾]2˜²ä#óóâìÃ¡ƒ5H“M§!á‰”ªÌ»&@³p	CP?ÄðøÞgêØ@Œ‹¯U;×')
INSERT [dbo].[NGUOIDUNG] ([MaNguoiDung], [MaLoai], [TenNguoiDung], [TenDangNhap], [MatKhau]) VALUES (N'ND0003', N'LND003', N'18520262-Đạt', N'18520262', N't¹Jq)ãåëÿs—ð¡¾G+/üø÷¹³@ Ò­5ÅþScg¼$	0OF–}<b-W7ÑÊ#Ó!Èâëâ.')
INSERT [dbo].[NGUOIDUNG] ([MaNguoiDung], [MaLoai], [TenNguoiDung], [TenDangNhap], [MatKhau]) VALUES (N'ND0004', N'LND002', N'18520424-Ân', N'18520424', N'J=Éu¨žX,è Âù’ë''/Â(/¹Ó1 Ø4z>Wg%±{ÚÙ/›Óy6NšªÁ9ew=²…–Ñ')
INSERT [dbo].[NGUOIDUNG] ([MaNguoiDung], [MaLoai], [TenNguoiDung], [TenDangNhap], [MatKhau]) VALUES (N'ND0005', N'LND003', N'18521398-Thắng', N'18521398', N'/tÚ¤\íwÒ,\ÉÏˆbHGšW²r¡Ú5ì¿}/Ø:QMs›Æ¶
}Z8‘ä†UŒ|''Ñ ßŸú''MôV÷/')
INSERT [dbo].[NGUOIDUNG] ([MaNguoiDung], [MaLoai], [TenNguoiDung], [TenDangNhap], [MatKhau]) VALUES (N'ND0006', N'LND002', N'18520381-Toại', N'18520381', N'YÛ¿Úêì°	ƒkÔqsK¨“„åé1¯9Côž‚ )çºñC[ÍÁÒ»N“qqBðˆ¹CÅöÁ''uxÅÒ^')
GO
SET IDENTITY_INSERT [dbo].[PHANCONG] ON 

INSERT [dbo].[PHANCONG] ([STT], [MaNamHoc], [MaLop], [MaMonHoc], [MaGiaoVien]) VALUES (1, N'NH1920', N'LOP1011920', N'MH0001', N'GV0001')
INSERT [dbo].[PHANCONG] ([STT], [MaNamHoc], [MaLop], [MaMonHoc], [MaGiaoVien]) VALUES (2, N'NH1920', N'LOP1011920', N'MH0002', N'GV0002')
INSERT [dbo].[PHANCONG] ([STT], [MaNamHoc], [MaLop], [MaMonHoc], [MaGiaoVien]) VALUES (3, N'NH1920', N'LOP1011920', N'MH0003', N'GV0003')
INSERT [dbo].[PHANCONG] ([STT], [MaNamHoc], [MaLop], [MaMonHoc], [MaGiaoVien]) VALUES (4, N'NH1920', N'LOP1011920', N'MH0004', N'GV0004')
INSERT [dbo].[PHANCONG] ([STT], [MaNamHoc], [MaLop], [MaMonHoc], [MaGiaoVien]) VALUES (5, N'NH1920', N'LOP1021920', N'MH0001', N'GV0001')
INSERT [dbo].[PHANCONG] ([STT], [MaNamHoc], [MaLop], [MaMonHoc], [MaGiaoVien]) VALUES (6, N'NH1920', N'LOP1021920', N'MH0002', N'GV0002')
INSERT [dbo].[PHANCONG] ([STT], [MaNamHoc], [MaLop], [MaMonHoc], [MaGiaoVien]) VALUES (7, N'NH1920', N'LOP1021920', N'MH0003', N'GV0003')
INSERT [dbo].[PHANCONG] ([STT], [MaNamHoc], [MaLop], [MaMonHoc], [MaGiaoVien]) VALUES (8, N'NH1920', N'LOP1021920', N'MH0004', N'GV0004')
INSERT [dbo].[PHANCONG] ([STT], [MaNamHoc], [MaLop], [MaMonHoc], [MaGiaoVien]) VALUES (9, N'NH1920', N'LOP1111920', N'MH0001', N'GV0001')
INSERT [dbo].[PHANCONG] ([STT], [MaNamHoc], [MaLop], [MaMonHoc], [MaGiaoVien]) VALUES (10, N'NH1920', N'LOP1111920', N'MH0002', N'GV0002')
INSERT [dbo].[PHANCONG] ([STT], [MaNamHoc], [MaLop], [MaMonHoc], [MaGiaoVien]) VALUES (11, N'NH1920', N'LOP1111920', N'MH0003', N'GV0003')
INSERT [dbo].[PHANCONG] ([STT], [MaNamHoc], [MaLop], [MaMonHoc], [MaGiaoVien]) VALUES (12, N'NH1920', N'LOP1111920', N'MH0004', N'GV0004')
SET IDENTITY_INSERT [dbo].[PHANCONG] OFF
GO
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI10', N'LOP1011920', N'HS0001')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI10', N'LOP1011920', N'HS0002')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI10', N'LOP1011920', N'HS0003')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI10', N'LOP1011920', N'HS0004')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI10', N'LOP1011920', N'HS0005')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI10', N'LOP1011920', N'HS0006')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI10', N'LOP1011920', N'HS0007')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI10', N'LOP1011920', N'HS0008')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI10', N'LOP1011920', N'HS0009')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI10', N'LOP1011920', N'HS0010')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI10', N'LOP1021920', N'HS0011')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI10', N'LOP1021920', N'HS0012')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI10', N'LOP1021920', N'HS0013')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI10', N'LOP1021920', N'HS0014')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI10', N'LOP1021920', N'HS0015')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI10', N'LOP1021920', N'HS0016')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI10', N'LOP1021920', N'HS0017')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI10', N'LOP1021920', N'HS0018')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI10', N'LOP1021920', N'HS0019')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI10', N'LOP1021920', N'HS0020')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI11', N'LOP1111920', N'HS0021')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI11', N'LOP1111920', N'HS0022')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI11', N'LOP1111920', N'HS0023')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI11', N'LOP1111920', N'HS0024')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI11', N'LOP1111920', N'HS0025')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI11', N'LOP1111920', N'HS0026')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI11', N'LOP1111920', N'HS0027')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI11', N'LOP1111920', N'HS0028')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI11', N'LOP1111920', N'HS0029')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI11', N'LOP1111920', N'HS0030')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI11', N'LOP1121920', N'HS0031')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI11', N'LOP1121920', N'HS0032')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI11', N'LOP1121920', N'HS0033')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI11', N'LOP1121920', N'HS0034')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI11', N'LOP1121920', N'HS0035')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI11', N'LOP1121920', N'HS0036')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI11', N'LOP1121920', N'HS0037')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI11', N'LOP1121920', N'HS0038')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI11', N'LOP1121920', N'HS0039')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI11', N'LOP1121920', N'HS0040')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI12', N'LOP1211920', N'HS0041')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI12', N'LOP1211920', N'HS0042')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI12', N'LOP1211920', N'HS0043')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI12', N'LOP1211920', N'HS0044')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI12', N'LOP1211920', N'HS0045')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI12', N'LOP1211920', N'HS0046')
INSERT [dbo].[PHANLOP] ([MaNamHoc], [MaKhoiLop], [MaLop], [MaHocSinh]) VALUES (N'NH1920', N'KHOI12', N'LOP1211920', N'HS0047')
GO
INSERT [dbo].[QUYDINH] ([TuoiCanDuoi], [TuoiCanTren], [SiSoCanDuoi], [SiSoCanTren], [DiemDat]) VALUES (15, 20, 30, 40, 5)
GO
INSERT [dbo].[TONGIAO] ([MaTonGiao], [TenTonGiao]) VALUES (N'TG0001', N'Không')
INSERT [dbo].[TONGIAO] ([MaTonGiao], [TenTonGiao]) VALUES (N'TG0002', N'Phật Giáo')
INSERT [dbo].[TONGIAO] ([MaTonGiao], [TenTonGiao]) VALUES (N'TG0003', N'Cao Đài')
INSERT [dbo].[TONGIAO] ([MaTonGiao], [TenTonGiao]) VALUES (N'TG0004', N'Thiên Chúa')
INSERT [dbo].[TONGIAO] ([MaTonGiao], [TenTonGiao]) VALUES (N'TG0005', N'Tin Lành')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__HOCSINH__A9D1053403EF544B]    Script Date: 13/12/2020 2:09:37 PM ******/
ALTER TABLE [dbo].[HOCSINH] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DIEM]  WITH CHECK ADD  CONSTRAINT [FK_DIEM_HOCKY] FOREIGN KEY([MaHocKy])
REFERENCES [dbo].[HOCKY] ([MaHocKy])
GO
ALTER TABLE [dbo].[DIEM] CHECK CONSTRAINT [FK_DIEM_HOCKY]
GO
ALTER TABLE [dbo].[DIEM]  WITH CHECK ADD  CONSTRAINT [FK_DIEM_HOCSINH] FOREIGN KEY([MaHocSinh])
REFERENCES [dbo].[HOCSINH] ([MaHocSinh])
GO
ALTER TABLE [dbo].[DIEM] CHECK CONSTRAINT [FK_DIEM_HOCSINH]
GO
ALTER TABLE [dbo].[DIEM]  WITH CHECK ADD  CONSTRAINT [FK_DIEM_LOAIDIEM] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LOAIDIEM] ([MaLoai])
GO
ALTER TABLE [dbo].[DIEM] CHECK CONSTRAINT [FK_DIEM_LOAIDIEM]
GO
ALTER TABLE [dbo].[DIEM]  WITH CHECK ADD  CONSTRAINT [FK_DIEM_LOP] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LOP] ([MaLop])
GO
ALTER TABLE [dbo].[DIEM] CHECK CONSTRAINT [FK_DIEM_LOP]
GO
ALTER TABLE [dbo].[DIEM]  WITH CHECK ADD  CONSTRAINT [FK_DIEM_MONHOC] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MONHOC] ([MaMonHoc])
GO
ALTER TABLE [dbo].[DIEM] CHECK CONSTRAINT [FK_DIEM_MONHOC]
GO
ALTER TABLE [dbo].[DIEM]  WITH CHECK ADD  CONSTRAINT [FK_DIEM_NAMHOC] FOREIGN KEY([MaNamHoc])
REFERENCES [dbo].[NAMHOC] ([MaNamHoc])
GO
ALTER TABLE [dbo].[DIEM] CHECK CONSTRAINT [FK_DIEM_NAMHOC]
GO
ALTER TABLE [dbo].[GIAOVIEN]  WITH CHECK ADD  CONSTRAINT [FK_GIAOVIEN_MONHOC] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MONHOC] ([MaMonHoc])
GO
ALTER TABLE [dbo].[GIAOVIEN] CHECK CONSTRAINT [FK_GIAOVIEN_MONHOC]
GO
ALTER TABLE [dbo].[HOCSINH]  WITH CHECK ADD  CONSTRAINT [FK_HOCSINH_DANTOC] FOREIGN KEY([MaDanToc])
REFERENCES [dbo].[DANTOC] ([MaDanToc])
GO
ALTER TABLE [dbo].[HOCSINH] CHECK CONSTRAINT [FK_HOCSINH_DANTOC]
GO
ALTER TABLE [dbo].[HOCSINH]  WITH CHECK ADD  CONSTRAINT [FK_HOCSINH_NGHENGHIEPCHA] FOREIGN KEY([MaNNghiepCha])
REFERENCES [dbo].[NGHENGHIEP] ([MaNghe])
GO
ALTER TABLE [dbo].[HOCSINH] CHECK CONSTRAINT [FK_HOCSINH_NGHENGHIEPCHA]
GO
ALTER TABLE [dbo].[HOCSINH]  WITH CHECK ADD  CONSTRAINT [FK_HOCSINH_NGHENGHIEPME] FOREIGN KEY([MaNNghiepMe])
REFERENCES [dbo].[NGHENGHIEP] ([MaNghe])
GO
ALTER TABLE [dbo].[HOCSINH] CHECK CONSTRAINT [FK_HOCSINH_NGHENGHIEPME]
GO
ALTER TABLE [dbo].[HOCSINH]  WITH CHECK ADD  CONSTRAINT [FK_HOCSINH_TONGIAO] FOREIGN KEY([MaTonGiao])
REFERENCES [dbo].[TONGIAO] ([MaTonGiao])
GO
ALTER TABLE [dbo].[HOCSINH] CHECK CONSTRAINT [FK_HOCSINH_TONGIAO]
GO
ALTER TABLE [dbo].[KQ_HOCSINH_CANAM]  WITH CHECK ADD  CONSTRAINT [FK_KQHSCN_HANHKIEM] FOREIGN KEY([MaHanhKiem])
REFERENCES [dbo].[HANHKIEM] ([MaHanhKiem])
GO
ALTER TABLE [dbo].[KQ_HOCSINH_CANAM] CHECK CONSTRAINT [FK_KQHSCN_HANHKIEM]
GO
ALTER TABLE [dbo].[KQ_HOCSINH_CANAM]  WITH CHECK ADD  CONSTRAINT [FK_KQHSCN_HOCLUC] FOREIGN KEY([MaHocLuc])
REFERENCES [dbo].[HOCLUC] ([MaHocLuc])
GO
ALTER TABLE [dbo].[KQ_HOCSINH_CANAM] CHECK CONSTRAINT [FK_KQHSCN_HOCLUC]
GO
ALTER TABLE [dbo].[KQ_HOCSINH_CANAM]  WITH CHECK ADD  CONSTRAINT [FK_KQHSCN_HOCSINH] FOREIGN KEY([MaHocSinh])
REFERENCES [dbo].[HOCSINH] ([MaHocSinh])
GO
ALTER TABLE [dbo].[KQ_HOCSINH_CANAM] CHECK CONSTRAINT [FK_KQHSCN_HOCSINH]
GO
ALTER TABLE [dbo].[KQ_HOCSINH_CANAM]  WITH CHECK ADD  CONSTRAINT [FK_KQHSCN_KETQUA] FOREIGN KEY([MaKetQua])
REFERENCES [dbo].[KETQUA] ([MaKetQua])
GO
ALTER TABLE [dbo].[KQ_HOCSINH_CANAM] CHECK CONSTRAINT [FK_KQHSCN_KETQUA]
GO
ALTER TABLE [dbo].[KQ_HOCSINH_CANAM]  WITH CHECK ADD  CONSTRAINT [FK_KQHSCN_LOP] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LOP] ([MaLop])
GO
ALTER TABLE [dbo].[KQ_HOCSINH_CANAM] CHECK CONSTRAINT [FK_KQHSCN_LOP]
GO
ALTER TABLE [dbo].[KQ_HOCSINH_CANAM]  WITH CHECK ADD  CONSTRAINT [FK_KQHSCN_NAMHOC] FOREIGN KEY([MaNamHoc])
REFERENCES [dbo].[NAMHOC] ([MaNamHoc])
GO
ALTER TABLE [dbo].[KQ_HOCSINH_CANAM] CHECK CONSTRAINT [FK_KQHSCN_NAMHOC]
GO
ALTER TABLE [dbo].[KQ_HOCSINH_MONHOC]  WITH CHECK ADD  CONSTRAINT [FK_KQHSMH_HOCKY] FOREIGN KEY([MaHocKy])
REFERENCES [dbo].[HOCKY] ([MaHocKy])
GO
ALTER TABLE [dbo].[KQ_HOCSINH_MONHOC] CHECK CONSTRAINT [FK_KQHSMH_HOCKY]
GO
ALTER TABLE [dbo].[KQ_HOCSINH_MONHOC]  WITH CHECK ADD  CONSTRAINT [FK_KQHSMH_HOCSINH] FOREIGN KEY([MaHocSinh])
REFERENCES [dbo].[HOCSINH] ([MaHocSinh])
GO
ALTER TABLE [dbo].[KQ_HOCSINH_MONHOC] CHECK CONSTRAINT [FK_KQHSMH_HOCSINH]
GO
ALTER TABLE [dbo].[KQ_HOCSINH_MONHOC]  WITH CHECK ADD  CONSTRAINT [FK_KQHSMH_LOP] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LOP] ([MaLop])
GO
ALTER TABLE [dbo].[KQ_HOCSINH_MONHOC] CHECK CONSTRAINT [FK_KQHSMH_LOP]
GO
ALTER TABLE [dbo].[KQ_HOCSINH_MONHOC]  WITH CHECK ADD  CONSTRAINT [FK_KQHSMH_MONHOC] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MONHOC] ([MaMonHoc])
GO
ALTER TABLE [dbo].[KQ_HOCSINH_MONHOC] CHECK CONSTRAINT [FK_KQHSMH_MONHOC]
GO
ALTER TABLE [dbo].[KQ_HOCSINH_MONHOC]  WITH CHECK ADD  CONSTRAINT [FK_KQHSMH_NAMHOC] FOREIGN KEY([MaNamHoc])
REFERENCES [dbo].[NAMHOC] ([MaNamHoc])
GO
ALTER TABLE [dbo].[KQ_HOCSINH_MONHOC] CHECK CONSTRAINT [FK_KQHSMH_NAMHOC]
GO
ALTER TABLE [dbo].[KQ_LOPHOC_HOCKY]  WITH CHECK ADD  CONSTRAINT [FK_KQLHHK_HOCKY] FOREIGN KEY([MaHocKy])
REFERENCES [dbo].[HOCKY] ([MaHocKy])
GO
ALTER TABLE [dbo].[KQ_LOPHOC_HOCKY] CHECK CONSTRAINT [FK_KQLHHK_HOCKY]
GO
ALTER TABLE [dbo].[KQ_LOPHOC_HOCKY]  WITH CHECK ADD  CONSTRAINT [FK_KQLHHK_LOP] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LOP] ([MaLop])
GO
ALTER TABLE [dbo].[KQ_LOPHOC_HOCKY] CHECK CONSTRAINT [FK_KQLHHK_LOP]
GO
ALTER TABLE [dbo].[KQ_LOPHOC_HOCKY]  WITH CHECK ADD  CONSTRAINT [FK_KQLHHK_NAMHOC] FOREIGN KEY([MaNamHoc])
REFERENCES [dbo].[NAMHOC] ([MaNamHoc])
GO
ALTER TABLE [dbo].[KQ_LOPHOC_HOCKY] CHECK CONSTRAINT [FK_KQLHHK_NAMHOC]
GO
ALTER TABLE [dbo].[KQ_LOPHOC_MONHOC]  WITH CHECK ADD  CONSTRAINT [FK_KQLHMH_HOCKY] FOREIGN KEY([MaHocKy])
REFERENCES [dbo].[HOCKY] ([MaHocKy])
GO
ALTER TABLE [dbo].[KQ_LOPHOC_MONHOC] CHECK CONSTRAINT [FK_KQLHMH_HOCKY]
GO
ALTER TABLE [dbo].[KQ_LOPHOC_MONHOC]  WITH CHECK ADD  CONSTRAINT [FK_KQLHMH_LOP] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LOP] ([MaLop])
GO
ALTER TABLE [dbo].[KQ_LOPHOC_MONHOC] CHECK CONSTRAINT [FK_KQLHMH_LOP]
GO
ALTER TABLE [dbo].[KQ_LOPHOC_MONHOC]  WITH CHECK ADD  CONSTRAINT [FK_KQLHMH_MONHOC] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MONHOC] ([MaMonHoc])
GO
ALTER TABLE [dbo].[KQ_LOPHOC_MONHOC] CHECK CONSTRAINT [FK_KQLHMH_MONHOC]
GO
ALTER TABLE [dbo].[KQ_LOPHOC_MONHOC]  WITH CHECK ADD  CONSTRAINT [FK_KQLHMH_NAMHOC] FOREIGN KEY([MaNamHoc])
REFERENCES [dbo].[NAMHOC] ([MaNamHoc])
GO
ALTER TABLE [dbo].[KQ_LOPHOC_MONHOC] CHECK CONSTRAINT [FK_KQLHMH_NAMHOC]
GO
ALTER TABLE [dbo].[LOP]  WITH CHECK ADD  CONSTRAINT [FK_LOP_GIAOVIEN] FOREIGN KEY([MaGiaoVien])
REFERENCES [dbo].[GIAOVIEN] ([MaGiaoVien])
GO
ALTER TABLE [dbo].[LOP] CHECK CONSTRAINT [FK_LOP_GIAOVIEN]
GO
ALTER TABLE [dbo].[LOP]  WITH CHECK ADD  CONSTRAINT [FK_LOP_KHOILOP] FOREIGN KEY([MaKhoiLop])
REFERENCES [dbo].[KHOILOP] ([MaKhoiLop])
GO
ALTER TABLE [dbo].[LOP] CHECK CONSTRAINT [FK_LOP_KHOILOP]
GO
ALTER TABLE [dbo].[LOP]  WITH CHECK ADD  CONSTRAINT [FK_LOP_NAMHOC] FOREIGN KEY([MaNamHoc])
REFERENCES [dbo].[NAMHOC] ([MaNamHoc])
GO
ALTER TABLE [dbo].[LOP] CHECK CONSTRAINT [FK_LOP_NAMHOC]
GO
ALTER TABLE [dbo].[NGUOIDUNG]  WITH CHECK ADD  CONSTRAINT [FK_NGUOIDUNG_LOAINGUOIDUNG] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LOAINGUOIDUNG] ([MaLoai])
GO
ALTER TABLE [dbo].[NGUOIDUNG] CHECK CONSTRAINT [FK_NGUOIDUNG_LOAINGUOIDUNG]
GO
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONG_GIAOVIEN] FOREIGN KEY([MaGiaoVien])
REFERENCES [dbo].[GIAOVIEN] ([MaGiaoVien])
GO
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [FK_PHANCONG_GIAOVIEN]
GO
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONG_LOP] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LOP] ([MaLop])
GO
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [FK_PHANCONG_LOP]
GO
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONG_MONHOC] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MONHOC] ([MaMonHoc])
GO
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [FK_PHANCONG_MONHOC]
GO
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONG_NAMHOC] FOREIGN KEY([MaNamHoc])
REFERENCES [dbo].[NAMHOC] ([MaNamHoc])
GO
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [FK_PHANCONG_NAMHOC]
GO
ALTER TABLE [dbo].[PHANLOP]  WITH CHECK ADD  CONSTRAINT [FK_PHANLOP_HOCSINH] FOREIGN KEY([MaHocSinh])
REFERENCES [dbo].[HOCSINH] ([MaHocSinh])
GO
ALTER TABLE [dbo].[PHANLOP] CHECK CONSTRAINT [FK_PHANLOP_HOCSINH]
GO
ALTER TABLE [dbo].[PHANLOP]  WITH CHECK ADD  CONSTRAINT [FK_PHANLOP_KHOI] FOREIGN KEY([MaKhoiLop])
REFERENCES [dbo].[KHOILOP] ([MaKhoiLop])
GO
ALTER TABLE [dbo].[PHANLOP] CHECK CONSTRAINT [FK_PHANLOP_KHOI]
GO
ALTER TABLE [dbo].[PHANLOP]  WITH CHECK ADD  CONSTRAINT [FK_PHANLOP_LOP] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LOP] ([MaLop])
GO
ALTER TABLE [dbo].[PHANLOP] CHECK CONSTRAINT [FK_PHANLOP_LOP]
GO
ALTER TABLE [dbo].[PHANLOP]  WITH CHECK ADD  CONSTRAINT [FK_PHANLOP_NAMHOC] FOREIGN KEY([MaNamHoc])
REFERENCES [dbo].[NAMHOC] ([MaNamHoc])
GO
ALTER TABLE [dbo].[PHANLOP] CHECK CONSTRAINT [FK_PHANLOP_NAMHOC]
GO
ALTER TABLE [dbo].[DIEM]  WITH CHECK ADD  CONSTRAINT [CK_DIEM] CHECK  (([Diem]>=(0) AND [Diem]<=(10)))
GO
ALTER TABLE [dbo].[DIEM] CHECK CONSTRAINT [CK_DIEM]
GO
ALTER TABLE [dbo].[HOCKY]  WITH CHECK ADD  CONSTRAINT [CK_HOCKY] CHECK  ((CONVERT([int],right([MaHocKy],(1)))>=(1) AND CONVERT([int],right([MaHocKy],(1)))<=(3)))
GO
ALTER TABLE [dbo].[HOCKY] CHECK CONSTRAINT [CK_HOCKY]
GO
ALTER TABLE [dbo].[HOCLUC]  WITH CHECK ADD  CONSTRAINT [CK_DiemCanDuoi] CHECK  (([DiemCanDuoi]>=(0) AND [DiemCanDuoi]<=(10)))
GO
ALTER TABLE [dbo].[HOCLUC] CHECK CONSTRAINT [CK_DiemCanDuoi]
GO
ALTER TABLE [dbo].[HOCLUC]  WITH CHECK ADD  CONSTRAINT [CK_DiemCanTren] CHECK  (([DiemCanTren]>=(0) AND [DiemCanTren]<=(10)))
GO
ALTER TABLE [dbo].[HOCLUC] CHECK CONSTRAINT [CK_DiemCanTren]
GO
ALTER TABLE [dbo].[HOCLUC]  WITH CHECK ADD  CONSTRAINT [CK_DiemKhongChe] CHECK  (([DiemKhongChe]>=(0) AND [DiemKhongChe]<=(10)))
GO
ALTER TABLE [dbo].[HOCLUC] CHECK CONSTRAINT [CK_DiemKhongChe]
GO
ALTER TABLE [dbo].[KQ_HOCSINH_CANAM]  WITH CHECK ADD  CONSTRAINT [CK_DiemTBCN] CHECK  (([DiemTBCN]>=(0) AND [DiemTBCN]<=(10)))
GO
ALTER TABLE [dbo].[KQ_HOCSINH_CANAM] CHECK CONSTRAINT [CK_DiemTBCN]
GO
ALTER TABLE [dbo].[KQ_HOCSINH_CANAM]  WITH CHECK ADD  CONSTRAINT [CK_DiemTBHK1] CHECK  (([DiemTBHK1]>=(0) AND [DiemTBHK1]<=(10)))
GO
ALTER TABLE [dbo].[KQ_HOCSINH_CANAM] CHECK CONSTRAINT [CK_DiemTBHK1]
GO
ALTER TABLE [dbo].[KQ_HOCSINH_CANAM]  WITH CHECK ADD  CONSTRAINT [CK_DiemTBHK2] CHECK  (([DiemTBHK2]>=(0) AND [DiemTBHK2]<=(10)))
GO
ALTER TABLE [dbo].[KQ_HOCSINH_CANAM] CHECK CONSTRAINT [CK_DiemTBHK2]
GO
ALTER TABLE [dbo].[KQ_HOCSINH_MONHOC]  WITH CHECK ADD  CONSTRAINT [CK_Diem15PhutTB] CHECK  (([Diem15PhutTB]>=(0) AND [Diem15PhutTB]<=(10)))
GO
ALTER TABLE [dbo].[KQ_HOCSINH_MONHOC] CHECK CONSTRAINT [CK_Diem15PhutTB]
GO
ALTER TABLE [dbo].[KQ_HOCSINH_MONHOC]  WITH CHECK ADD  CONSTRAINT [CK_Diem45PhutTB] CHECK  (([Diem45PhutTB]>=(0) AND [Diem45PhutTB]<=(10)))
GO
ALTER TABLE [dbo].[KQ_HOCSINH_MONHOC] CHECK CONSTRAINT [CK_Diem45PhutTB]
GO
ALTER TABLE [dbo].[KQ_HOCSINH_MONHOC]  WITH CHECK ADD  CONSTRAINT [CK_DiemMiengTB] CHECK  (([DiemMiengTB]>=(0) AND [DiemMiengTB]<=(10)))
GO
ALTER TABLE [dbo].[KQ_HOCSINH_MONHOC] CHECK CONSTRAINT [CK_DiemMiengTB]
GO
ALTER TABLE [dbo].[KQ_HOCSINH_MONHOC]  WITH CHECK ADD  CONSTRAINT [CK_DiemTBHK] CHECK  (([DiemTBHK]>=(0) AND [DiemTBHK]<=(10)))
GO
ALTER TABLE [dbo].[KQ_HOCSINH_MONHOC] CHECK CONSTRAINT [CK_DiemTBHK]
GO
ALTER TABLE [dbo].[KQ_HOCSINH_MONHOC]  WITH CHECK ADD  CONSTRAINT [CK_DiemThi] CHECK  (([DiemThi]>=(0) AND [DiemThi]<=(10)))
GO
ALTER TABLE [dbo].[KQ_HOCSINH_MONHOC] CHECK CONSTRAINT [CK_DiemThi]
GO
/****** Object:  StoredProcedure [dbo].[CapNhatQuyDinhDiemDat]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CapNhatQuyDinhDiemDat] @diemDat INT 
AS
BEGIN
	UPDATE QUYDINH SET DiemDat = @diemDat
END
GO
/****** Object:  StoredProcedure [dbo].[CapNhatQuyDinhDoTuoi]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--===================================================================================================================================================

CREATE PROCEDURE [dbo].[CapNhatQuyDinhDoTuoi]
	@tuoiCanDuoi INT,
	@tuoiCanTren INT 
AS
BEGIN
	UPDATE QUYDINH SET TuoiCanDuoi = @tuoiCanDuoi, TuoiCanTren = @tuoiCanTren
END
GO
/****** Object:  StoredProcedure [dbo].[CapNhatQuyDinhSiSo]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CapNhatQuyDinhSiSo]
	@siSoCanDuoi INT,
	@siSoCanTren INT 
AS
BEGIN
	UPDATE QUYDINH SET SiSoCanDuoi = @siSoCanDuoi, SiSoCanTren = @siSoCanTren
END
GO
/****** Object:  StoredProcedure [dbo].[DangNhap]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--===================================================================================================================================================

CREATE PROCEDURE [dbo].[DangNhap]
	@tenDangNhap NVARCHAR(30),
	@matKhau VARCHAR(64)
AS
BEGIN
	SELECT * FROM NGUOIDUNG 
	WHERE TenDangNhap = @tendangnhap
	  AND MatKhau = HASHBYTES('SHA2_512', @tenDangNhap + '@!?#?' + @matKhau)
END
GO
/****** Object:  StoredProcedure [dbo].[DoiMatKhau]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DoiMatKhau]
	@tenDangNhap NVARCHAR(30),
	@matKhau VARCHAR(64) 
AS
BEGIN
	UPDATE NGUOIDUNG SET MatKhau = @matkhau WHERE TenDangNhap = @tendangnhap
END
GO
/****** Object:  StoredProcedure [dbo].[LayDanhSachDiem]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--===================================================================================================================================================

CREATE PROCEDURE [dbo].[LayDanhSachDiem]
	@maHocSinh VARCHAR(6), 
	@maMonHoc VARCHAR(6), 
	@maHocKy VARCHAR(3), 
	@maNamHoc VARCHAR(6), 
	@maLop VARCHAR(10)
AS
BEGIN
	SELECT * FROM DIEM, LOP, HOCSINH, MONHOC, LOAIDIEM
	WHERE DIEM.MaHocSinh = HOCSINH.MaHocSinh 
	  AND DIEM.MaMonHoc = MONHOC.MaMonHoc 
	  AND DIEM.MaLoai = LOAIDIEM.MaLoai 
	  AND DIEM.MaLop = LOP.MaLop 
	  AND HOCSINH.MaHocSinh = @maHocSinh
	  AND MONHOC.MaMonHoc = @maMonHoc
	  AND DIEM.MaHocKy = @maHocKy
	  AND DIEM.MaNamHoc = @maNamHoc
	  AND LOP.MaLop = @maLop
END
GO
/****** Object:  StoredProcedure [dbo].[LayDanhSachDiemHocSinh]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[LayDanhSachDiemHocSinh]
	@maHocSinh VARCHAR(6), 
	@maMonHoc VARCHAR(6), 
	@maHocKy VARCHAR(3), 
	@maNamHoc VARCHAR(6), 
	@maLop VARCHAR(10)
AS
BEGIN
	SELECT * FROM DIEM, LOAIDIEM 
	WHERE DIEM.MaLoai = LOAIDIEM.MaLoai 
	  AND DIEM.MaHocSinh = @maHocSinh
	  AND DIEM.MaMonHoc = @maMonHoc
	  AND DIEM.MaHocKy = @maHocKy 
	  AND DIEM.MaNamHoc = @maNamHoc
	  AND DIEM.MaLop = @maLop
END
GO
/****** Object:  StoredProcedure [dbo].[LayDanhSachHocSinh]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--===================================================================================================================================================

CREATE PROCEDURE [dbo].[LayDanhSachHocSinh]
	@maNamHoc VARCHAR(6),
	@maLop VARCHAR(10),
	@tatCaCot BIT
AS
BEGIN
	IF @tatCaCot = 1
		SELECT PL.MaHocSinh, HS.* FROM HOCSINH HS 
		INNER JOIN PHANLOP PL ON HS.MaHocSinh = PL.MaHocSinh 
		INNER JOIN LOP L ON L.MaLop = PL.MaLop 
		WHERE PL.MaNamHoc = @maNamHoc AND PL.MaLop = @maLop
	ELSE
		SELECT PL.MaHocSinh, HS.HoTen FROM HOCSINH HS 
		INNER JOIN PHANLOP PL ON HS.MaHocSinh = PL.MaHocSinh 
		INNER JOIN LOP L ON L.MaLop = PL.MaLop 
		WHERE PL.MaNamHoc = @maNamHoc AND PL.MaLop = @maLop
END
GO
/****** Object:  StoredProcedure [dbo].[LayDanhSachMonHocTheoLop]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[LayDanhSachMonHocTheoLop]
	@maNamHoc VARCHAR(6),
	@maLop VARCHAR(10)
AS
BEGIN
	SELECT MH.MaMonHoc, MH.TenMonHoc, MH.HeSo FROM MONHOC MH, PHANCONG PC 
	WHERE MH.MaMonHoc = PC.MaMonHoc AND PC.MaNamHoc = @maNamHoc AND PC.MaLop = @maLop
END
GO
/****** Object:  StoredProcedure [dbo].[LayDanhSachMonHocTheoNam]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--===================================================================================================================================================

CREATE PROCEDURE [dbo].[LayDanhSachMonHocTheoNam] @maNamHoc VARCHAR(6)
AS
BEGIN
	SELECT MH.MaMonHoc, MH.TenMonHoc, MH.HeSo FROM MONHOC MH, PHANCONG PC 
	WHERE MH.MaMonHoc = PC.MaMonHoc AND PC.MaNamHoc = @maNamHoc
END
GO
/****** Object:  StoredProcedure [dbo].[ReportKQHSCaNam]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--===================================================================================================================================================

CREATE PROCEDURE [dbo].[ReportKQHSCaNam]
	@maLop VARCHAR(10), 
	@maNamHoc VARCHAR(6)
AS
BEGIN
	SELECT * FROM HOCSINH HS 
	INNER JOIN KQ_HOCSINH_CANAM KQ ON KQ.MaHocSinh = HS.MaHocSinh 
	INNER JOIN LOP ON KQ.MaLop = LOP.MaLop 
    INNER JOIN NAMHOC NH ON KQ.MaNamHoc = NH.MaNamHoc 
	INNER JOIN HOCLUC HL ON KQ.MaHocLuc = HL.MaHocLuc
	INNER JOIN HANHKIEM HK ON KQ.MaHanhKiem = HK.MaHanhKiem 
	INNER JOIN KETQUA KQUA ON KQ.MaKetQua = KQUA.MaKetQua
    WHERE KQ.MaLop = @maLop AND KQ.MaNamHoc = @maNamHoc
END 
GO
/****** Object:  StoredProcedure [dbo].[ReportKQHSMonHoc]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--===================================================================================================================================================

CREATE PROCEDURE [dbo].[ReportKQHSMonHoc]
	@maLop VARCHAR(10), 
	@maNamHoc VARCHAR(6),
	@maMonHoc VARCHAR(6), 
	@maHocKy VARCHAR(3)
AS
BEGIN
	SELECT * FROM HOCSINH HS 
	INNER JOIN KQ_HOCSINH_MONHOC KQ ON KQ.MaHocSinh = HS.MaHocSinh 
	INNER JOIN LOP ON KQ.MaLop = LOP.MaLop 
	INNER JOIN NAMHOC NH ON KQ.MaNamHoc = NH.MaNamHoc 
	INNER JOIN MONHOC MH ON KQ.MaMonHoc = MH.MaMonHoc 
	INNER JOIN HOCKY HK ON KQ.MaHocKy = HK.MaHocKy 
	WHERE KQ.MaLop = @maLop
	  AND KQ.MaNamHoc = @maNamHoc
	  AND KQ.MaMonHoc = @maMonHoc
	  AND KQ.MaHocKy = @maHocKy
END 
GO
/****** Object:  StoredProcedure [dbo].[ReportKQLHHocKy]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--===================================================================================================================================================

CREATE PROCEDURE [dbo].[ReportKQLHHocKy]
	@maNamHoc VARCHAR(6),
	@maHocKy VARCHAR(3)
AS
BEGIN
	SELECT * FROM LOP 
	INNER JOIN KQ_LOPHOC_HOCKY KQ ON KQ.MaLop = LOP.MaLop 
	INNER JOIN NAMHOC NH ON KQ.MaNamHoc = NH.MaNamHoc 
	INNER JOIN HOCKY HK ON KQ.MaHocKy = HK.MaHocKy 
	WHERE KQ.MaNamHoc = @maNamHoc
	  AND KQ.MaHocKy = @maHocKy
END 
GO
/****** Object:  StoredProcedure [dbo].[ReportKQLHMonHoc]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--===================================================================================================================================================

CREATE PROCEDURE [dbo].[ReportKQLHMonHoc]
	@maNamHoc VARCHAR(6),
	@maMonHoc VARCHAR(6), 
	@maHocKy VARCHAR(3)
AS
BEGIN
	SELECT * FROM LOP 
	INNER JOIN KQ_LOPHOC_MONHOC KQ ON KQ.MaLop = LOP.MaLop 
	INNER JOIN NAMHOC NH ON KQ.MaNamHoc = NH.MaNamHoc 
	INNER JOIN MONHOC MH ON KQ.MaMonHoc = MH.MaMonHoc 
	INNER JOIN HOCKY HK ON KQ.MaHocKy = HK.MaHocKy 
	WHERE KQ.MaNamHoc = @maNamHoc
	  AND KQ.MaMonHoc = @maMonHoc
	  AND KQ.MaHocKy = @maHocKy
END 
GO
/****** Object:  StoredProcedure [dbo].[ThemDiem]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ThemDiem]
	@maHocSinh VARCHAR(6), 
	@maMonHoc VARCHAR(6), 
	@maHocKy VARCHAR(3), 
	@maNamHoc VARCHAR(6), 
	@maLop VARCHAR(10), 
	@maLoaiDiem VARCHAR(6),
	@diemSo FLOAT
AS
BEGIN
	INSERT INTO DIEM (MaHocSinh, MaMonHoc, MaHocKy, MaNamHoc, MaLop, MaLoai, Diem)
	VALUES (@maHocSinh, @maMonHoc, @maHocKy, @maNamHoc, @maLop, @maLoaiDiem, @diemSo)
END
GO
/****** Object:  StoredProcedure [dbo].[ThemGiaoVien]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ThemGiaoVien]
	@maGiaoVien VARCHAR(6), 
    @tenGiaoVien NVARCHAR(30), 
    @diaChi NVARCHAR(50), 
    @dienThoai NVARCHAR(15), 
    @chuyenMon NVARCHAR(6)
AS
BEGIN
	INSERT INTO GiaoVien (MaGiaoVien, TenGiaoVien, DiaChi, DienThoai, MaMonHoc) 
	VALUES (@maGiaoVien, @tenGiaoVien, @diaChi, @dienThoai, @chuyenMon)
END
GO
/****** Object:  StoredProcedure [dbo].[ThemHocSinh]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ThemHocSinh]
	@maHocSinh VARCHAR(6), 
    @hoTen NVARCHAR(30), 
    @gioiTinh BIT, 
    @ngaySinh DATETIME, 
    @diaChi NVARCHAR(50), 
    @maDanToc VARCHAR(6), 
    @maTonGiao VARCHAR(6), 
    @hoTenCha NVARCHAR(30), 
    @maNgheCha VARCHAR(6), 
    @hoTenMe NVARCHAR(30), 
    @maNgheMe VARCHAR(6), 
    @email NVARCHAR(50)
AS
BEGIN
	INSERT INTO HOCSINH (MaHocSinh, HoTen, GioiTinh, NgaySinh, DiaChi, MaDanToc, MaTonGiao, HoTenCha, MaNNghiepCha, HoTenMe, MaNNghiepMe, Email) 
	VALUES (@maHocSinh, @hoTen, @gioiTinh, @ngaySinh, @diaChi, @maDanToc, @maTonGiao, @hoTenCha, @maNgheCha, @hoTenMe, @maNgheMe, @email)
END
GO
/****** Object:  StoredProcedure [dbo].[ThemKQHSCaNam]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ThemKQHSCaNam]
	@maHocSinh VARCHAR(6), 
	@maLop VARCHAR(10), 
	@maNamHoc VARCHAR(6), 
	@maHocLuc VARCHAR(6), 
	@maHanhKiem VARCHAR(6), 
	@maKetQua VARCHAR(6), 
	@diemTBHK1 FLOAT, 
	@diemTBHK2 FLOAT, 
	@diemTBCN FLOAT
AS
BEGIN
	INSERT INTO KQ_HOCSINH_CANAM (MaHocSinh, MaLop, MaNamHoc, MaHocLuc, MaHanhKiem, MaKetQua, DiemTBHK1, DiemTBHK2, DiemTBCN)
	VALUES (@maHocSinh, @maLop, @maNamHoc, @maHocLuc, @maHanhKiem, @maKetQua, @diemTBHK1, @diemTBHK2, @diemTBCN)
END
GO
/****** Object:  StoredProcedure [dbo].[ThemKQHSMonHoc]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ThemKQHSMonHoc]
	@maHocSinh VARCHAR(6),
	@maLop VARCHAR(10), 
	@maNamHoc VARCHAR(6),
	@maMonHoc VARCHAR(6), 
	@maHocKy VARCHAR(3), 
	@diemMiengTB FLOAT,
	@diem15PhutTB FLOAT,
	@diem45PhutTB FLOAT,
	@diemThi FLOAT,
	@diemTBHK FLOAT
AS
BEGIN
	INSERT INTO KQ_HOCSINH_MONHOC (MaHocSinh, MaLop, MaNamHoc, MaMonHoc, MaHocKy, DiemMiengTB, Diem15PhutTB, Diem45PhutTB, DiemThi, DiemTBHK)
	VALUES (@maHocSinh, @maLop, @maNamHoc, @maMonHoc, @maHocKy, @diemMiengTB, @diem15PhutTB, @diem45PhutTB, @diemThi, @diemTBHK)
END
GO
/****** Object:  StoredProcedure [dbo].[ThemKQLHHocKy]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ThemKQLHHocKy]
	@maLop VARCHAR(10), 
	@maNamHoc VARCHAR(6),
	@maHocKy VARCHAR(3), 
	@soLuongDat INT,
	@tiLe FLOAT
AS
BEGIN
	INSERT INTO KQ_LOPHOC_HOCKY (MaLop, MaNamHoc, MaHocKy, SoLuongDat, TiLe)
	VALUES (@maLop, @maNamHoc, @maHocKy, @soLuongDat, @tiLe)
END
GO
/****** Object:  StoredProcedure [dbo].[ThemKQLHMonHoc]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ThemKQLHMonHoc]
	@maLop VARCHAR(10), 
	@maNamHoc VARCHAR(6),
	@maMonHoc VARCHAR(6), 
	@maHocKy VARCHAR(3), 
	@soLuongDat INT,
	@tiLe FLOAT
AS
BEGIN
	INSERT INTO KQ_LOPHOC_MONHOC (MaLop, MaNamHoc, MaMonHoc, MaHocKy, SoLuongDat, TiLe)
	VALUES (@maLop, @maNamHoc, @maMonHoc, @maHocKy, @soLuongDat, @tiLe)
END
GO
/****** Object:  StoredProcedure [dbo].[ThemLop]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--===================================================================================================================================================

CREATE PROCEDURE [dbo].[ThemLop]
	@maLop VARCHAR(10), 
	@tenLop NVARCHAR(30), 
	@maKhoiLop VARCHAR(6), 
	@maNamHoc VARCHAR(6), 
	@siSo INT, 
	@maGiaoVien VARCHAR(6)
AS
BEGIN
	INSERT INTO LOP (MaLop, TenLop, MaKhoiLop, MaNamHoc, SiSo, MaGiaoVien)
	VALUES (@maLop, @tenLop, @maKhoiLop, @maNamHoc, @siSo, @maGiaoVien)
END
GO
/****** Object:  StoredProcedure [dbo].[ThemPhanCong]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--===================================================================================================================================================

CREATE PROCEDURE [dbo].[ThemPhanCong]
	@maNamHoc VARCHAR(6), 
	@maLop VARCHAR(10), 
	@maMonHoc VARCHAR(6), 
	@maGiaoVien VARCHAR(6)
AS
BEGIN
	INSERT INTO PHANCONG (MaNamHoc, MaLop, MaMonHoc, MaGiaoVien)
	VALUES (@maNamHoc, @maLop, @maMonHoc, @maGiaoVien)
END
GO
/****** Object:  StoredProcedure [dbo].[XoaDiem]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[XoaDiem] @STT INT
AS
BEGIN
	DELETE FROM DIEM WHERE STT = @stt
END
GO
/****** Object:  StoredProcedure [dbo].[XoaKQHSCaNam]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[XoaKQHSCaNam]
	@maHocSinh VARCHAR(6),
	@maLop VARCHAR(10), 
	@maNamHoc VARCHAR(6)
AS
BEGIN
	DELETE FROM KQ_HOCSINH_CANAM 
	WHERE MaHocSinh = @maHocSinh 
	  AND MaLop = @maLop 
	  AND MaNamHoc = @maNamHoc
END 
GO
/****** Object:  StoredProcedure [dbo].[XoaKQHSMonHoc]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[XoaKQHSMonHoc]
	@maHocSinh VARCHAR(6),
	@maLop VARCHAR(10), 
	@maNamHoc VARCHAR(6),
	@maMonHoc VARCHAR(6), 
	@maHocKy VARCHAR(3)
AS
BEGIN
	DELETE FROM KQ_HOCSINH_MONHOC 
	WHERE MaHocSinh = @maHocSinh 
	  AND MaLop = @maLop 
	  AND MaNamHoc = @maNamHoc
	  AND MaMonHoc = @maMonHoc 
	  AND MaHocKy = @maHocKy 
END 
GO
/****** Object:  StoredProcedure [dbo].[XoaKQLHHocKy]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[XoaKQLHHocKy]
	@maLop VARCHAR(10), 
	@maNamHoc VARCHAR(6),
	@maHocKy VARCHAR(3)
AS
BEGIN
	DELETE FROM KQ_LOPHOC_HOCKY 
	WHERE MaLop = @maLop 
	  AND MaNamHoc = @maNamHoc
	  AND MaHocKy = @maHocKy 
END 
GO
/****** Object:  StoredProcedure [dbo].[XoaKQLHMonHoc]    Script Date: 13/12/2020 2:09:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[XoaKQLHMonHoc]
	@maLop VARCHAR(10), 
	@maNamHoc VARCHAR(6),
	@maMonHoc VARCHAR(6), 
	@maHocKy VARCHAR(3)
AS
BEGIN
	DELETE FROM KQ_LOPHOC_MONHOC 
	WHERE MaLop = @maLop 
	  AND MaNamHoc = @maNamHoc
	  AND MaMonHoc = @maMonHoc 
	  AND MaHocKy = @maHocKy 
END 
GO
ALTER DATABASE [QuanLyHocSinh] SET  READ_WRITE 
GO
