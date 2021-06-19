CREATE PROCEDURE [dbo].[ECX_Update_User]
	@id INT,
	@email NVARCHAR(200),
	@password NVARCHAR(20),
	@nickName NVARCHAR(20),
	@lastName NVARCHAR(50),
	@firstName NVARCHAR(50),
	@role_ID NVARCHAR(20),
	@responseMessage NVARCHAR(250)
AS
BEGIN

	BEGIN TRY

		UPDATE [User] SET
			[Email] = @email,
			[Password] = HASHBYTES('SHA2_512', [dbo].[ECX_GetPreSalt]() + @password + [dbo].[ECX_GetPostSalt]()),
			[Nickname]= @nickName,
			[Lastname] = @lastName,
			[Firstname] = @firstName,
			[Role_ID] = @role_ID
		WHERE [ID] = @id;

		SET @responseMessage = 'Succes';

	END TRY

	BEGIN CATCH

		SET @responseMessage = ERROR_MESSAGE();

	END CATCH

END