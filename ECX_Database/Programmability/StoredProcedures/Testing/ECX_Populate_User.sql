CREATE PROCEDURE [dbo].[ECX_Populate_User]
	@iteration INT
AS
BEGIN
	
	DECLARE @index INT = 0;

	--WHILE (@index < @iteration)
	--BEGIN

	--	DECLARE @mail NVARCHAR(20) 
	--	SELECT @mail = CONCAT([ECX_GetRandomName](FLOOR(RAND()*(9-0+1)+0)), [ECX_GetRandomName](FLOOR(RAND()*(9-0+1)+0)), [ECX_GetRandomName](FLOOR(RAND()*(9-0+1)+0)), '@mail.com')
	--	DECLARE @nick NVARCHAR(20) 
	--	SELECT @nick = CONCAT([ECX_GetRandomName](FLOOR(RAND()*(9-0+1)+0)), [ECX_GetRandomName](FLOOR(RAND()*(9-0+1)+0)), [ECX_GetRandomName](FLOOR(RAND()*(9-0+1)+0)))
	--	DECLARE @last NVARCHAR(20)
	--	SELECT @last = CONCAT([ECX_GetRandomName](FLOOR(RAND()*(9-0+1)+0)), [ECX_GetRandomName](FLOOR(RAND()*(9-0+1)+0)), [ECX_GetRandomName](FLOOR(RAND()*(9-0+1)+0)))
	--	DECLARE @first NVARCHAR(20)
	--	SELECT @first = CONCAT([ECX_GetRandomName](FLOOR(RAND()*(9-0+1)+0)), [ECX_GetRandomName](FLOOR(RAND()*(9-0+1)+0)), [ECX_GetRandomName](FLOOR(RAND()*(9-0+1)+0)))
		
	--	EXEC [ECX_Register_User] 
	--	@email = @mail, 
	--	@password = 'test=1111', 
	--	@nickname = @nick,
	--	@lastname = @last, 
	--	@firstname = @first;

	--	SET @index = @index + 1;

	--END

END