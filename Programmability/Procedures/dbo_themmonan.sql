SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE proc [dbo].[themmonan]
@MAMON varchar(5),
@TENMON nvarchar(100)='',
@GIABAN int='',
@MOTA nvarchar(500)='',
@DVT nvarchar(50)='',
@HINH image =null,
@Request varchar (20)='',
@matrangthai varchar(5)='activ'
as
begin
	if @Request = 'insert'
	begin 
	if not exists (select 1 from monan where @MAMON=MAMON)
	begin
		insert into	MONAN(MAMON,
					TENMON,
					GIABAN,
					MOTA,
					DVT,
					HINH)
		values 
		(@MAMON,
		@TENMON,
		@GIABAN,
		@MOTA,
		@DVT,
		@HINH)
	end
	end
	if @Request = 'update'
	begin
		update MONAN set 
		MAMON=@MAMON,
		TENMON=@TENMON,
		GIABAN=@GIABAN,
		MOTA=@MOTA,
		DVT=@DVT,
		HINH=@HINH
		where mamon=@mamon
	end
	if @Request ='updatenonimage'
	begin
		update MONAN set 
		MAMON=@MAMON,
		TENMON=@TENMON,
		GIABAN=@GIABAN,
		MOTA=@MOTA,
		DVT=@DVT
		where mamon=@mamon
	end
end
GO