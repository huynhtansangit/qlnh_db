SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE proc [dbo].[thaotacchitiethoadon]
@MAHD	varchar(5),
@MAMON	varchar(5),
@MAKM	varchar(5) ='',
@SOLUONG	int,
@Request varchar (20)
as
declare @result int
begin
if @Request ='monan'
	begin
	if exists (select * from CTHD_MA where MAMON=@MAMON and MAHD =@MAHD)
		begin
		update CTHD_MA set 
		MAHD	=@MAHD	,
		MAMON	=@MAMON,	
		MAKM	=@MAKM	,
		SOLUONG	=@SOLUONG
		where MAHD =@MAHD and MAMON=@MAMON
		end
	else
		begin
		insert into	CTHD_MA(MAHD,
						MAMON,
						MAKM,
						SOLUONG)
			values 
			(@MAHD,
			@MAMON,
			@MAKM,
			@SOLUONG) 
		end
end
if @Request ='thucuong'
begin
	if exists (select * from CTHD_TU where MATHUCUONG=@MAMON and MAHD =@MAHD)
		begin
		update CTHD_TU set 
		MAHD	=@MAHD	,
		MATHUCUONG=@MAMON,	
		MAKM	=@MAKM	,
		SOLUONG	=@SOLUONG
		where MAHD =@MAHD and MATHUCUONG=@MAMON
		end
	else
		begin
		insert into	CTHD_TU(MAHD,
						MATHUCUONG,
						MAKM,
						SOLUONG)
		values 
			(@MAHD,
			@MAMON,
			@MAKM,
			@SOLUONG)	
		end
end
end
GO