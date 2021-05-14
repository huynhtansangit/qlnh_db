SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE proc [dbo].[XoaBan]
@SOBAN varchar(5)=''
as
begin
	if exists (select 1 from ban where @SOBAN=SOBAN and TINHTRANGBAN='empty')
	begin
		update ban set matrangthai ='elimi', NGAYXOABAN = GETDATE() where SOBAN = @SOBAN
	end
end
GO