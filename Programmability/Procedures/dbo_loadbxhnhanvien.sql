SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

create proc [dbo].[loadbxhnhanvien]
@mocthoigian varchar(10)
as
begin
if @mocthoigian ='day'
	begin
		select top 6 temp.MANV, TENNV,DOANHTHUNV from NHANVIEN,
		(select MANV, sum(TIENSAUTHUE) as DOANHTHUNV from HOADON where ngaylap > DATEADD(day,-1,GETDATE())  group by MANV ) as temp 
		where temp.MANV=NHANVIEN.MANV order by DOANHTHUNV desc
	end
else if @mocthoigian ='week'
	begin
		select top 6 temp.MANV, TENNV,DOANHTHUNV from NHANVIEN,
		(select MANV, sum(TIENSAUTHUE) as DOANHTHUNV from HOADON where ngaylap > DATEADD(day,-7,GETDATE())  group by MANV ) as temp 
		where temp.MANV=NHANVIEN.MANV order by DOANHTHUNV desc
	end
else if @mocthoigian ='month'
	begin
		select top 6 temp.MANV, TENNV,DOANHTHUNV from NHANVIEN,
		(select MANV, sum(TIENSAUTHUE) as DOANHTHUNV from HOADON where ngaylap > DATEADD(day,-30,GETDATE())  group by MANV ) as temp 
		where temp.MANV=NHANVIEN.MANV order by DOANHTHUNV desc
	end
else if @mocthoigian ='year'
	begin
		select top 6 temp.MANV, TENNV,DOANHTHUNV from NHANVIEN,
		(select MANV, sum(TIENSAUTHUE) as DOANHTHUNV from HOADON where ngaylap > DATEADD(day,-365,GETDATE())  group by MANV ) as temp 
		where temp.MANV=NHANVIEN.MANV order by DOANHTHUNV desc
	end
else if @mocthoigian ='all'
	begin
		select top 6 temp.MANV, TENNV,DOANHTHUNV from NHANVIEN,
		(select MANV, sum(TIENSAUTHUE) as DOANHTHUNV from HOADON group by MANV ) as temp 
		where temp.MANV=NHANVIEN.MANV order by DOANHTHUNV desc
	end
end


GO