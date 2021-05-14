SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE proc [dbo].[SuaBan]
@SOBAN varchar(5)='',
@TENBAN varchar(10)='',
@MAKHUVUC varchar(5)=''
as
	begin
		update BAN set 
		SOBAN=@SOBAN,
		TENBAN=@TENBAN,
		MAKHUVUC=@MAKHUVUC
		where SOBAN = @SOBAN
	end
GO