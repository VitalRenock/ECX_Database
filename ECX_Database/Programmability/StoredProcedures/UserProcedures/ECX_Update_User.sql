CREATE PROCEDURE [dbo].[ECX_Update_User]
	@id INT,
	@nickName NVARCHAR(20),
	@lastName NVARCHAR(50),
	@firstName NVARCHAR(50),
	@role_ID NVARCHAR(20)
AS
BEGIN

		UPDATE [User] SET
			[Nickname]= @nickName,
			[Lastname] = @lastName,
			[Firstname] = @firstName,
			[Role_ID] = @role_ID
		WHERE [ID] = @id;

END