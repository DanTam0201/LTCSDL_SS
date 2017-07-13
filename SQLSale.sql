CREATE Database Sale

USE Sale
GO
-- Nhan Vien--
CREATE Table NhanVien(
	MaNV		int NOT NULL,
	HoNV		nvarchar(50),
	TenNV		nvarchar(50),
	DiaChi		nvarchar(50),
	DienThoai	nvarchar(20),
	PRIMARY KEY	(MaNV),
);

INSERT INTO NhanVien (MaNV, HoNV, TenNV, DiaChi, DienThoai) VALUES (001, N'AZU', N'PLA', N'Lô Cốt', N'0908172628')
INSERT INTO NhanVien (MaNV, HoNV, TenNV, DiaChi, DienThoai) VALUES (002, N'ABU', N'AKA', N'Lề đường', N'38789495')
INSERT INTO NhanVien (MaNV, HoNV, TenNV, DiaChi, DienThoai) VALUES (003, N'', N'OBAMA', N'Bờ Ruộng', N'')
INSERT INTO NhanVien (MaNV, HoNV, TenNV, DiaChi, DienThoai) VALUES (004, N'ALASKA', N'', N'Ngoài đường', N'098442628')
INSERT INTO NhanVien (MaNV, HoNV, TenNV, DiaChi, DienThoai) VALUES (005, N'', N'MINI', N'98 3/2', N'32372628')
INSERT INTO NhanVien (MaNV, HoNV, TenNV, DiaChi, DienThoai) VALUES (006, N'NU', N'OKO', N'73 haha', N'8172628')
INSERT INTO NhanVien (MaNV, HoNV, TenNV, DiaChi, DienThoai) VALUES (007, N'TNU', N'KIKI', N'89 KAKA', N'8482628')
INSERT INTO NhanVien (MaNV, HoNV, TenNV, DiaChi, DienThoai) VALUES (008, N'LUKA', N'SA', N'837 HUHU', N'72648372628')
INSERT INTO NhanVien (MaNV, HoNV, TenNV, DiaChi, DienThoai) VALUES (009, N'PLE', N'LUCKY', N'982 HE He', N'736422628')
INSERT INTO NhanVien (MaNV, HoNV, TenNV, DiaChi, DienThoai) VALUES (0010, N'Ken', N'KEN', N'', N'093358')

-- Khách Hàng --
CREATE Table KhachHang(
	MaKH		nvarchar(20) NOT NULL,
	TenKH		nvarchar(50),
	DiaChi		nvarchar(50),
	DienThoai	nvarchar(20),
	PRIMARY KEY (MaKH)
);
INSERT INTO KhachHang(MaKH, TenKH, DiaChi, DienThoai) VALUES (N'KH1', N'KFC', N'323 NHÀ LẦU', N'6682628')
INSERT INTO KhachHang(MaKH, TenKH, DiaChi, DienThoai) VALUES (N'KH2', N'LOTTE', N'3 NHÀ LÁ', N'6716772628')
INSERT INTO KhachHang(MaKH, TenKH, DiaChi, DienThoai) VALUES (N'KH3', N'CGV', N'553 BIỆT THƯ', N'')
INSERT INTO KhachHang(MaKH, TenKH, DiaChi, DienThoai) VALUES (N'KH4', N'KORIA', N'64 NHÀ TRANH', N'2323928')
INSERT INTO KhachHang(MaKH, TenKH, DiaChi, DienThoai) VALUES (N'KH5', N'MEGASTAR', N'44 VILLA', N'09097372382')
INSERT INTO KhachHang(MaKH, TenKH, DiaChi, DienThoai) VALUES (N'KH6', N'CINEBOX', N'2112 CHUNG CƯ', N'09203939')
INSERT INTO KhachHang(MaKH, TenKH, DiaChi, DienThoai) VALUES (N'KH7', N'BHD', N'RESORT', N'')
INSERT INTO KhachHang(MaKH, TenKH, DiaChi, DienThoai) VALUES (N'KH8', N'CINEMA', N'NHÀ SÀN', N'46722628')
INSERT INTO KhachHang(MaKH, TenKH, DiaChi, DienThoai) VALUES (N'KH9', N'COFFEE HOUSE', N'237 NHÀ', N'29389')
INSERT INTO KhachHang(MaKH, TenKH, DiaChi, DienThoai) VALUES (N'KH10', N'NEWDAY', N'BỜ SÔNG',N'09029292')
INSERT INTO KhachHang(MaKH, TenKH, DiaChi, DienThoai) VALUES (N'KH11', N'MATCHA', N'', N'2764723')
INSERT INTO KhachHang(MaKH, TenKH, DiaChi, DienThoai) VALUES (N'KH12', N'BILADEN', N'HOMESTAY', N'7237837')
INSERT INTO KhachHang(MaKH, TenKH, DiaChi, DienThoai) VALUES (N'KH13', N'BUSH', N'32 LỀU', N'2647')
INSERT INTO KhachHang(MaKH, TenKH, DiaChi, DienThoai) VALUES (N'KH14', N'DAVID', N'12 NHÀ GỖ', N'827394')
INSERT INTO KhachHang(MaKH, TenKH, DiaChi, DienThoai) VALUES (N'KH15', N'JOHN', N'24 HOTEL', N'27848')

-- hàng hóa --
CREATE Table HangHoa(
	MaHH		nvarchar(20) NOT NULL,
	TenHH		nvarchar(20) NULL,
	Donvitinh	nvarchar(8) NULL,
	Dongia		float NULL,
	MaLoaiHH	int NULL,
	FOREIGN KEY (MaLoaiHH) REFERENCES LoaiHH (MaLoaiHH),	
);
go
ALTER TABLE HangHoa ADD PRIMARY KEY(MaHH)

INSERT INTO HangHoa(MaHH, TenHH, Donvitinh, Dongia, MaLoaiHH) VALUES (N'HH01', N'nước ngọt', N'thùng', 240000, 1)
INSERT INTO HangHoa(MaHH, TenHH, Donvitinh, Dongia, MaLoaiHH) VALUES (N'HH02', N'bia', N'thùng', 56000, 4)
INSERT INTO HangHoa(MaHH, TenHH, Donvitinh, Dongia, MaLoaiHH) VALUES (N'HH03', N'bánh', N'hộp', 13000,7)
INSERT INTO HangHoa(MaHH, TenHH, Donvitinh, Dongia, MaLoaiHH) VALUES (N'HH04', N'kẹo ', N'hộp', 87000, 2)
INSERT INTO HangHoa(MaHH, TenHH, Donvitinh, Dongia, MaLoaiHH) VALUES (N'HH05', N'Sữa', N'hộp', 27000, 3)
INSERT INTO HangHoa(MaHH, TenHH, Donvitinh, Dongia, MaLoaiHH) VALUES (N'HH06', N'đồ hộp', N'thùng', 43000, 6)
INSERT INTO HangHoa(MaHH, TenHH, Donvitinh, Dongia, MaLoaiHH) VALUES (N'HH07', N'Bút', N'thùng', 32000, 5)

--Nhà Cung Cấp--
CREATE Table NhaCungCap(
	MaNCC nvarchar(20) NOT NULL,
	TenNCC nvarchar(50),
	MaHH nvarchar(20),
	SoLuong int,
	DonGia float,
	FOREIGN KEY (MaHH) REFERENCES HangHoa(MaHH),	
);
go
ALTER TABLE NhaCungCap ADD PRIMARY KEY(MaNCC)

INSERT INTO NhaCungCap(MaNCC, TenNCC, MaHH, SoLuong, DonGia) VALUES (N'N01', N'PEPSICO', N'HH01',5000, 20000)
INSERT INTO NhaCungCap(MaNCC, TenNCC, MaHH, SoLuong, DonGia) VALUES (N'N02', N'VINABI', N'HH02',6000, 45000)
INSERT INTO NhaCungCap(MaNCC, TenNCC, MaHH, SoLuong, DonGia) VALUES (N'N03', N'BAVN', N'HH03',90000, 34000)
INSERT INTO NhaCungCap(MaNCC, TenNCC, MaHH, SoLuong, DonGia) VALUES (N'N04', N'KEVN', N'HH04',56000, 56700)
INSERT INTO NhaCungCap(MaNCC, TenNCC, MaHH, SoLuong, DonGia) VALUES (N'N05', N'DHKK', N'HH06',20000, 66700)
INSERT INTO NhaCungCap(MaNCC, TenNCC, MaHH, SoLuong, DonGia) VALUES (N'N06', N'BUTUSA', N'HH07',676676, 56700)
INSERT INTO NhaCungCap(MaNCC, TenNCC, MaHH, SoLuong, DonGia) VALUES (N'N07', N'MILKUAS', N'HH05',10000, 23000)

-- Loại Hàng hóa--
CREATE TABLE LoaiHH(
	MaLoaiHH		int NOT NULL,
	TenLoaiHH		nvarchar(255) NULL,
	PRIMARY KEY		(MaLoaiHH)
	
);
INSERT INTO LoaiHH(MaLoaiHH, TenLoaiHH) VALUES (1, N'nước ngọt')
INSERT INTO LoaiHH(MaLoaiHH, TenLoaiHH) VALUES (2, N'kẹo')
INSERT INTO LoaiHH(MaLoaiHH, TenLoaiHH) VALUES (3, N'Sữa')
INSERT INTO LoaiHH(MaLoaiHH, TenLoaiHH) VALUES (4, N'bia')
INSERT INTO LoaiHH(MaLoaiHH, TenLoaiHH) VALUES (5, N'Bút')
INSERT INTO LoaiHH(MaLoaiHH, TenLoaiHH) VALUES (6, N'đồ hộp')
INSERT INTO LoaiHH(MaLoaiHH, TenLoaiHH) VALUES (7, N'bánh')

-- hóa đơn--
CREATE TABLE HoaDon(
	MaHD			nvarchar(5) NOT NULL,
	MaKH			nvarchar(20) NULL,
	MaNV			int NULL,
	NgayLapHD		datetime NOT NULL,
	NgayGiaoHang	datetime NOT NULL,
	FOREIGN KEY(MaKH) REFERENCES KhachHang(MaKH),
	FOREIGN KEY(MaNV) REFERENCES NhanVien(MaNV),
);
GO
ALTER TABLE HoaDon ADD PRIMARY KEY(MaHD)

INSERT HoaDon (MaHD, MaKH, MaNV, NgayLapHD, NgayGiaoHang) VALUES (N'HD001', N'KH1', 004, CAST(0x00008EE400000000 AS DateTime), CAST(0x00008F6300000000 AS DateTime))
INSERT HoaDon (MaHD, MaKH, MaNV, NgayLapHD, NgayGiaoHang) VALUES (N'HD002', N'KH8', 007, CAST(0x0000917600000000 AS DateTime), CAST(0x0000917600000000 AS DateTime))
INSERT HoaDon (MaHD, MaKH, MaNV, NgayLapHD, NgayGiaoHang) VALUES (N'HD003', N'KH10', 008, CAST(0x0000903A00000000 AS DateTime), CAST(0x0000917300000000 AS DateTime))
INSERT HoaDon (MaHD, MaKH, MaNV, NgayLapHD, NgayGiaoHang) VALUES (N'HD004', N'KH9', 007, CAST(0x00008F8400000000 AS DateTime), CAST(0x00008F8600000000 AS DateTime))
INSERT HoaDon (MaHD, MaKH, MaNV, NgayLapHD, NgayGiaoHang) VALUES (N'HD005', N'KH5', 001, CAST(0x00008F8500000000 AS DateTime), CAST(0x00008F8A00000000 AS DateTime))
INSERT HoaDon (MaHD, MaKH, MaNV, NgayLapHD, NgayGiaoHang) VALUES (N'HD006', N'KH3', 002, CAST(0x0000945000000000 AS DateTime), CAST(0x0000945100000000 AS DateTime))
INSERT HoaDon (MaHD, MaKH, MaNV, NgayLapHD, NgayGiaoHang) VALUES (N'HD007', N'KH10', 006, CAST(0x000091E400000000 AS DateTime), CAST(0x000091EF00000000 AS DateTime))
INSERT HoaDon (MaHD, MaKH, MaNV, NgayLapHD, NgayGiaoHang) VALUES (N'HD008', N'KH9', 005, CAST(0x00008FD200000000 AS DateTime), CAST(0x00008FDB00000000 AS DateTime))
INSERT HoaDon (MaHD, MaKH, MaNV, NgayLapHD, NgayGiaoHang) VALUES (N'HD009', N'KH6', 0010, CAST(0x0000922300000000 AS DateTime), CAST(0x000092DA00000000 AS DateTime))
INSERT HoaDon (MaHD, MaKH, MaNV, NgayLapHD, NgayGiaoHang) VALUES (N'HD010', N'KH4', 009, CAST(0x000090F500000000 AS DateTime), CAST(0x0000916F00000000 AS DateTime))
INSERT HoaDon (MaHD, MaKH, MaNV, NgayLapHD, NgayGiaoHang) VALUES (N'HD011', N'KH3', 003, CAST(0x0000904800000000 AS DateTime), CAST(0x0000906000000000 AS DateTime))

-- chi tiết hóa đơn --
CREATE TABLE CTHD(
	MaHD		nvarchar(5) NOT NULL,
	MaHH		nvarchar(20) NOT NULL,
	Soluong		smallint NULL,
	Giamgia		real NULL,
	FOREIGN KEY(MaHD) REFERENCES HoaDon(MaHD),
	FOREIGN KEY(MaHH) REFERENCES HangHoa(MaHH),
);
GO
ALTER TABLE CTHD ADD PRIMARY KEY(MaHD, MaHH)
INSERT INTO CTHD (MaHD, MaHH, Soluong, Giamgia) VALUES (N'HD011', N'HH07', 44,	1)
INSERT INTO CTHD (MaHD, MaHH, Soluong, Giamgia) VALUES (N'HD004', N'HH06', 43,	2)
INSERT INTO CTHD (MaHD, MaHH, Soluong, Giamgia) VALUES (N'HD008', N'HH01', 54,	0.1)
INSERT INTO CTHD (MaHD, MaHH, Soluong, Giamgia) VALUES (N'HD002', N'HH02', 53,	0.8)
INSERT INTO CTHD (MaHD, MaHH, Soluong, Giamgia) VALUES (N'HD010', N'HH06', 30,	0.5)
INSERT INTO CTHD (MaHD, MaHH, Soluong, Giamgia) VALUES (N'HD006', N'HH04', 10,	0.4)
INSERT INTO CTHD (MaHD, MaHH, Soluong, Giamgia) VALUES (N'HD007', N'HH04', 42,	0.2)
INSERT INTO CTHD (MaHD, MaHH, Soluong, Giamgia) VALUES (N'HD001', N'HH05', 43,	0.2)
INSERT INTO CTHD (MaHD, MaHH, Soluong, Giamgia) VALUES (N'HD003', N'HH03', 45,	0.6)

--Users--
CREATE TABLE DangNhap(
	UserName	nvarchar(50) NOT NULL,
	Password	nvarchar(50) NULL,
	PRIMARY KEY (UserName)
);

INSERT INTO DangNhap (UserName, Password) VALUES (N'admin', N'12345')
INSERT INTO DangNhap (UserName, Password) VALUES (N'tam', N'123')
INSERT INTO DangNhap (UserName, Password) VALUES (N'huong', N'haha')
INSERT INTO DangNhap (UserName, Password) VALUES (N'nghia', N'pleple')


