SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE proc [dbo].[themthucuong]
@MATHUCUONG varchar(5),
@TENTHUCUONG nvarchar(100)='',
@MOTA nvarchar(300)='',
@DVT nvarchar(20)='',
@GIABAN int=0,
@HINH image =null,
@Request varchar (20)='',
@matrangthai varchar(5)='activ'

as
begin
	if @Request = 'insert'
	begin 
	if not exists (select 1 from THUCUONG where @MATHUCUONG= MATHUCUONG)
	begin 
		insert into	THUCUONG(MATHUCUONG,
					TENTHUCUONG,
					MOTA,
					DVT,
					GIABAN,
					HINH)
		values 
		(@MATHUCUONG,
		@TENTHUCUONG,
		@MOTA,
		@DVT,
		@GIABAN,
		@HINH)
	end
	end
	if @Request = 'update'
	begin
		update THUCUONG set 
		MATHUCUONG=@MATHUCUONG,
		TENTHUCUONG=@TENTHUCUONG,
		MOTA=@MOTA,
		DVT=@DVT,
		GIABAN=@GIABAN,
		HINH=@HINH
		where MATHUCUONG=@MATHUCUONG
	end
	if @Request = 'updatenonimage'
	begin
		update THUCUONG set 
		MATHUCUONG=@MATHUCUONG,
		TENTHUCUONG=@TENTHUCUONG,
		MOTA=@MOTA,
		DVT=@DVT,
		GIABAN=@GIABAN
		where MATHUCUONG=@MATHUCUONG
	end
end
GO