SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE proc [dbo].[dangkydangnhap]
@MANV varchar(5),
@TENDANGNHAP varchar(20),
@MATKHAU varchar(20),
@Request varchar (20)
as
declare @result int
begin
if @Request ='login'
begin
	SELECT * FROM NHANVIEN  
          WHERE TENDANGNHAP = @TENDANGNHAP and  MATKHAU=@MATKHAU
end
else if @request ='register'
begin
	if exists (select 1 from nhanvien where TENDANGNHAP=@TENDANGNHAP)
		set @result=0-- truy vấn thất bại
	else
	begin
		update nhanvien set TENDANGNHAP=@TENDANGNHAP,MATKHAU=@MATKHAU
		where MANV=@MANV
		set @result = 1 -- truy vấn thành công
	end
end
return @result
end
GO