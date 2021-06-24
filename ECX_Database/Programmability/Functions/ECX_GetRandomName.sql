CREATE FUNCTION [dbo].[ECX_GetRandomName]
(
    @random INT
)
RETURNS NVARCHAR(3)
AS
BEGIN
	
	DECLARE @string NVARCHAR(3);
	
	--DECLARE @rand INT
	--SET @rand = FLOOR(RAND()*(9-0+1)+0)

	SELECT @string =
	CASE @random
       WHEN 0 THEN 'zui'
       WHEN 1 THEN 'mio'
       WHEN 2 THEN 'puk'
       WHEN 3 THEN 'lou'
       WHEN 4 THEN 'rul'
       WHEN 5 THEN 'der'
       WHEN 6 THEN 'sal'
       WHEN 7 THEN 'jua'
       WHEN 8 THEN 'wez'
       ELSE 'dom'
	END

	 RETURN @string

END
