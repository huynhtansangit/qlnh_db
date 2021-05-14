SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE proc [dbo].[loadbxhthucuong]
@mocthoigian varchar(10),
@tungay varchar ( 25)='',
@denngay varchar ( 25)=''
as
begin
if @mocthoigian ='day'
	begin
		select top 6 new.MATHUCUONG,TENTHUCUONG,SLBANRA from THUCUONG,
		(select tu.MATHUCUONG,sum(tu.SOLUONG) as SLBANRA from CTHD_TU as tu, HOADON as hd 
		where hd.MAHD=tu.MAHD and ngaylap > DATEADD(day,-1,GETDATE()) group by tu.MATHUCUONG) as new 
		where new.MATHUCUONG=THUCUONG.MATHUCUONG order by SLBANRA desc
	end
else if @mocthoigian ='week'
	begin
		select top 6 new.MATHUCUONG,TENTHUCUONG,SLBANRA from THUCUONG,
		(select tu.MATHUCUONG,sum(tu.SOLUONG) as SLBANRA from CTHD_TU as tu, HOADON as hd 
		where hd.MAHD=tu.MAHD and ngaylap > DATEADD(day,-7,GETDATE()) group by tu.MATHUCUONG) as new 
		where new.MATHUCUONG=THUCUONG.MATHUCUONG order by SLBANRA desc
	end
else if @mocthoigian ='month'
	begin
		select top 6 new.MATHUCUONG,TENTHUCUONG,SLBANRA from THUCUONG,
		(select tu.MATHUCUONG,sum(tu.SOLUONG) as SLBANRA from CTHD_TU as tu, HOADON as hd 
		where hd.MAHD=tu.MAHD and ngaylap > DATEADD(day,-30,GETDATE()) group by tu.MATHUCUONG) as new 
		where new.MATHUCUONG=THUCUONG.MATHUCUONG order by SLBANRA desc
	end
else if @mocthoigian ='year'
	begin
		select top 6 new.MATHUCUONG,TENTHUCUONG,SLBANRA from THUCUONG,
		(select tu.MATHUCUONG,sum(tu.SOLUONG) as SLBANRA from CTHD_TU as tu, HOADON as hd 
		where hd.MAHD=tu.MAHD and ngaylap > DATEADD(day,-365,GETDATE()) group by tu.MATHUCUONG) as new 
		where new.MATHUCUONG=THUCUONG.MATHUCUONG order by SLBANRA desc
	end
else if @mocthoigian ='all'
	begin
		select top 6 new.MATHUCUONG,TENTHUCUONG,SLBANRA from THUCUONG,
		(select tu.MATHUCUONG,sum(tu.SOLUONG) as SLBANRA from CTHD_TU as tu, HOADON as hd 
		where hd.MAHD=tu.MAHD  group by tu.MATHUCUONG) as new 
		where new.MATHUCUONG=THUCUONG.MATHUCUONG order by SLBANRA desc
	end
else
	begin
	select new.MATHUCUONG,TENTHUCUONG,SLBANRA from THUCUONG,
		(select tu.MATHUCUONG,sum(tu.SOLUONG) as SLBANRA from CTHD_TU as tu, HOADON as hd 
		where hd.MAHD=tu.MAHD and ngaylap > @tungay and NGAYLAP < @denngay group by tu.MATHUCUONG) as new 
		where new.MATHUCUONG=THUCUONG.MATHUCUONG order by SLBANRA desc
	end
end


GO