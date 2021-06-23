CREATE PROCEDURE [dbo].[ECX_SetRole_User]
	@user_ID INT,
	@role_name NVARCHAR(20)
AS
BEGIN

	IF
	(
		EXISTS(SELECT * FROM [User] WHERE [ID] = @user_ID)
		AND
		EXISTS(SELECT * FROM [Role] WHERE [Name] = @role_name)
	)
	BEGIN

		UPDATE [User]
		SET [Role_ID] = (SELECT [ID] FROM [Role] WHERE [Name] = @role_name)
		WHERE [ID] = @user_ID;

		RETURN 1;

	END

	--ELSE
	--BEGIN

	--	RETURN RAISERROR 
	--	(
	--		'Error raised in TRY block.', -- Message text.
	--		16, -- Severity.
	--		1 -- State.
	--	); 

	--END

END