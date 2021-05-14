SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE proc [dbo].[xoamonan]
@mamon varchar(5)
as
begin
	update Monan set matrangthai = 'elimi',NGAYXOAMON=GETDATE() where MaMon like @mamon -- không phân biệt hoa thường
end
GO