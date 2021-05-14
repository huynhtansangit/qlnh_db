SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE proc [dbo].[themnhanvien]
@MANV varchar(5),
@MACV varchar(5)='',
@MABP varchar(5)='',
@TENNV nvarchar(50)=N'',
@DIENTHOAINV varchar(50)='',
@EMAILNV nvarchar(50)=N'',
@DIACHINV nvarchar(300)=N'',
@SOTAIKHOANNV nvarchar(50)=N'',
@TENDANGNHAP varchar(20)='',
@MATKHAU varchar(20)='',
@NGAYVAOLAM date =null, --1
@Request varchar (20)='',
@matrangthai varchar(5)='activ'

as
begin
	if @Request = 'insert'
	begin 
		insert into	NHANVIEN(MANV,MACV,MABP,TENNV,DIENTHOAINV,EMAILNV,DIACHINV,SOTAIKHOANNV,TENDANGNHAP,MATKHAU,NGAYVAOLAM)
		values (@MANV,@MACV,@MABP,@TENNV,@DIENTHOAINV,@EMAILNV,@DIACHINV,@SOTAIKHOANNV,@TENDANGNHAP,@MATKHAU,@NGAYVAOLAM)
	end
	if @Request = 'update'
	begin
		update NHANVIEN set 
		MANV=@MANV,
		MACV=@MACV,MABP=@MABP,
		TENNV=@TENNV,
		DIENTHOAINV=@DIENTHOAINV,
		EMAILNV=@EMAILNV,DIACHINV=@DIACHINV,
		SOTAIKHOANNV=@SOTAIKHOANNV,
		TENDANGNHAP=@TENDANGNHAP,
		MATKHAU=@MATKHAU
		where MANV=@MANV
	end
end
GO