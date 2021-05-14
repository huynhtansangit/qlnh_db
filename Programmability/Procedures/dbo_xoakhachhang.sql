SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE proc [dbo].[xoakhachhang]
@makh varchar(5)
as
begin
	update KHACHHANG set matrangthai='elimi',NGAYXOATK=GETDATE() where MAKH like @makh
end
GO