SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE proc [dbo].[loadbxhmonan]
@mocthoigian varchar(10),
@tungay varchar ( 25)='',
@denngay varchar ( 25)=''
as
begin
if @mocthoigian ='day'
	begin
		select top 6 new.MAMON,TENMON,SLBANRA 
		from Monan,(select ma.MAMON,sum(ma.SOLUONG) as SLBANRA from CTHD_MA as ma, HOADON as hd 
		where hd.MAHD=ma.MAHD and ngaylap > DATEADD(day,-1,GETDATE()) group by ma.MAMON ) as new 
		where new.MAMON=MONAN.MAMON order by SLBANRA desc
	end
else if @mocthoigian ='week'
	begin
		select top 6 new.MAMON,TENMON,SLBANRA 
		from Monan,(select ma.MAMON,sum(ma.SOLUONG) as SLBANRA from CTHD_MA as ma, HOADON as hd 
		where hd.MAHD=ma.MAHD and ngaylap > DATEADD(day,-7,GETDATE()) group by ma.MAMON ) as new 
		where new.MAMON=MONAN.MAMON order by SLBANRA desc
	end
else if @mocthoigian ='month'
	begin
		select top 6 new.MAMON,TENMON,SLBANRA 
		from Monan,(select ma.MAMON,sum(ma.SOLUONG) as SLBANRA from CTHD_MA as ma, HOADON as hd 
		where hd.MAHD=ma.MAHD and ngaylap > DATEADD(day,-30,GETDATE()) group by ma.MAMON ) as new 
		where new.MAMON=MONAN.MAMON order by SLBANRA desc
	end
else if @mocthoigian ='year'
	begin
		select top 6 new.MAMON,TENMON,SLBANRA 
		from Monan,(select ma.MAMON,sum(ma.SOLUONG) as SLBANRA from CTHD_MA as ma, HOADON as hd 
		where hd.MAHD=ma.MAHD and ngaylap > DATEADD(day,-365,GETDATE()) group by ma.MAMON ) as new 
		where new.MAMON=MONAN.MAMON order by SLBANRA desc
	end
else if @mocthoigian ='all'
	begin
		select new.MAMON,TENMON,SLBANRA 
		from Monan,(select ma.MAMON,sum(ma.SOLUONG) as SLBANRA from CTHD_MA as ma, HOADON as hd 
		where hd.MAHD=ma.MAHD group by ma.MAMON ) as new 
		where new.MAMON=MONAN.MAMON order by SLBANRA desc
	end
else
	begin
	select new.MAMON,TENMON,SLBANRA 
		from Monan,(select ma.MAMON,sum(ma.SOLUONG) as SLBANRA from CTHD_MA as ma, HOADON as hd 
		where hd.MAHD=ma.MAHD and ngaylap > @tungay and NGAYLAP < @denngay group by ma.MAMON ) as new 
		where new.MAMON=MONAN.MAMON order by SLBANRA desc
	end
end


GO