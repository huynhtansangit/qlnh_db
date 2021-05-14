SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE proc [dbo].[thaotackhachhang]
@makh varchar(5),
@tenkh nvarchar(100)=N'',
@dienthoaikh varchar(10)='',
@diachikh nvarchar(200)=N'',
@ngaysinhkh date=null,
@emailkh varchar(50)='',
@diem numeric(18,0)= 0,
@tiendatieu bigint= 0,
@maloaikh varchar(5)='KH001',
@ngaydangky datetime =null,
@Request varchar (20)=''
as
begin
	if @Request = 'insert'
	begin 
		insert into	KHACHHANG
		(MAKH,TENKH,DIENTHOAIKH,DIACHIKH,NGAYSINHKH,EMAILKH,DIEM,TIENDATIEU,MALOAIKH,ngaydangky)
values (@MAKH,@TENKH,@DIENTHOAIKH,@DIACHIKH,@NGAYSINHKH,@EMAILKH,@DIEM,@TIENDATIEU,@MALOAIKH,@ngaydangky)
	end
	if @Request = 'update'
	begin
		update KHACHHANG set 
		MAKH=@makh,
		TENKH=@tenkh,
		DIENTHOAIKH=@dienthoaikh,
		DIACHIKH=@diachikh,
		NGAYSINHKH=@ngaysinhkh,
		EMAILKH=@emailkh
		where MAKH=@MAKH
	end
end
GO