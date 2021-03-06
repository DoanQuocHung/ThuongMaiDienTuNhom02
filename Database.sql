USE [WebShopDongHoDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/18/2021 8:27:26 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonHangs]    Script Date: 5/18/2021 8:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHangs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idDH] [nvarchar](max) NULL,
	[tenSP] [nvarchar](max) NULL,
	[gia] [decimal](18, 2) NOT NULL,
	[soLuong] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietDonHangs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHangs]    Script Date: 5/18/2021 8:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHangs](
	[id] [nvarchar](450) NOT NULL,
	[idTK] [int] NOT NULL,
	[hoVaTen] [nvarchar](max) NULL,
	[diaChi] [nvarchar](max) NULL,
	[sdt] [nvarchar](max) NULL,
	[tenCard] [nvarchar](max) NULL,
	[soCard] [nvarchar](max) NULL,
	[cvv] [nvarchar](max) NULL,
	[tongTien] [nvarchar](max) NULL,
	[ngayLap] [nvarchar](max) NULL,
	[trangThai] [int] NOT NULL,
 CONSTRAINT [PK_DonHangs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHangs]    Script Date: 5/18/2021 8:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHangs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdTK] [int] NOT NULL,
	[IdSP] [int] NOT NULL,
	[TenSP] [nvarchar](max) NULL,
	[Gia] [decimal](18, 2) NOT NULL,
	[soLuong] [int] NOT NULL,
 CONSTRAINT [PK_GioHangs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHangs]    Script Date: 5/18/2021 8:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHangs](
	[IdKH] [int] IDENTITY(1,1) NOT NULL,
	[IdTK] [int] NOT NULL,
	[HotenKH] [nvarchar](max) NULL,
	[NgaysinhKH] [nvarchar](max) NULL,
	[SdtKH] [nvarchar](max) NULL,
	[GioitinhKH] [nvarchar](max) NULL,
	[DiachiKH] [nvarchar](max) NULL,
 CONSTRAINT [PK_KhachHangs] PRIMARY KEY CLUSTERED 
(
	[IdKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanViens]    Script Date: 5/18/2021 8:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanViens](
	[IdNV] [int] IDENTITY(1,1) NOT NULL,
	[IdTK] [int] NOT NULL,
	[HotenNV] [nvarchar](max) NULL,
	[NgaysinhNV] [nvarchar](max) NULL,
	[SdtNV] [nvarchar](max) NULL,
	[GioitinhNV] [nvarchar](max) NULL,
	[DiachiNV] [nvarchar](max) NULL,
 CONSTRAINT [PK_NhanViens] PRIMARY KEY CLUSTERED 
(
	[IdNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanHoi]    Script Date: 5/18/2021 8:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanHoi](
	[IdPH] [int] IDENTITY(1,1) NOT NULL,
	[HotenPH] [nvarchar](max) NULL,
	[SdtPH] [nvarchar](max) NULL,
	[TieudePH] [nvarchar](max) NULL,
	[NoidungPH] [nvarchar](max) NULL,
 CONSTRAINT [PK_PhanHoi] PRIMARY KEY CLUSTERED 
(
	[IdPH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyens]    Script Date: 5/18/2021 8:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyens](
	[IdPQ] [int] IDENTITY(1,1) NOT NULL,
	[TenPQ] [nvarchar](max) NULL,
 CONSTRAINT [PK_PhanQuyens] PRIMARY KEY CLUSTERED 
(
	[IdPQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleClaims]    Script Date: 5/18/2021 8:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_RoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 5/18/2021 8:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhams]    Script Date: 5/18/2021 8:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhams](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](max) NULL,
	[Gia] [nvarchar](max) NULL,
	[Mausac] [nvarchar](max) NULL,
	[Soluong] [nvarchar](max) NULL,
	[Kichthuocmat] [nvarchar](max) NULL,
	[Matkinh] [nvarchar](max) NULL,
	[Chatlieuday] [nvarchar](max) NULL,
	[Gioitinh] [nvarchar](max) NULL,
	[Phongcach] [nvarchar](max) NULL,
	[Fileanh] [nvarchar](max) NULL,
 CONSTRAINT [PK_SanPhams] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoans]    Script Date: 5/18/2021 8:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoans](
	[IdTK] [int] IDENTITY(1,1) NOT NULL,
	[IdPQ] [int] NOT NULL,
	[TenTK] [nvarchar](max) NULL,
	[MatkhauTK] [nvarchar](max) NULL,
 CONSTRAINT [PK_TaiKhoans] PRIMARY KEY CLUSTERED 
(
	[IdTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserClaims]    Script Date: 5/18/2021 8:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 5/18/2021 8:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_UserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 5/18/2021 8:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/18/2021 8:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTokens]    Script Date: 5/18/2021 8:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210517140102_Init', N'5.0.5')
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonHangs] ON 

INSERT [dbo].[ChiTietDonHangs] ([id], [idDH], [tenSP], [gia], [soLuong]) VALUES (1, N'11621328233907', N'Q&Q VS12J005Y', CAST(1000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[ChiTietDonHangs] ([id], [idDH], [tenSP], [gia], [soLuong]) VALUES (2, N'41621344044719', N'Shengke K8004L-02', CAST(1750.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[ChiTietDonHangs] ([id], [idDH], [tenSP], [gia], [soLuong]) VALUES (3, N'41621344044719', N'Epos Swiss E-7000.701.22.16.26', CAST(2250.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[ChiTietDonHangs] OFF
GO
INSERT [dbo].[DonHangs] ([id], [idTK], [hoVaTen], [diaChi], [sdt], [tenCard], [soCard], [cvv], [tongTien], [ngayLap], [trangThai]) VALUES (N'11621328233907', 1, N'Cao Van A', N'Long An', N'0123123123', N'DC bank', N'0123456789123456', N'111', N'1000', N'2021-5-18 15:57:13.907', 1)
INSERT [dbo].[DonHangs] ([id], [idTK], [hoVaTen], [diaChi], [sdt], [tenCard], [soCard], [cvv], [tongTien], [ngayLap], [trangThai]) VALUES (N'41621344044719', 4, N'kieu dang kim bao', N'123/123 Ngo Gia TU', N'1231231231', N'Visa', N'1234123412341234', N'123', N'5750', N'2021-5-18 20:20:44.719', 1)
GO
SET IDENTITY_INSERT [dbo].[KhachHangs] ON 

INSERT [dbo].[KhachHangs] ([IdKH], [IdTK], [HotenKH], [NgaysinhKH], [SdtKH], [GioitinhKH], [DiachiKH]) VALUES (1, 4, N'Lê Vũ', N'14/08/2001', N'0123456789', N'Nam', N'Tp.hcm')
INSERT [dbo].[KhachHangs] ([IdKH], [IdTK], [HotenKH], [NgaysinhKH], [SdtKH], [GioitinhKH], [DiachiKH]) VALUES (2, 5, N'Huỳnh Trân', N'29/12/1999', N'0123456789', N'Nữ', N'Tp.hcm')
INSERT [dbo].[KhachHangs] ([IdKH], [IdTK], [HotenKH], [NgaysinhKH], [SdtKH], [GioitinhKH], [DiachiKH]) VALUES (3, 6, N'Nguyễn Huy', N'08/03/2000', N'0123456789', N'Nam', N'Đà Lạt')
SET IDENTITY_INSERT [dbo].[KhachHangs] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanViens] ON 

INSERT [dbo].[NhanViens] ([IdNV], [IdTK], [HotenNV], [NgaysinhNV], [SdtNV], [GioitinhNV], [DiachiNV]) VALUES (1, 2, N'Đoàn Hùng', N'06/05/2000', N'0123456789', N'Nam', N'Tp.hcm')
INSERT [dbo].[NhanViens] ([IdNV], [IdTK], [HotenNV], [NgaysinhNV], [SdtNV], [GioitinhNV], [DiachiNV]) VALUES (2, 3, N'Đặng Bảo', N'25/10/2000', N'0123456789', N'Nam', N'Tp.hcm')
SET IDENTITY_INSERT [dbo].[NhanViens] OFF
GO
SET IDENTITY_INSERT [dbo].[PhanHoi] ON 

INSERT [dbo].[PhanHoi] ([IdPH], [HotenPH], [SdtPH], [TieudePH], [NoidungPH]) VALUES (1, N'Nguyễn A', N'0123123123', N'Giá tiền', N'Quá mắc')
INSERT [dbo].[PhanHoi] ([IdPH], [HotenPH], [SdtPH], [TieudePH], [NoidungPH]) VALUES (2, N'Trần B', N'0444555111', N'Đồng hồ', N'Quá xấu')
INSERT [dbo].[PhanHoi] ([IdPH], [HotenPH], [SdtPH], [TieudePH], [NoidungPH]) VALUES (3, N'Bao', N'1231231231', N'Giá tiền', N'Giá hơi mắc')
SET IDENTITY_INSERT [dbo].[PhanHoi] OFF
GO
SET IDENTITY_INSERT [dbo].[PhanQuyens] ON 

INSERT [dbo].[PhanQuyens] ([IdPQ], [TenPQ]) VALUES (1, N'Admin')
INSERT [dbo].[PhanQuyens] ([IdPQ], [TenPQ]) VALUES (2, N'Nhân viên')
INSERT [dbo].[PhanQuyens] ([IdPQ], [TenPQ]) VALUES (3, N'Khách hàng')
SET IDENTITY_INSERT [dbo].[PhanQuyens] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPhams] ON 

INSERT [dbo].[SanPhams] ([Id], [Ten], [Gia], [Mausac], [Soluong], [Kichthuocmat], [Matkinh], [Chatlieuday], [Gioitinh], [Phongcach], [Fileanh]) VALUES (1, N'Aouke AK09-1', N'1500', N'BLACK', N'30', N' 40MM', N'SAPPHIRE', N'DÂY DA CAO CẤP', N'Nam', N'Đơn giản', N'Aouke AK09-1.jpg')
INSERT [dbo].[SanPhams] ([Id], [Ten], [Gia], [Mausac], [Soluong], [Kichthuocmat], [Matkinh], [Chatlieuday], [Gioitinh], [Phongcach], [Fileanh]) VALUES (2, N'Aouke AK09-2', N'1250', N'BLACK', N'30', N' 40MM', N'SAPPHIRE', N'DÂY DA CAO CẤP', N'Nam', N'Đơn giản', N'Aouke AK09-2.jpg')
INSERT [dbo].[SanPhams] ([Id], [Ten], [Gia], [Mausac], [Soluong], [Kichthuocmat], [Matkinh], [Chatlieuday], [Gioitinh], [Phongcach], [Fileanh]) VALUES (3, N'Q&Q VS12J005Y', N'1000', N'BLACK', N'29', N'42MM', N'KÍNH ACRYLIC', N'NHỰA', N'Nam', N'Đơn giản', N'Q&Q VS12J005Y.jpg')
INSERT [dbo].[SanPhams] ([Id], [Ten], [Gia], [Mausac], [Soluong], [Kichthuocmat], [Matkinh], [Chatlieuday], [Gioitinh], [Phongcach], [Fileanh]) VALUES (4, N'Shengke K8004L-02', N'1750', N'BLACK', N'28', N'32MM', N'KÍNH', N'DÂY DA', N'Nữ', N'Đơn giản', N'Shengke K8004L-02.jpg')
INSERT [dbo].[SanPhams] ([Id], [Ten], [Gia], [Mausac], [Soluong], [Kichthuocmat], [Matkinh], [Chatlieuday], [Gioitinh], [Phongcach], [Fileanh]) VALUES (5, N'Shengke K8066L-01', N'2500', N'BLACK', N'30', N'30MM', N'KÍNH CỨNG TRÁNG SHAPPIRE', N'DÂY DA', N'Nữ', N'Đơn giản', N'Shengke K8066L-01.jpg')
INSERT [dbo].[SanPhams] ([Id], [Ten], [Gia], [Mausac], [Soluong], [Kichthuocmat], [Matkinh], [Chatlieuday], [Gioitinh], [Phongcach], [Fileanh]) VALUES (6, N'Epos Swiss E-7000.701.22.16.26', N'2250', N'BLACK', N'29', N'41,5MM', N'SHAPPIRE', N'DÂY DA', N'Nam', N'Đơn giản', N'Epos Swiss E-7000.701.22.16.26.png')
INSERT [dbo].[SanPhams] ([Id], [Ten], [Gia], [Mausac], [Soluong], [Kichthuocmat], [Matkinh], [Chatlieuday], [Gioitinh], [Phongcach], [Fileanh]) VALUES (7, N'Shengke Korea K8064L', N'2000', N'BLUE', N'30', N'31MM', N'KÍNH CỨNG TRÁNG SHAPPIRE', N'DÂY DA', N'Nữ', N'Cá tính', N'Shengke Korea K8064L.jpg')
INSERT [dbo].[SanPhams] ([Id], [Ten], [Gia], [Mausac], [Soluong], [Kichthuocmat], [Matkinh], [Chatlieuday], [Gioitinh], [Phongcach], [Fileanh]) VALUES (8, N'Aouke AK08-9', N'2750', N'SILVER', N'30', N'42MM', N'SHAPPIRE', N'THÉP KHÔNG GHỈ', N'Nam', N'Cá tính', N'Aouke AK08-9.jpg')
INSERT [dbo].[SanPhams] ([Id], [Ten], [Gia], [Mausac], [Soluong], [Kichthuocmat], [Matkinh], [Chatlieuday], [Gioitinh], [Phongcach], [Fileanh]) VALUES (9, N'LOBINNI L9010-1', N'3500', N'SILVER', N'30', N'42MM', N'SHAPPIRE', N'DÂY DA', N'Nam', N'Cá tính', N'LOBINNI L9010-1.jpg')
INSERT [dbo].[SanPhams] ([Id], [Ten], [Gia], [Mausac], [Soluong], [Kichthuocmat], [Matkinh], [Chatlieuday], [Gioitinh], [Phongcach], [Fileanh]) VALUES (10, N'Shengke Korea K0094L-01', N'3250', N'SILVER', N'30', N'36MM', N'KÍNH CỨNG TRÁNG SHAPPIRE', N'NHỰA', N'Nữ', N'Cá tính', N'Shengke Korea K0094L-01.jpg')
INSERT [dbo].[SanPhams] ([Id], [Ten], [Gia], [Mausac], [Soluong], [Kichthuocmat], [Matkinh], [Chatlieuday], [Gioitinh], [Phongcach], [Fileanh]) VALUES (11, N'Shengke Korea K8067', N'3000', N'GOLD', N'30', N'30MM', N'KÍNH CHỊU LỰC', N'DÂY DA', N'Nữ', N'Cá tính', N'Shengke Korea K8067.jpg')
INSERT [dbo].[SanPhams] ([Id], [Ten], [Gia], [Mausac], [Soluong], [Kichthuocmat], [Matkinh], [Chatlieuday], [Gioitinh], [Phongcach], [Fileanh]) VALUES (12, N'Skmei SK-1155B', N'3750', N'BLACK', N'30', N'50.7MM', N'NHỰA RESIN', N'CAO SU', N'Nam', N'Hiện đại', N'Skmei SK-1155B.jpg')
INSERT [dbo].[SanPhams] ([Id], [Ten], [Gia], [Mausac], [Soluong], [Kichthuocmat], [Matkinh], [Chatlieuday], [Gioitinh], [Phongcach], [Fileanh]) VALUES (13, N'Skmei 1206', N'4500', N'BLACK', N'30', N'45MM', N'KÍNH KHOÁN', N'PU', N'Nam', N'Hiện đại', N'Skmei 1206.jpg')
INSERT [dbo].[SanPhams] ([Id], [Ten], [Gia], [Mausac], [Soluong], [Kichthuocmat], [Matkinh], [Chatlieuday], [Gioitinh], [Phongcach], [Fileanh]) VALUES (14, N'Xiaomi Amazfit Stratos (A1619)', N'4250', N'BLACK', N'30', N'40MM', N'KÍNH', N'SILICONE', N'Nam', N'Hiện đại', N'Xiaomi Amazfit Stratos (A1619).jpg')
INSERT [dbo].[SanPhams] ([Id], [Ten], [Gia], [Mausac], [Soluong], [Kichthuocmat], [Matkinh], [Chatlieuday], [Gioitinh], [Phongcach], [Fileanh]) VALUES (15, N'SKMEI-SK1832', N'4000', N'BLACK', N'30', N'30MM', N'KÍNH', N'THÉP KHÔNG GHỈ', N'Nữ', N'Hiện đại', N'SKMEI-SK1832.jpg')
INSERT [dbo].[SanPhams] ([Id], [Ten], [Gia], [Mausac], [Soluong], [Kichthuocmat], [Matkinh], [Chatlieuday], [Gioitinh], [Phongcach], [Fileanh]) VALUES (16, N'SKMEI-SK1834', N'4750', N'GOLD', N'30', N'30MM', N'KÍNH', N'THÉP KHÔNG GHỈ', N'Nữ', N'Hiện đại', N'SKMEI-SK1834.jpg')
SET IDENTITY_INSERT [dbo].[SanPhams] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoans] ON 

INSERT [dbo].[TaiKhoans] ([IdTK], [IdPQ], [TenTK], [MatkhauTK]) VALUES (1, 1, N'admin', N'admin')
INSERT [dbo].[TaiKhoans] ([IdTK], [IdPQ], [TenTK], [MatkhauTK]) VALUES (2, 2, N'hung123', N'hung123')
INSERT [dbo].[TaiKhoans] ([IdTK], [IdPQ], [TenTK], [MatkhauTK]) VALUES (3, 2, N'bao123', N'bao123')
INSERT [dbo].[TaiKhoans] ([IdTK], [IdPQ], [TenTK], [MatkhauTK]) VALUES (4, 3, N'vu123', N'vu123')
INSERT [dbo].[TaiKhoans] ([IdTK], [IdPQ], [TenTK], [MatkhauTK]) VALUES (5, 3, N'tran123', N'tran123')
INSERT [dbo].[TaiKhoans] ([IdTK], [IdPQ], [TenTK], [MatkhauTK]) VALUES (6, 3, N'huy123', N'huy123')
SET IDENTITY_INSERT [dbo].[TaiKhoans] OFF
GO
ALTER TABLE [dbo].[RoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_RoleClaims_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoleClaims] CHECK CONSTRAINT [FK_RoleClaims_Roles_RoleId]
GO
ALTER TABLE [dbo].[UserClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserClaims_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserClaims] CHECK CONSTRAINT [FK_UserClaims_Users_UserId]
GO
ALTER TABLE [dbo].[UserLogins]  WITH CHECK ADD  CONSTRAINT [FK_UserLogins_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserLogins] CHECK CONSTRAINT [FK_UserLogins_Users_UserId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Roles_RoleId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Users_UserId]
GO
ALTER TABLE [dbo].[UserTokens]  WITH CHECK ADD  CONSTRAINT [FK_UserTokens_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserTokens] CHECK CONSTRAINT [FK_UserTokens_Users_UserId]
GO
