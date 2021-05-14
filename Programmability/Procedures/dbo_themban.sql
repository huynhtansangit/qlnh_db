SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE proc [dbo].[themban]
@SOBAN varchar(5)='',
@TENBAN varchar(10)='',
@TINHTRANGBAN varchar(10)='empty',
@MAKHUVUC varchar(5)='',
@matrangthai varchar(5)='activ'
as
begin
	if not exists (select 1 from ban where @SOBAN=SOBAN)
	begin
		insert into BAN (SOBAN, TENBAN, TINHTRANGBAN, MAKHUVUC) values ( @SOBAN, @TENBAN, @TINHTRANGBAN, @MAKHUVUC)
	end
end
GO