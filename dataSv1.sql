/* CREATE TABLE ChuongTrinhDaoTao(
	maChuongTrinhDaoTao VARCHAR(10) UNIQUE NOT NULL,
	tenNganh NVARCHAR(30),
	soTinChi TINYINT,
	namDaoTao YEAR,
	PRIMARY KEY (maChuongTrinhDaoTao)
);

CREATE TABLE MonHoc (
	maMonHoc VARCHAR(10) UNIQUE NOT NULL,
	tenMonHoc NVARCHAR(30),
	soTinChi TINYINT,
	maChuongTrinhDaoTao VARCHAR(10) UNIQUE NOT NULL, -- check unique
	PRIMARY KEY (maMonHoc),
	FOREIGN KEY (maChuongTrinhDaoTao) REFERENCES chuongtrinhdaotao (maChuongTrinhDaoTao)
); 
CREATE TABLE NhanVien (
	maNhanVien VARCHAR(10) UNIQUE NOT NULL,
	tenNhanVien NVARCHAR(30),
	ngaySinh DATE,
	chucVu NVARCHAR(30),
	PRIMARY KEY (maNhanVien)
); 

CREATE TABLE SinhVien (
	maSinhVien VARCHAR(10) UNIQUE NOT NULL,
	hoTen NVARCHAR(30),
	ngaySinh DATE,
	namNhapHoc YEAR,
	maChuongTrinhDaoTao VARCHAR(10),
	PRIMARY KEY (maSinhVien)
	-- FOREIGN KEY (maChuongTrinhDaoTao) REFERENCES KEY chuongtrinhdaotao(maChuongTrinhDaoTao)
); 
-- ALTER TABLE monhoc MODIFY COLUMN maChuongTrinhDaoTao VARCHAR(11) NOT NULL;
CREATE TABLE LopHocPhan (
	maHocPhan VARCHAR(10) UNIQUE NOT NULL,
	hocKy TINYINT,
	namHoc YEAR,
	soLuongSinhVien TINYINT,
	maNhanVien VARCHAR(10) ,
	maMonHoc VARCHAR(10),
	PRIMARY KEY (maHocPhan),
	FOREIGN KEY (maNhanVien) REFERENCES NhanVien(maNhanVien),
	FOREIGN KEY (maMonHoc) REFERENCES monhoc(maMonHoc)
); 
ALTER TABLE sinhvien ADD FOREIGN KEY (maChuongTrinhDaoTao) REFERENCES chuongtrinhdaotao(maChuongTrinhDaoTao);
*/
-- INSERT INTO chuongtrinhdaotao (maChuongTrinhDaoTao,tenNganh,soTinChi,namDaoTao) VALUES ('001','CNTT','99','4');
-- ALTER TABLE chuongtrinhdaotao MODIFY COLUMN namDaoTao TINYINT;
-- INSERT INTO chuongtrinhdaotao (maChuongTrinhDaoTao,tenNganh,soTinChi,namDaoTao) VALUES ('002','CNTT1','99','4');
-- INSERT INTO chuongtrinhdaotao (maChuongTrinhDaoTao,tenNganh,soTinChi,namDaoTao) VALUES ('003','Kinh Te','89','3');
-- INSERT INTO sinhvien (maSinhVien, hoTen, ngaySinh, namNhapHoc, maChuongTrinhDaoTao) VALUES ('211','Giang Hao','2003/9/26','2021','001');
-- INSERT INTO sinhvien (maSinhVien, hoTen, ngaySinh, namNhapHoc, maChuongTrinhDaoTao) VALUES ('213','Duy Long','2003/8/6','2021','001');
-- INSERT INTO sinhvien (maSinhVien, hoTen, ngaySinh, namNhapHoc, maChuongTrinhDaoTao) VALUES ('214','Tran Nam','2003/9/16','2021','001');
-- INSERT INTO sinhvien (maSinhVien, hoTen, ngaySinh, namNhapHoc, maChuongTrinhDaoTao) VALUES ('215','Duy Bao','2003/10/6','2021','001');
-- INSERT INTO sinhvien (maSinhVien, hoTen, ngaySinh, namNhapHoc, maChuongTrinhDaoTao) VALUES ('216','Minh Vu','2003/6/6','2021','001');
-- INSERT INTO sinhvien (maSinhVien, hoTen, ngaySinh, namNhapHoc, maChuongTrinhDaoTao) VALUES ('217','Hoang Long','2003/2/5','2021','001');
-- INSERT INTO sinhvien (maSinhVien, hoTen, ngaySinh, namNhapHoc, maChuongTrinhDaoTao) VALUES ('218','Cong Anh','2003/8/15','2021','001');
-- INSERT INTO sinhvien (maSinhVien, hoTen, ngaySinh, namNhapHoc, maChuongTrinhDaoTao) VALUES ('219','Chi Duc','2003/1/4','2021','001');
-- INSERT INTO sinhvien (maSinhVien, hoTen, ngaySinh, namNhapHoc, maChuongTrinhDaoTao) VALUES ('220','Nhat Anh','2003/4/1','2021','001');
-- INSERT INTO sinhvien (maSinhVien, hoTen, ngaySinh, namNhapHoc, maChuongTrinhDaoTao) VALUES ('221','Hung Nam','2003/7/6','2021','001');