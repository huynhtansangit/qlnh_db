SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE proc [dbo].[thaotachoadon]
@MAHD	varchar(5),
@MAKH	varchar(5)='',
@MANV	varchar(5),
@NGAYLAP	datetime,
@NOIDUNG	nvarchar(50)='',
@HTTT	nvarchar(20)=N'tien mat',
@SOBAN	varchar(5),
@TINHTRANGHD	nvarchar(20)='',
@VAT	float=0.1,
@TIENSAUTHUE	bigint=0,
@TIENNHANKH	bigint=0,
@TIENTRALAIKH	bigint=0,
@request varchar (10)=''
	
as
declare @result int
begin
if @Request ='insert'
begin
	insert into	HOADON (MAHD,
						MAKH,
						MANV,
						NGAYLAP,
						NOIDUNG,
						HTTT,
						SOBAN,
						TINHTRANGHD,
						VAT,
						TIENSAUTHUE,
						TIENNHANKH,
						TIENTRALAIKH)
		values 
			(@MAHD,
			@MAKH,
			@MANV,
			@NGAYLAP,
			@NOIDUNG,
			@HTTT,
			@SOBAN,
			@TINHTRANGHD,
			@VAT,
			@TIENSAUTHUE,
			@TIENNHANKH,
			@TIENTRALAIKH)
end
if @Request ='update'
begin
			update hoadon set
			MAHD=@MAHD,
			MAKH=@MAKH,
			MANV=@MANV,
			NOIDUNG=@NOIDUNG,
			HTTT=N'Tiền mặt',
			SOBAN=@SOBAN,
			TINHTRANGHD=@TINHTRANGHD,
			VAT=@VAT,
			TIENSAUTHUE=@TIENSAUTHUE,
			TIENNHANKH=@TIENNHANKH,
			TIENTRALAIKH=@TIENTRALAIKH
			where @MAHD=MAHD
end
return @result
end
GO