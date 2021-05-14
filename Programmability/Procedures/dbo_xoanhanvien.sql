SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE proc [dbo].[xoanhanvien]
@manv varchar(5)
as
begin
	update NHANVIEN set matrangthai='elimi',NGAYROIKHOI=GETDATE() where MANV like @manv
end
GO