create database BTL_Web
use BTL_Web

CREATE TABLE KHACHHANG(
	Hoten nvarchar(50),
	DienThoai char(15),
	GioiTinh nvarchar(3),
	Email nvarchar(50) not null primary key,
	MatKhau nchar(50),
)

insert into KHACHHANG
values(N'ADMIN','0816044584',N'Nam','Admin@gmail.com','ad123'),
	(N'Dũng','0816044584',N'Nam','wokedo12@gmail.com','123')
select*from KHACHHANG


CREATE TABLE LoaiDan
(
	MaLoai INT NOT NULL PRIMARY KEY,
	TenLoai NVARCHAR(50)
)
INSERT INTO LoaiDan
VALUES (1,N'Piano'),
(2,N'Organ'),
(3,N'Guitar'),
(4,N'Drum'),
(5,N'Trumpet/Wood Trumpet'),
(6,N'Stringed and Instrument Set'),
(7,N'Drums Type'),
(8,N'Professional Sound')
select*from LoaiDan
------------------------------------------Đàn Piano-------------------------------------------
CREATE TABLE DanPiano
(
	MaDan INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	TenDan NVARCHAR(max),
	Gia int,
	MoTa NVARCHAR(max),
	MaLoai INT ,
	Hinh NVARCHAR(max)
)

alter table DanPiano
add constraint FK_DanPiano foreign key (MaLoai) references LoaiDan(MaLoai)

insert into DanPiano
values(N'Đàn Yamaha U1E',3990000,N'Đàn Ogran YahaPsr E273',1,'~\baitap\img\pic1 (1).jpg'),
(N'Yamaha U10BL',6580000,N'Đàn Organ Yamha Psr E363',1,'~\baitap\img\pic1 (2).jpg'),
(N'Yamaha U2G',43500000,N'Đàn Organ Roland E-X30',1,'~\baitap\img\pic1 (3).jpg'),
(N'Yamaha W106',100800000,N'Đàn Organ Roland E-X30',1,'~\baitap\img\pic1 (4).jpg'),
(N'Yamaha UX',8300000,N'Đàn Organ  E-X30',1,'~\baitap\img\pic1 (5).jpg'),
(N'Yamaha YUX',65800000,N'Đàn Roland E-X30',1,'~\baitap\img\pic1 (6).jpg'),
(N'Yamaha SX10',6900000,N'Đàn  Rola E-X30',1,'~\baitap\img\pic1 (7).jpg'),
(N'Yamaha U2G',67500000,N'Đàn Or Rand E-X30',1,'~\baitap\img\pic1 (8).jpg')


select*from DanPiano


------------------------------------------Đàn Ogran-----------------------------------------------
create table DanOgran
(
	MaDan INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	TenDan NVARCHAR(max),
	Gia int,
	MoTa NVARCHAR(max),
	MaLoai INT ,
	Hinh NVARCHAR(max)
)

alter table DanOgran
add constraint FK_DanOrgan foreign key (MaLoai) references LoaiDan(MaLoai)

insert into DanOgran
values(N'Đàn Organ Yamha Psr E273',3900000,N'Đàn Ogran YahaPsr E273',2,'~\baitap\img\DanOrgan1 - Copy.jpg'),
(N'Đàn Organ Yamha Psr E363',4990000,N'Đàn Organ Yamha Psr E363',2,'~\baitap\img\organ2.jpg'),
(N'Đàn Organ Roland E-X30',4500000,N'Đàn Organ Roland E0100',2,'~\baitap\img\organ3.jpg'),
(N'Đàn Organ Roland BK3',7800000,N'Đàn E-X30',2,'~\baitap\img\organ4.jpg'),
(N'Đàn Organ Roland E-A70',600000,N'Đàn Organ Rola E-X30',2,'~\baitap\img\organ5.jpg'),
(N'Đàn Organ Casino CT-S100',9800000,N'Đàn Oan Bold X30',2,'~\baitap\img\organ6.jpg'),
(N'Đàn Organ Casino CT-S200',1000000,N'Đàn rgan Roland 30',2,'~\baitap\img\organ7.jpg'),
(N'Đàn Organ Casino CT-X5000',7500000,N'Đàn Organ Roland E30',2,'~\baitap\img\organ8.jpg')

select*from DanOgran
--------------------------------------------------Đàn Guiter-----------------------------------------------
create table DanGuitar
(
	MaDan INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	TenDan NVARCHAR(max),
	Gia int,
	MoTa NVARCHAR(max),
	MaLoai INT ,
	Hinh NVARCHAR(max)
)

alter table DanGuitar
add constraint FK_DanGuitar foreign key (MaLoai) references LoaiDan(MaLoai)

insert into DanGuitar
values(N'Đàn Ukulele',1500000,N'Đàn Ogn Yasr E273',3,'~\baitap\img\ghita.jpg'),
(N'Đàn Classic Guitar GC-18 HL',16500000,N'Đàn Or Psr E363',3,'~\baitap\img\ghita 2.jpg'),
(N'Đàn Ukulele Valote',19990000,N'Đàn Ukulele E-X30',3,'~\baitap\img\ghita 3.jpg'),
(N'Đàn Guita Acoustic 103W',19000000,N'Đàn Ukulele E-X30',3,'~\baitap\img\ghita 4.jpg'),
(N'Đàn Classic Guitar Yamaha',24750000,N'Đàn Ukuloo',3,'~\baitap\img\ghita5.jpg'),
(N'Đàn Ukulele Valote',18000000,N'Đàn Uke E-X34',3,'~\baitap\img\ghita6.jpg'),
(N'Đàn Ukulele Valote',16500000,N'Đàn Uku E-X342',3,'~\baitap\img\ghita7.jpg'),
(N'Đàn Ukulele Valote',15500000,N'Đàn lele E-Ya',3,'~\baitap\img\ghita8.jpg')
select*from DanGuitar
---------------------------------------------Đàn Drum-----------------------------------------------------
create table DanDrum
(
	MaDan INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	TenDan NVARCHAR(max),
	Gia int,
	MoTa NVARCHAR(max),
	MaLoai INT ,
	Hinh NVARCHAR(max)
)

alter table DanDrum
add constraint FK_DanDrum foreign key (MaLoai) references LoaiDan(MaLoai)

insert into DanDrum
values(N'Đàn Odery IRnock',19900000,N'Đàn Ogran YahaPsr E273',4,'~\baitap\img\drum1.jpg'),
(N'Đàn Pearl Export',15880000,N'Đàn Orn Yamha Psr E363',4,'~\baitap\img\drum2.jpg'),
(N'Đàn Pearl DMP925',13500000,N'Đàn rgan Roland R-X90',4,'~\baitap\img\drum3.jpg'),
(N'Đàn Readline Red',13500000,N'Đàn Ogan Rd C-U40',4,'~\baitap\img\drum4.jpg'),
(N'Đàn DC-901',1300000,N'Đàn rgan Rond E-X30',4,'~\baitap\img\drum5.jpg'),
(N'Đàn Pearl Kỉd ',15800000,N'Đàn Oran Oland R-X10',4,'~\baitap\img\drum6.jpg'),
(N'Đàn Pearl DMP925',6900000,N'Đàn gan Rola B-X30',4,'~\baitap\img\drum7.jpg'),
(N'Đàn Pearl DM',17500000,N' Organ Roland A-X30',4,'~\baitap\img\drum8.jpg')

select*from DanDrum



create proc sp_InsertProduct
(
	@TenSP nvarchar(10),
	@Gia float,
	@MoTa nvarchar(50),
	@MaLoai int,
	@DuongDan nvarchar(50)
)

as
begin 
insert into DanPiano values (@TenSP,@Gia,@MoTa,@MaLoai,@DuongDan)
end
select*from DanPiano