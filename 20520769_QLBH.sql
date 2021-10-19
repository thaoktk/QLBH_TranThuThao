/*Tao Database*/
CREATE DATABASE QLBH_K15
/*Su dung database*/
USE QLBH_K15;

--1. Tạo các quan hệ và khai báo các khóa chính, khóa ngoại của quan hệ.

CREATE TABLE KHACHHANG (
	MAKH CHAR(4) CONSTRAINT PK_KHACHHANG PRIMARY KEY,
	HOTEN VARCHAR(40),
	DCHI VARCHAR(50),
	SODT VARCHAR(20),
	NGSINH SMALLDATETIME,
	DOANHSO MONEY,
	NGDK SMALLDATETIME
)

CREATE TABLE NHANVIEN 
( 
	MANV CHAR(4) CONSTRAINT PK_NHANVIEN PRIMARY KEY,
	HOTEN VARCHAR(40),
	SODT VARCHAR(20),
	NGVL SMALLDATETIME
)

CREATE TABLE SANPHAM 
( 
	MASP CHAR(4) CONSTRAINT PK_SANPHAM PRIMARY KEY,
	TENSP VARCHAR(40),
	DVT VARCHAR(20),
	NUOCSX VARCHAR(40),
	GIA MONEY
)

CREATE TABLE HOADON 
( 
	SOHD INT CONSTRAINT PK_HOADON PRIMARY KEY,
	NGHD SMALLDAT
ETIME,
	MAKH CHAR(4),
	MANV CHAR(4),
	TRIGIA MONEY
)

CREATE TABLE CTHD 
( 
	SOHD INT,
	MASP CHAR(4),
	SL INT,
	CONSTRAINT PK_CTHD PRIMARY KEY (SOHD,MASP)
)

ALTER TABLE HOADON
ADD CONSTRAINT FK01_HOADON FOREIGN KEY (MAKH) REFERENCES KHACHHANG(MAKH)
ALTER TABLE HOADON
ADD CONSTRAINT FK02_HOADON FOREIGN KEY (MANV) REFERENCES NHANVIEN(MANV)
ALTER TABLE CTHD
ADD CONSTRAINT FK02_CTHD FOREIGN KEY (SOHD) REFERENCES HOADON(SOHD)
ALTER TABLE CTHD
ADD CONSTRAINT FK01_CTHD FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP)


/* INSERT */
set dateformat dmy
-------------------------------
-- KHACHHANG
insert into khachhang values('KH01','Nguyen Van A','731 Tran Hung Dao, Q5, TpHCM','8823451','22/10/1960',13060000,'22/07/2006')
insert into khachhang values('KH02','Tran Ngoc Han','23/5 Nguyen Trai, Q5, TpHCM','908256478','03/04/1974',280000,'30/07/2006')
insert into khachhang values('KH03','Tran Ngoc Linh','45 Nguyen Canh Chan, Q1, TpHCM','938776266','12/06/1980',3860000,'08/05/2006')
insert into khachhang values('KH04','Tran Minh Long','50/34 Le Dai Hanh, Q10, TpHCM','917325476','09/03/1965',250000,'10/02/2006')
insert into khachhang values('KH05','Le Nhat Minh','34 Truong Dinh, Q3, TpHCM','8246108','10/03/1950',21000,'28/10/2006')
insert into khachhang values('KH06','Le Hoai Thuong','227 Nguyen Van Cu, Q5, TpHCM','8631738','31/12/1981',915000,'24/11/2006')
insert into khachhang values('KH07','Nguyen Van Tam','32/3 Tran Binh Trong, Q5, TpHCM','916783565','06/04/1971',12500,'12/01/2006')
insert into khachhang values('KH08','Phan Thi Thanh','45/2 An Duong Vuong, Q5, TpHCM','938435756','10/01/1971',365000,'13/12/2006')
insert into khachhang values('KH09','Le Ha Vinh','873 Le Hong Phong, Q5, TpHCM','8654763','03/09/1979',70000,'14/01/2007')
insert into khachhang values('KH10','Ha Duy Lap','34/34B Nguyen Trai, Q1, TpHCM','8768904','02/05/1983',67500,'16/01/2007')

-------------------------------
-- NHANVIEN
insert into nhanvien values('NV01','Nguyen Nhu Nhut','927345678','13/04/2006')
insert into nhanvien values('NV02','Le Thi Phi Yen','987567390','21/04/2006')
insert into nhanvien values('NV03','Nguyen Van B','997047382','27/04/2006')
insert into nhanvien values('NV04','Ngo Thanh Tuan','913758498','24/06/2006')
insert into nhanvien values('NV05','Nguyen Thi Truc Thanh','918590387','20/07/2006')

-------------------------------
-- SANPHAM
insert into sanpham values('BC01','But chi','cay','Singapore',3000)
insert into sanpham values('BC02','But chi','cay','Singapore',5000)
insert into sanpham values('BC03','But chi','cay','Viet Nam',3500)
insert into sanpham values('BC04','But chi','hop','Viet Nam',30000)
insert into sanpham values('BB01','But bi','cay','Viet Nam',5000)
insert into sanpham values('BB02','But bi','cay','Trung Quoc',7000)
insert into sanpham values('BB03','But bi','hop','Thai Lan',100000)
insert into sanpham values('TV01','Tap 100 giay mong','quyen','Trung Quoc',2500)
insert into sanpham values('TV02','Tap 200 giay mong','quyen','Trung Quoc',4500)
insert into sanpham values('TV03','Tap 100 giay tot','quyen','Viet Nam',3000)
insert into sanpham values('TV04','Tap 200 giay tot','quyen','Viet Nam',5500)
insert into sanpham values('TV05','Tap 100 trang','chuc','Viet Nam',23000)
insert into sanpham values('TV06','Tap 200 trang','chuc','Viet Nam',53000)
insert into sanpham values('TV07','Tap 100 trang','chuc','Trung Quoc',34000)
insert into sanpham values('ST01','So tay 500 trang','quyen','Trung Quoc',40000)
insert into sanpham values('ST02','So tay loai 1','quyen','Viet Nam',55000)
insert into sanpham values('ST03','So tay loai 2','quyen','Viet Nam',51000)
insert into sanpham values('ST04','So tay','quyen','Thai Lan',55000)
insert into sanpham values('ST05','So tay mong','quyen','Thai Lan',20000)
insert into sanpham values('ST06','Phan viet bang','hop','Viet Nam',5000)
insert into sanpham values('ST07','Phan khong bui','hop','Viet Nam',7000)
insert into sanpham values('ST08','Bong bang','cai','Viet Nam',1000)
insert into sanpham values('ST09','But long','cay','Viet Nam',5000)
insert into sanpham values('ST10','But long','cay','Trung Quoc',7000)

-------------------------------
-- HOADON
insert into hoadon values(1001,'23/07/2006','KH01','NV01',320000)
insert into hoadon values(1002,'12/08/2006','KH01','NV02',840000)
insert into hoadon values(1003,'23/08/2006','KH02','NV01',100000)
insert into hoadon values(1004,'01/09/2006','KH02','NV01',180000)
insert into hoadon values(1005,'20/10/2006','KH01','NV02',3800000)
insert into hoadon values(1006,'16/10/2006','KH01','NV03',2430000)
insert into hoadon values(1007,'28/10/2006','KH03','NV03',510000)
insert into hoadon values(1008,'28/10/2006','KH01','NV03',440000)
insert into hoadon values(1009,'28/10/2006','KH03','NV04',200000)
insert into hoadon values(1010,'01/11/2006','KH01','NV01',5200000)
insert into hoadon values(1011,'04/11/2006','KH04','NV03',250000)
insert into hoadon values(1012,'30/11/2006','KH05','NV03',21000)
insert into hoadon values(1013,'12/12/2006','KH06','NV01',5000)
insert into hoadon values(1014,'31/12/2006','KH03','NV02',3150000)
insert into hoadon values(1015,'01/01/2007','KH06','NV01',910000)
insert into hoadon values(1016,'01/01/2007','KH07','NV02',12500)
insert into hoadon values(1017,'02/01/2007','KH08','NV03',35000)
insert into hoadon values(1018,'13/01/2007','KH08','NV03',330000)
insert into hoadon values(1019,'13/01/2007','KH01','NV03',30000)
insert into hoadon values(1020,'14/01/2007','KH09','NV04',70000)
insert into hoadon values(1021,'16/01/2007','KH10','NV03',67500)
insert into hoadon values(1022,'16/01/2007',Null,'NV03',7000)
insert into hoadon values(1023,'17/01/2007',Null,'NV01',330000)

-------------------------------
-- CTHD
insert into cthd values(1001,'TV02',10)
insert into cthd values(1001,'ST01',5)
insert into cthd values(1001,'BC01',5)
insert into cthd values(1001,'BC02',10)
insert into cthd values(1001,'ST08',10)
insert into cthd values(1002,'BC04',20)
insert into cthd values(1002,'BB01',20)
insert into cthd values(1002,'BB02',20)
insert into cthd values(1003,'BB03',10)
insert into cthd values(1004,'TV01',20)
insert into cthd values(1004,'TV02',10)
insert into cthd values(1004,'TV03',10)
insert into cthd values(1004,'TV04',10)
insert into cthd values(1005,'TV05',50)
insert into cthd values(1005,'TV06',50)
insert into cthd values(1006,'TV07',20)
insert into cthd values(1006,'ST01',30)
insert into cthd values(1006,'ST02',10)
insert into cthd values(1007,'ST03',10)
insert into cthd values(1008,'ST04',8)
insert into cthd values(1009,'ST05',10)
insert into cthd values(1010,'TV07',50)
insert into cthd values(1010,'ST07',50)
insert into cthd values(1010,'ST08',100)
insert into cthd values(1010,'ST04',50)
insert into cthd values(1010,'TV03',100)
insert into cthd values(1011,'ST06',50)
insert into cthd values(1012,'ST07',3)
insert into cthd values(1013,'ST08',5)
insert into cthd values(1014,'BC02',80)
insert into cthd values(1014,'BB02',100)
insert into cthd values(1014,'BC04',60)
insert into cthd values(1014,'BB01',50)
insert into cthd values(1015,'BB02',30)
insert into cthd values(1015,'BB03',7)
insert into cthd values(1016,'TV01',5)
insert into cthd values(1017,'TV02',1)
insert into cthd values(1017,'TV03',1)
insert into cthd values(1017,'TV04',5)
insert into cthd values(1018,'ST04',6)
insert into cthd values(1019,'ST05',1)
insert into cthd values(1019,'ST06',2)
insert into cthd values(1020,'ST07',10)
insert into cthd values(1021,'ST08',5)
insert into cthd values(1021,'TV01',7)
insert into cthd values(1021,'TV02',10)
insert into cthd values(1022,'ST07',1)
insert into cthd values(1023,'ST04',6)
SELECT * FROM HOADON
--2. Thêm vào thuộc tính GHICHU có kiểu dữ liệu varchar(20) cho quan hệ SANPHAM.
ALTER TABLE SANPHAM 
ADD GHICHU VARCHAR(20)
--3. Thêm vào thuộc tính LOAIKH có kiểu dữ liệu là tinyint cho quan hệ KHACHHANG.
ALTER TABLE KHACHHANG
ADD LOAIKH TINYINT
--4. Sửa kiểu dữ liệu của thuộc tính GHICHU trong quan hệ SANPHAM thành varchar(100).
ALTER TABLE SANPHAM
ALTER COLUMN GHICHU VARCHAR(100)
--5. Xóa thuộc tính GHICHU trong quan hệ SANPHAM.
ALTER TABLE SANPHAM
DROP COLUMN GHICHU 

ALTER TABLE KHACHHANG
ALTER COLUMN LOAIKH TINYINT
--6. Làm thế nào để thuộc tính LOAIKH trong quan hệ KHACHHANG có thể lưu các giá trị
--là: “Vang lai”, “Thuong xuyen”, “Vip”, ...
ALTER TABLE KHACHHANG
ALTER COLUMN LOAIKH VARCHAR(20)
--7. Đơn vị tính của sản phẩm chỉ có thể là (“cay”,”hop”,”cai”,”quyen”,”chuc”)
ALTER TABLE SANPHAM
ADD CONSTRAINT CHECKDVT CHECK (DVT IN('cay','hop','cai','quyen','chuc'))
--8. Giá bán của sản phẩm từ 500 đồng trở lên.
ALTER TABLE SANPHAM 
ADD CONSTRAINT CHECKGIA CHECK(GIA >= 500)
--9. Mỗi lần mua hàng, khách hàng phải mua ít nhất 1 sản phẩm.
ALTER TABLE HOADON 
ADD CONSTRAINT CHECKTRIGIA CHECK(TRIGIA > 0)
--10. Ngày khách hàng đăng ký là khách hàng thành viên phải lớn hơn ngày sinh của người
--đó.
--11. Ngày mua hàng (NGHD) của một khách hàng thành viên sẽ lớn hơn hoặc bằng ngày
--khách hàng đó đăng ký thành viên (NGDK).


--1. Nhập dữ liệu cho các quan hệ trên.
--2. Tạo quan hệ SANPHAM1 chứa toàn bộ dữ liệu của quan hệ SANPHAM. Tạo quan hệ
--KHACHHANG1 chứa toàn bộ dữ liệu của quan hệ KHACHHANG.
select * into SANPHAM1 from SANPHAM
select * into KHACHHANG1 from KHACHHANG
--3. Cập nhật giá tăng 5% đối với những sản phẩm do “Thai Lan” sản xuất (cho quan hệ SANPHAM1)
update SANPHAM1
set GIA = 1.05 * GIA
where NUOCSX = 'Thai Lan'
--4. Cập nhật giá giảm 5% đối với những sản phẩm do “Trung Quoc” sản xuất có giá từ 10.000 trở xuống
--(cho quan hệ SANPHAM1).
update SANPHAM1
set GIA = 0.95 * GIA
where (NUOCSX = 'Trung Quoc' and GIA <= 10000)
--5. Cập nhật giá trị LOAIKH là “Vip” đối với những khách hàng đăng ký thành viên trước ngày
--1/1/2007 có doanh số từ 10.000.000 trở lên hoặc khách hàng đăng ký thành viên từ 1/1/2007 trở về
--sau có doanh số từ 2.000.000 trở lên (cho quan hệ KHACHHANG1).
update KHACHHANG1
set LOAIKH = 'Vip'
where (NGDK < '1/1/2007' and DOANHSO >= 10000000) or (NGDK >= '1/1/2007' and DOANHSO >= 2000000)

--1. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất.
select MASP,TENSP
from SANPHAM 
where NUOCSX = 'Trung Quoc'
--2. In ra danh sách các sản phẩm (MASP, TENSP) có đơn vị tính là “cay”, ”quyen”.
select masp, tensp
from SANPHAM
where dvt in('cay', 'quyen')
--3. In ra danh sách các sản phẩm (MASP,TENSP) có mã sản phẩm bắt đầu là “B” và kết
--thúc là “01”.
select masp, tensp
from SANPHAM
where masp like 'B%01' /* b_01*/
--4. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quốc” sản xuất có giá từ 30.000
--đến 40.000.
select masp, tensp
from SANPHAM
where nuocsx = 'Trung Quoc' and gia between 30000 and 40000
--5. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” hoặc “Thai Lan” sản
--xuất có giá từ 30.000 đến 40.000.
select masp, tensp
from SANPHAM
where nuocsx in('Trung Quoc', 'Thai Lan') and gia between 30000 and 40000
--6. In ra các số hóa đơn, trị giá hóa đơn bán ra trong ngày 1/1/2007 và ngày 2/1/2007.
select sohd, trigia
from hoadon
where nghd in('1/1/2007', '2/1/2007')
--7. In ra các số hóa đơn, trị giá hóa đơn trong tháng 1/2007, sắp xếp theo ngày (tăng dần) và
--trị giá của hóa đơn (giảm dần).
select sohd, trigia
from hoadon
where month(nghd) = 1 and year(nghd) = 2007
order by nghd asc, trigia desc
--8. In ra danh sách các khách hàng (MAKH, HOTEN) đã mua hàng trong ngày 1/1/2007.
select a.makh, hoten
from khachhang a join hoadon b 
on a.makh = b.makh
where nghd = '1/1/2007'
--9. In ra số hóa đơn, trị giá các hóa đơn do nhân viên có tên “Nguyen Van B” lập trong ngày
--28/10/2006.
select a.sohd, a.trigia 
from hoadon a join nhanvien b
on a.manv = b.manv
where b.hoten = 'Nguyen Van B' and a.nghd = '28/10/2006'
--10. In ra danh sách các sản phẩm (MASP,TENSP) được khách hàng có tên “Nguyen Van A”
--mua trong tháng 10/2006.
SELECT SANPHAM.MASP, TENSP
FROM SANPHAM,HOADON,KHACHHANG,CTHD
WHERE HOADON.MAKH=KHACHHANG.MAKH AND CTHD.SOHD=HOADON.SOHD AND CTHD.MASP=SANPHAM.MASP AND HOTEN='Nguyen Van A' AND MONTH (NGHD)=10 AND YEAR(NGHD)=2006
--11. Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”.
select sohd 
from cthd b
where masp = 'BB01' or masp='BB02'
--12. Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”, mỗi sản phẩm
--mua với số lượng từ 10 đến 20.
select sohd 
from cthd c
where masp = 'BB01' and sl between 10 and 20
union
select sohd 
from cthd c
where masp = 'BB02' and sl between 10 and 20
--13. Tìm các số hóa đơn mua cùng lúc 2 sản phẩm có mã số “BB01” và “BB02”, mỗi sản
--phẩm mua với số lượng từ 10 đến 20.
select sohd 
from cthd c
where masp = 'BB01' and sl between 10 and 20
intersect
select sohd 
from cthd c
where masp = 'BB02' and sl between 10 and 20
--14. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất hoặc các sản phẩm được
--bán ra trong ngày 1/1/2007.
select sp.masp, tensp  
from sanpham sp, hoadon hd, cthd 
where sp.masp = cthd.masp and hd.sohd = cthd.sohd and nuocsx = 'Trung Quoc' or nghd = '1/1/2007'
--15. In ra danh sách các sản phẩm (MASP,TENSP) không bán được.
select masp, tensp
from sanpham 
except 
select sp.masp, tensp 
from sanpham sp, cthd
where sp.masp = cthd.masp
--16. In ra danh sách các sản phẩm (MASP,TENSP) không bán được trong năm 2006.
select masp, tensp
from sanpham 
except 
select sp.masp, tensp 
from sanpham sp, cthd, hoadon hd
where sp.masp = cthd.masp and hd.sohd = cthd.sohd and year(nghd) = 2006
--17. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất không bán được trong năm
--2006.
select masp, tensp
from sanpham 
where nuocsx = 'Trung Quoc'
except 
select sp.masp, tensp 
from sanpham sp, cthd, hoadon hd
where sp.masp = cthd.masp and hd.sohd = cthd.sohd and year(nghd) = 2006 and nuocsx = 'Trung Quoc'
--18. Tìm số hóa đơn trong năm 2006 đã mua ít nhất tất cả các sản phẩm do Singapore sản xuất.
select sohd 
from hoadon hd
where year(nghd) = 2006
and not exists(select * 
			   from sanpham sp
			   where nuocsx = 'Singapore' and not exists( select * 
														  from cthd 
														  where cthd.masp = sp.masp
														  and hd.sohd = cthd.sohd))

--19. Có bao nhiêu hóa đơn không phải của khách hàng đăng ký thành viên mua?
select count(sohd) as nottv
from hoadon 
where makh is null
--20. Có bao nhiêu sản phẩm khác nhau được bán ra trong năm 2006.
select count(distinct(masp)) as sospkhacnhau
from hoadon hd, cthd
where cthd.sohd = hd.sohd and year(nghd) = 2006 
--21. Cho biết trị giá hóa đơn cao nhất, thấp nhất là bao nhiêu?
select max(trigia) as caonhat, min(trigia) as thapnhat
from hoadon 
--22. Trị giá trung bình của tất cả các hóa đơn được bán ra trong năm 2006 là bao nhiêu?
select avg(trigia) as trigiatrungbinh
from hoadon 
where year(nghd) = 2006
--23. Tính doanh thu bán hàng trong năm 2006.
select sum(trigia) as doanhthu
from hoadon
where year(nghd) = 2006
--24. Tìm số hóa đơn có trị giá cao nhất trong năm 2006.
select sohd 
from hoadon 
where year(nghd) = 2006 and trigia >= all (select trigia 
											from hoadon 
											where year(nghd) = 2006)
--25. Tìm họ tên khách hàng đã mua hóa đơn có trị giá cao nhất trong năm 2006.
select hoten 
from khachhang kh, hoadon hd
where kh.makh = hd.makh and year(nghd) = 2006 and trigia >= all(select trigia 
											from hoadon 
											where year(nghd) = 2006)
--26. In ra danh sách 3 khách hàng (MAKH, HOTEN) có doanh số cao nhất.
select top 3 makh, hoten
from khachhang kh
order by doanhso desc
-- giảm dần là desc max -> min
--27. In ra danh sách các sản phẩm (MASP, TENSP) có giá bán bằng 1 trong 3 mức giá cao nhất.
select masp, tensp 
from sanpham 
where gia in(select distinct top 3 gia
			from sanpham
			order by gia desc)
-- giá có thể trùng nhau nên phải distinct
--28. In ra danh sách các sản phẩm (MASP, TENSP) do “Thai Lan” sản xuất có giá bằng 1 trong 3 mức
--giá cao nhất (của tất cả các sản phẩm).
select masp, tensp 
from sanpham 
where nuocsx = 'Thai Lan' and gia in(select distinct top 3 gia
									from sanpham
									order by gia desc)
--29. In ra danh sách các sản phẩm (MASP, TENSP) do “Trung Quoc” sản xuất có giá bằng 1 trong 3 mức
--giá cao nhất (của sản phẩm do “Trung Quoc” sản xuất).
select masp, tensp 
from sanpham 
where nuocsx = 'Trung Quoc' and gia in(select distinct top 3 gia
									from sanpham
									where nuocsx = 'Trung Quoc'
									order by gia desc)
--30. * In ra danh sách 3 khách hàng có doanh số cao nhất (sắp xếp theo kiểu xếp hạng).
select top 3 makh, hoten, rank() over(order by doanhso desc) as 'xep hang'
from khachhang 
--31. Tính tổng số sản phẩm do “Trung Quoc” sản xuất.
select count(masp) as 'tổng số sản phâm'
from sanpham
where nuocsx = 'Trung Quoc'
--32. Tính tổng số sản phẩm của từng nước sản xuất.
select nuocsx, count(masp) as 'tổng số sản phâm'
from sanpham
group by nuocsx
--33. Với từng nước sản xuất, tìm giá bán cao nhất, thấp nhất, trung bình của các sản phẩm.
select nuocsx, max(gia) as 'giá bán cao nhất', min(gia) as 'giá bán thấp nhất',
avg(gia) as 'giá bán trung bình'
from sanpham
group by nuocsx
--34. Tính doanh thu bán hàng mỗi ngày.
select nghd as 'ngày bán', sum(trigia) as 'doanh thu mỗi ngày'
from hoadon 
group by nghd 
--35. Tính tổng số lượng của từng sản phẩm bán ra trong tháng 10/2006.
select masp, sum(sl) as 'tổng số lượng'
from cthd, hoadon hd
where cthd.sohd = hd.sohd and month(nghd) = 10 and year(nghd) = 2006
group by masp
--36. Tính doanh thu bán hàng của từng tháng trong năm 2006.
select month(nghd) as 'tháng', sum(trigia) as 'doanh thu từng tháng' 
from hoadon 
where year(nghd) = 2006 
group by month(nghd)
--37. Tìm hóa đơn có mua ít nhất 4 sản phẩm khác nhau.
select sohd, count(distinct(masp)) as 'đếm sp'
from cthd
group by sohd
having count(distinct(masp)) >= 4
--38. Tìm hóa đơn có mua 3 sản phẩm do “Viet Nam” sản xuất (3 sản phẩm khác nhau).
select cthd.sohd, count(distinct(sp.masp)) as 'đếm sp'
from cthd, sanpham sp
where cthd.masp = sp.masp and nuocsx = 'Viet Nam'
group by sohd
having count(distinct(sp.masp)) = 3
--39. Tìm khách hàng (MAKH, HOTEN) có số lần mua hàng nhiều nhất.
select kh.makh, hoten, count(sohd) as 'số lần mua'
from khachhang kh, hoadon hd
where kh.makh = hd.makh
group by kh.makh, hoten
having count(sohd) >= all(select distinct count(sohd) 
						from khachhang kh, hoadon hd
						where kh.makh = hd.makh
						group by kh.makh)
--40. Tháng mấy trong năm 2006, doanh số bán hàng cao nhất ?
select month(nghd) as 'tháng', sum(trigia) as 'doanh thu bán hàng'
from hoadon
where year(nghd) = 2006
group by month(nghd) 
having sum(trigia) >= all (select sum(trigia)
							from hoadon
							where year(nghd) = 2006
							group by month(nghd) )
--41. Tìm sản phẩm (MASP, TENSP) có tổng số lượng bán ra thấp nhất trong năm 2006.
select sp.masp, tensp, sum(sl) as 'tổng số lượng' 
from sanpham sp, cthd, hoadon hd
where sp.masp = cthd.masp and cthd.sohd = hd.sohd and year(nghd) = 2006
group by sp.masp, tensp
having sum(sl) <= all( select sum(sl) as 'tổng số lượng' 
						from sanpham sp, cthd, hoadon hd
						where sp.masp = cthd.masp and cthd.sohd = hd.sohd and year(nghd) = 2006
						group by sp.masp, tensp)

--42. *Mỗi nước sản xuất, tìm sản phẩm (MASP,TENSP) có giá bán cao nhất.
select masp, tensp
from sanpham s1
where gia in( select max(gia)
			from sanpham s2
			where s1.nuocsx = s2.nuocsx)
group by nuocsx,masp, tensp,gia
--43. Tìm nước sản xuất sản xuất ít nhất 3 sản phẩm có giá bán khác nhau.
select nuocsx, count(distinct gia) as 'đếm số giá'
from sanpham 
group by nuocsx
having count(distinct gia) >= 3
--44. *Trong 10 khách hàng có doanh số cao nhất, tìm khách hàng có số lần mua hàng nhiều nhất.
SELECT HOADON.MAKH,HOTEN, COUNT(SOHD) AS SOHD
FROM (SELECT TOP 10 DOANHSO, MAKH,HOTEN
	FROM KHACHHANG
	ORDER BY DOANHSO DESC) AS TOP10, HOADON
	WHERE TOP10.MAKH = HOADON.MAKH
	GROUP BY HOADON.MAKH,HOTEN
	HAVING COUNT(SOHD) >=ALL(SELECT COUNT(SOHD)
							 FROM (SELECT TOP 10 DOANHSO, MAKH,HOTEN
							FROM KHACHHANG
							ORDER BY DOANHSO DESC) AS TOP10, HOADON
							WHERE TOP10.MAKH = HOADON.MAKH
							GROUP BY HOADON.MAKH)