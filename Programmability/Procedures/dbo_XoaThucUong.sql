SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE proc [dbo].[XoaThucUong]
@mathucuong varchar(5)
as
begin
	update THUCUONG set matrangthai='elimi',NGAYXOATHUCUONG=GETDATE() where MATHUCUONG like @mathucuong
end
GO