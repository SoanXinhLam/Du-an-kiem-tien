﻿CREATE DATABASE QLKB
use QLKB


CREATE TABLE BENHNHAN
(
	MaBN char(5) not null,
	TenBN nvarchar(40),
	NgaySinh smalldatetime,
	DiaChi nvarchar(80),
	DienThoai varchar(20),
	GioiTinh nvarchar(20)
)
ALTER TABLE BENHNHAN ADD
CONSTRAINT BN_MaBN_PK PRIMARY KEY (MaBN)

CREATE TABLE PHIEUKHAM
(
	MaPK char(5) not null,
	MaBS char(5),
	MaBN char(5),
	NgayKham smalldatetime,
	TrieuChung nvarchar(80),
	KetQua nvarchar(80)
)
ALTER TABLE PHIEUKHAM ADD
CONSTRAINT PK_MaPK_PK PRIMARY KEY (MaPK)

ALTER TABLE PHIEUKHAM ADD
CONSTRAINT PK_MaBS_FK FOREIGN KEY (MaBS) REFERENCES BACSI(MaBS)

ALTER TABLE PHIEUKHAM ADD
CONSTRAINT PK_MaBN_FK FOREIGN KEY (MaBN) REFERENCES BENHNHAN(MaBN)

CREATE TABLE BACSI
(
	MaBS char(5)not null,
	TenBS nvarchar(40),
	TenDangNhap varchar(40),
	MatKhau varchar(40)
)
ALTER TABLE BACSI ADD
CONSTRAINT BS_MaBS_PK PRIMARY KEY (MaBS)

CREATE TABLE HOADON
(
	MaHD char(5)not null,
	MaPK char(5),
	TienKham money,
	TienThuoc money,
	TongTien money
)
ALTER TABLE HOADON ADD
CONSTRAINT HD_MaHD_PK PRIMARY KEY (MaHD)

ALTER TABLE HOADON ADD
CONSTRAINT HD_MaPK_FK FOREIGN KEY (MaPK) REFERENCES PHIEUKHAM(MaPK)

CREATE TABLE THUOC
(
	TenThuoc nvarchar(40)not null,
	DonViTinh nvarchar(20),
	Gia money
)
ALTER TABLE THUOC ADD
CONSTRAINT TH_TenThuoc_PK PRIMARY KEY (TenThuoc)

CREATE TABLE CTTT
(
	MaPK char(5)not null,
	TenThuoc nvarchar(40)not null,
	SoLuong int,
	DonGia money,
	CachDung nvarchar(max)
)
ALTER TABLE CTTT ADD
CONSTRAINT CTTT_MaPK_TenThuoc_PK PRIMARY KEY (MaPK, TenThuoc)

ALTER TABLE CTTT ADD
CONSTRAINT CTTT_MaPK_FK FOREIGN KEY (MaPK) REFERENCES PHIEUKHAM(MaPK)

ALTER TABLE CTTT ADD
CONSTRAINT CTTT_TenThuoc_FK FOREIGN KEY (TenThuoc) REFERENCES THUOC(TenThuoc)

SET DATEFORMAT DMY
INSERT INTO BENHNHAN (MaBN , TenBN, NgaySinh, DiaChi, DienThoai, GioiTinh)
VALUES('BN001',	N'Hồ Thị Thu Thủy',	'05/01/1997', N'100 Lý Thường Kiệt, Phường 14, Quận 10, Hồ Chí Minh', '998623462', N'Nữ')
INSERT INTO BENHNHAN (MaBN , TenBN, NgaySinh, DiaChi, DienThoai, GioiTinh)
VALUES('BN002',	N'Nguyễn Văn Trường', '26/4/1998',	N'212 Lý Thường Kiệt, Phường 14, Quận 10, Hồ Chí Minh', '982123312', N'Nam')
INSERT INTO BENHNHAN (MaBN , TenBN, NgaySinh, DiaChi, DienThoai, GioiTinh)
VALUES('BN003',	N'Trần Văn A',	'01/01/1976',	N'33 Lý Chính Thắng, Phường 8, Quận 3, Tp Hồ Chí Minh',	'1256387623',	N'Nam')
INSERT INTO BENHNHAN (MaBN , TenBN, NgaySinh, DiaChi, DienThoai, GioiTinh)
VALUES('BN004',	N'Võ Văn Hồng Nhật', 	'11/12/1970',	N'Tô Vĩnh Diện, Đông Hoà, Dĩ An, Bình Dương',	'1237646521',	N'Nam')
INSERT INTO BENHNHAN (MaBN , TenBN, NgaySinh, DiaChi, DienThoai, GioiTinh)
VALUES('BN005',	N'Nguyễn Thị Thương', 	'02/02/2012',	N'248 Lý Chính Thắng, Phường 9, Quận 3, Hồ Chí Minh',	'983762318',	N'Nữ')	
INSERT INTO BENHNHAN (MaBN , TenBN, NgaySinh, DiaChi, DienThoai, GioiTinh)
VALUES('BN006',	N'Nguyễn Thị Hồng Tú',	'14/1/1988',	N'87 Sư Vạn Hạnh, Phường 10, Quận 10, Hồ Chí Minh',	'1258730981',	N'Nữ')
INSERT INTO BENHNHAN (MaBN , TenBN, NgaySinh, DiaChi, DienThoai, GioiTinh)
VALUES('BN007',	N'Trần Quốc Trung',	'15/11/1998',	N'Tô Vĩnh Diện, Đông Hoà, Dĩ An, Bình Dương',	'9857821878',	N'Nam')
INSERT INTO BENHNHAN (MaBN , TenBN, NgaySinh, DiaChi, DienThoai, GioiTinh)
VALUES('BN008',	N'Nguyễn Thị Kiều Oanh',	'03/02/1996',	N'Ba Tháng Hai, Xuân Khánh, Ninh Kiều, Cần Thơ',	'1237652817',	N'Nữ')
INSERT INTO BENHNHAN (MaBN , TenBN, NgaySinh, DiaChi, DienThoai, GioiTinh)
VALUES('BN009',	N'Nguyễn Thị Ngọc Thùy',	'07/02/1998',	N'Lãnh Tú, Xuân Lãnh, Đồng Xuân, Phú Yên',	'1256384921',	N'Nữ')
INSERT INTO BENHNHAN (MaBN , TenBN, NgaySinh, DiaChi, DienThoai, GioiTinh)
VALUES('BN010',	N'Võ Thị Vân',	'15/11/1999',	N'Lãnh Trường , Xuân Lãnh, Đồng Xuân, Phú Yên',	'1256383924',	N'Nữ')
INSERT INTO BENHNHAN (MaBN , TenBN, NgaySinh, DiaChi, DienThoai, GioiTinh)
VALUES('BN011',	N'Trần Đình Sỹ',	'03/01/1990',	N'133/123C Tô Hiến Thành, Phường 13, Quận 10, Hồ Chí Minh',	'1256172111',	N'Nam')
INSERT INTO BENHNHAN (MaBN , TenBN, NgaySinh, DiaChi, DienThoai, GioiTinh)
VALUES('BN012',	N'Ngô Mỹ Anh',	'05/04/2005',	N'Phường Cầu Ông Lãnh, District 1, Ho Chi Minh City',	'9872019181',	N'Nữ')
INSERT INTO BENHNHAN (MaBN , TenBN, NgaySinh, DiaChi, DienThoai, GioiTinh)
VALUES('BN013',	N'Trần Vân',	'07/07/1995',	N'484 Lê Văn Việt, Tăng Nhơn Phú A, Quận 9, Hồ Chí Minh',	'976287165',	N'Nữ')
INSERT INTO BENHNHAN (MaBN , TenBN, NgaySinh, DiaChi, DienThoai, GioiTinh)
VALUES('BN014',	N'Nguyễn Song Nguyên',	'03/08/1992',	N'121 Nguyễn Xí, phường 26, Bình Thạnh, Hồ Chí Minh',	'1256172123',	N'Nam')

INSERT INTO BACSI (MaBS, TenBS, TenDangNhap, MatKhau)
VALUES('BS001',	N'Nguyễn Thi',	'nguyenthi',	'123')
INSERT INTO BACSI (MaBS, TenBS, TenDangNhap, MatKhau)
VALUES('BS002',	N'Trần Văn Kim',	'tranvankim',	'212')	
INSERT INTO BACSI (MaBS, TenBS, TenDangNhap, MatKhau)
VALUES('BS003',	N'Ngô Bảo Kim',	'ngobaokim',	'126')
INSERT INTO BACSI (MaBS, TenBS, TenDangNhap, MatKhau)
VALUES('BS004',	N'Võ Thụy',	'vothuy',	'324')
INSERT INTO BACSI (MaBS, TenBS, TenDangNhap, MatKhau)
VALUES('BS005',	N'Tống Trinh',	'tongtrinh',	'541')

INSERT INTO PHIEUKHAM (MaPK, MaBS, MaBN, NgayKham, TrieuChung, KetQua)
VALUES('PK001',	'BS001',	'BN001',	'01/01/2018',	N'Dị ứng theo mùa như hắt hơi, chảy nước mũi, ngứa họng hoặc ngứa, chảy nước mắt',	N'Dấu hiệu bất thường nhẹ.')
INSERT INTO PHIEUKHAM (MaPK, MaBS, MaBN, NgayKham, TrieuChung, KetQua)
VALUES('PK002',	'BS003',	'BN005',	'01/02/2018',	N'Chảy nước mắt, chảy nước mũi, ngứa mắt/mũi, hắt hơi, phát ban và ngứa',	N'Dấu hiệu bất thường trung bình.')
INSERT INTO PHIEUKHAM (MaPK, MaBS, MaBN, NgayKham, TrieuChung, KetQua)
VALUES('PK003',	'BS002',	'BN007',	'03/10/2018',	N'Viêm phế quản',	N'Dấu hiệu bất thường cao.')
INSERT INTO PHIEUKHAM (MaPK, MaBS, MaBN, NgayKham, TrieuChung, KetQua)
VALUES('PK004',	'BS005',	'BN002',	'03/11/2018',	N'Tăng huyết áp.',	N'Dấu hiệu bất thường cao.')
INSERT INTO PHIEUKHAM (MaPK, MaBS, MaBN, NgayKham, TrieuChung, KetQua)
VALUES('PK005',	'BS002',	'BN003',	'15/3/2018',	N'Bỏng da', 	N'Dấu hiệu bất thường trung bình.')
INSERT INTO PHIEUKHAM (MaPK, MaBS, MaBN, NgayKham, TrieuChung, KetQua)
VALUES('PK006',	'BS004',	'BN004',	'22/3/2018',	N'Đau khớp, sưng và cứng khớp,  viêm khớp',	 N'Dấu hiệu bất thường nhẹ.')
INSERT INTO PHIEUKHAM (MaPK, MaBS, MaBN, NgayKham, TrieuChung, KetQua)
VALUES('PK007',	'BS005',	'BN006',	'24/3/2018',	N'Cholesterol máu cao.',	N'Dấu hiệu bất thường cao.')
INSERT INTO PHIEUKHAM (MaPK, MaBS, MaBN, NgayKham, TrieuChung, KetQua)
VALUES('PK008',	'BS001',	'BN008',	'25/3/2018',	N'Đau khớp',	N'Dấu hiệu bất thường trung bình.')
INSERT INTO PHIEUKHAM (MaPK, MaBS, MaBN, NgayKham, TrieuChung, KetQua)
VALUES('PK009',	'BS003',	'BN009',	'04/01/2018',	N'Da nổi mẩn đỏ.',	N'Dấu hiệu bất thường trung bình.')
INSERT INTO PHIEUKHAM (MaPK, MaBS, MaBN, NgayKham, TrieuChung, KetQua)
VALUES('PK010',	'BS004',	'BN010',	'04/05/2018',	N'Tổn thương tủy sống',	N'Dấu hiệu bất thường trung bình.')
INSERT INTO PHIEUKHAM (MaPK, MaBS, MaBN, NgayKham, TrieuChung, KetQua)
VALUES('PK011',	'BS001',	'BN011',	'04/06/2018',	N'Nhiễm Vi Khuẩn',	N'Dấu hiệu bất thường trung bình.')
INSERT INTO PHIEUKHAM (MaPK, MaBS, MaBN, NgayKham, TrieuChung, KetQua)
VALUES('PK012',	'BS003',	'BN012',	'04/07/2018',	N'Máu đông cục',	N'Dấu hiệu bất thường cao.')
INSERT INTO PHIEUKHAM (MaPK, MaBS, MaBN, NgayKham, TrieuChung, KetQua)
VALUES('PK013',	'BS002',	'BN013',	'04/08/2018',	N'Viêm nang buồng trứng',	N'Dấu hiệu bất thường trung bình.')
INSERT INTO PHIEUKHAM (MaPK, MaBS, MaBN, NgayKham, TrieuChung, KetQua)
VALUES('PK014',	'BS005',	'BN014',	'04/10/2018',	N'Co thắt cơ bắp',	 N'Dấu hiệu bất thường nhẹ.')




INSERT INTO HOADON (MaHD, MaPK, TienKham, TienThuoc, TongTien)
VALUES('HD001',	'PK001',	100000,	400000,	500000)
INSERT INTO HOADON (MaHD, MaPK, TienKham, TienThuoc, TongTien)
VALUES('HD002',	'PK002',	100000,	100000,	200000)
INSERT INTO HOADON (MaHD, MaPK, TienKham, TienThuoc, TongTien)
VALUES('HD003',	'PK003',	100000,	750000,	850000)
INSERT INTO HOADON (MaHD, MaPK, TienKham, TienThuoc, TongTien)
VALUES('HD004',	'PK004',	100000,	1000000,	1100000)
INSERT INTO HOADON (MaHD, MaPK, TienKham, TienThuoc, TongTien)
VALUES('HD005',	'PK005',	100000,	300000,	400000)
INSERT INTO HOADON (MaHD, MaPK, TienKham, TienThuoc, TongTien)
VALUES('HD006',	'PK006',	100000,	300000,	400000)
INSERT INTO HOADON (MaHD, MaPK, TienKham, TienThuoc, TongTien)
VALUES('HD007',	'PK007',	100000,	1000000,	1100000)
INSERT INTO HOADON (MaHD, MaPK, TienKham, TienThuoc, TongTien)
VALUES('HD008',	'PK008',	100000,	300000,	400000)
INSERT INTO HOADON (MaHD, MaPK, TienKham, TienThuoc, TongTien)
VALUES('HD009',	'PK009',	100000,	1000000,	1100000)
INSERT INTO HOADON (MaHD, MaPK, TienKham, TienThuoc, TongTien)
VALUES('HD010',	'PK010',	100000,	300000,	400000)
INSERT INTO HOADON (MaHD, MaPK, TienKham, TienThuoc, TongTien)
VALUES('HD011',	'PK011',	100000,	500000,	600000)
INSERT INTO HOADON (MaHD, MaPK, TienKham, TienThuoc, TongTien)
VALUES('HD012',	'PK012',	100000,	2000000,	2100000)
INSERT INTO HOADON (MaHD, MaPK, TienKham, TienThuoc, TongTien)
VALUES('HD013',	'PK013',	100000,	1000000,	1100000)
INSERT INTO HOADON (MaHD, MaPK, TienKham, TienThuoc, TongTien)
VALUES('HD014',	'PK014',	100000,	500000,	600000)

INSERT INTO THUOC (TenThuoc, DonViTinh, Gia)
VALUES('Telfast',	N'Hộp',	200000)
INSERT INTO THUOC (TenThuoc, DonViTinh, Gia)
VALUES('Fexofenadine',	N'Hộp',	100000)
INSERT INTO THUOC (TenThuoc, DonViTinh, Gia)
VALUES('Augmentin',	N'Hộp', 	250000)
INSERT INTO THUOC (TenThuoc, DonViTinh, Gia)
VALUES('TENOFOVIR',	N'Hộp', 	500000)
INSERT INTO THUOC (TenThuoc, DonViTinh, Gia)
VALUES('Minoxidil',	N'Hộp',	500000)
INSERT INTO THUOC (TenThuoc, DonViTinh, Gia)
VALUES(N'Bạc nitrat',	N'Hộp',	300000)
INSERT INTO THUOC (TenThuoc, DonViTinh, Gia)
VALUES('Feldene',	N'Hộp',	300000)
INSERT INTO THUOC (TenThuoc, DonViTinh, Gia)
VALUES('Fenofibrat',	N'Hộp',	500000)
INSERT INTO THUOC (TenThuoc, DonViTinh, Gia)
VALUES('Fenoprofen',	N'Hộp',	300000)
INSERT INTO THUOC (TenThuoc, DonViTinh, Gia)
VALUES('Dacarbazine',	N'Hộp',	1000000)
INSERT INTO THUOC (TenThuoc, DonViTinh, Gia)
VALUES('Dantrolene',	N'Hộp',	300000)
INSERT INTO THUOC (TenThuoc, DonViTinh, Gia)
VALUES('Daptomycin',	N'Hộp',	500000)
INSERT INTO THUOC (TenThuoc, DonViTinh, Gia)
VALUES('Heparin',	N'Hộp',	2000000)
INSERT INTO THUOC (TenThuoc, DonViTinh, Gia)
VALUES('Ganirelix',	N'Hộp',	1000000)
INSERT INTO THUOC (TenThuoc, DonViTinh, Gia)
VALUES('Kaleorid',	N'Hộp',	500000)

INSERT INTO CTTT (MaPK, TenThuoc, SoLuong, DonGia, CachDung)
VALUES('PK001',	'Telfast',	'2',	400000,	N'Bạn có thể dùng thuốc fexofenadine bằng cách uống kèm hoặc không kèm với thức ăn. Khi dùng thuốc fexofenadine, bạn nên uống một ly nước đầy và không uống cùng với nước trái cây vì có thể làm giảm tác dụng của thuốc')
INSERT INTO CTTT (MaPK, TenThuoc, SoLuong, DonGia, CachDung)
VALUES('PK002',	'Fexofenadine',	'1',	100000,	N'Dùng 30 mg cho trẻ uống hai lần một ngày')
INSERT INTO CTTT (MaPK, TenThuoc, SoLuong, DonGia, CachDung)
VALUES('PK003',	'Augmentin',	'3',	750000,	N'Uống thuốc với một cốc nước đầy. Uống ở đầu bữa ăn để tránh gây rối loạn tiêu hóa và dùng thuốc trong thời điểm cố định mỗi ngày và nhai trước khi nuốt, không nuốt cả viên khi chưa nhai.')
INSERT INTO CTTT (MaPK, TenThuoc, SoLuong, DonGia, CachDung)
VALUES('PK004',	'Minoxidil',	'2',	1000000,	N'Liều lượng ban đầu: uống 5 mg một lần một ngày; Liều lượng duy trì: dùng 10-40 mg, chia thành 1-2 liều.')
INSERT INTO CTTT (MaPK, TenThuoc, SoLuong, DonGia, CachDung)
VALUES('PK005',	N'Bạc nitrat',	'1',	300000,	N'Thoa lên các vết bỏng  2-3 lần một tuần.')
INSERT INTO CTTT (MaPK, TenThuoc, SoLuong, DonGia, CachDung)
VALUES('PK006',	'Feldene',	'1',	300000,	N'Dùng 20 mg, uống một lần mỗi ngày hoặc 10 mg, uống hai lần mỗi ngày. Liều tối đa hàng ngày là 20 mg.')
INSERT INTO CTTT (MaPK, TenThuoc, SoLuong, DonGia, CachDung)
VALUES('PK007',	'Fenofibrat',	'2',	1000000,	N'Bạn uống 1 viên nén 145 mg 1 lần mỗi ngày. Những người đã sử dụng viên nang fenofibrat 200 mg hoặc viên nén 160 mg thời gian gần đây có thể chuyển sang uống viên nén 145 mg mà không cần hiệu chỉnh liều.')
INSERT INTO CTTT (MaPK, TenThuoc, SoLuong, DonGia, CachDung)
VALUES('PK008',	'Fenoprofen',	'1',	300000,	N'Dùng thuốc này bằng đường uống với một ly nước đầy (240 ml), trừ khi bác sĩ của bạn có chỉ dẫn khác. Đừng nằm xuống trong ít nhất 10 phút sau khi uống thuốc này. Nếu bạn bị khó chịu ở dạ dày trong khi dùng thuốc này, hãy uống thuốc với thực phẩm, sữa, hoặc thuốc kháng axit')
INSERT INTO CTTT (MaPK, TenThuoc, SoLuong, DonGia, CachDung)
VALUES('PK009',	'Dacarbazine',	'1',	1000000,	N'Tiêm tĩnh mạch 2-4,5 mg/kg mỗi ngày một lần trong 10 ngày, lặp lại mỗi 4 tuần hoặc tiêm tĩnh mạch 250 mg/mÂ²  một lần mỗi ngày trong 5 ngày, lặp lại mỗi 3 tuần.')
INSERT INTO CTTT (MaPK, TenThuoc, SoLuong, DonGia, CachDung)
VALUES('PK010', 'Dantrolene',	'1',	300000,	N'Tiêm truyền tĩnh mạch: 2,5 mg/kg, bắt đầu khoảng 75 phút trước khi gây mê và truyền tĩnh mạch trong khoảng 1 giờ. Uống: 4-8 mg/kg/ngày uống chia thành ba hoặc bốn liều trong 1 hoặc 2 ngày trước khi phẫu thuật, liều cuối cùng uống với lượng nước tối thiểu khoảng 3-4 giờ trước khi phẫu thuật.')
INSERT INTO CTTT (MaPK, TenThuoc, SoLuong, DonGia, CachDung)
VALUES('PK011',	'Daptomycin',	'1',	500000,	N'Tiêm tĩnh mạch 6 mg/kg mỗi 24 tiếng trong 2 đến 6 tuần.')
INSERT INTO CTTT (MaPK, TenThuoc, SoLuong, DonGia, CachDung)
VALUES('PK012',	'Heparin',	'1',	2000000,	N'Đối với dạng thuốc truyền tĩnh mạch, bạn dùng khoảng 5000 đơn vị một lần, tiếp theo truyền tĩnh mạch liên tục 1300 đơn vị/giờ. Ngoài ra, bạn có thể tiêm tĩnh mạch một liều 80 đơn vị một lần. Sau đó, bạn có thể cần tiêm truyền tĩnh mạch liên tục 18 đơn vị/kg/giờ')
INSERT INTO CTTT (MaPK, TenThuoc, SoLuong, DonGia, CachDung)
VALUES('PK013',	'Ganirelix',	'1',	1000000,	N'25 mg tiêm dưới da 1 lần/ngày. Ganirelix được dùng thuận tiện nhất ở vùng bụng quanh rốn hoặc đùi trên. Thông thường, nang hormone kích thích (FSH) ngoại sinh được tiêm trong ngày kinh thứ 2 hoặc 3. Ganirelix được bắt đầu tiêm vào ngày 7 hoặc 8 (ngày thứ 6 trong điều trị FSH). Trị liệu Ganirelix được tiếp tục cho đến khi nang trưởng thành đầy đủ, thời điểm đó sẽ bắt đầu tiêm hCG')
INSERT INTO CTTT (MaPK, TenThuoc, SoLuong, DonGia, CachDung)
VALUES('PK014',	'Kaleorid',	'1',	500000,	N'Uống cả viên thuốc với 1 ly nước đầy.')




--alter table PHIEUKHAM  drop PK_MaBS_FK
--alter table PHIEUKHAM  drop PK_MaBN_FK
--alter table HOADON  drop HD_MaPK_FK
--alter table CTTT  drop CTTT_MaPK_FK
--alter table CTTT  drop CTTT_TenThuoc_FK
--alter table BENHNHAN DROP BN_MaBN_PK
--ALTER TABLE PHIEUKHAM DROP PK_MaPK_PK
--ALTER TABLE BACSI DROP BS_MaBS_PK
--ALTER TABLE HOADON DROP HD_MaHD_PK
--ALTER TABLE THUOC DROP TH_TenThuoc_PK
--ALTER TABLE CTTT DROP CTTT_MaPK_TenThuoc_PK
 

--select * from BACSI
--select * from BENHNHAN
--select * from CTTT
--select * from HOADON
--select * from PHIEUKHAM
--select * from THUOC

--delete BACSI
--delete BENHNHAN 
--delete CTTT
--delete HOADON
--delete PHIEUKHAM
--delete THUOC


--drop table BACSI
--drop table BENHNHAN
--drop table CTTT
--drop table HOADON
--drop table PHIEUKHAM
--drop table THUOC