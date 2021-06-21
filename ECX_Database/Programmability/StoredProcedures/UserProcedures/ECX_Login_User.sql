CREATE PROCEDURE [dbo].[ECX_Login_User]
	@email NVARCHAR,
	@password NVARCHAR
AS
	SELECT * FROM [User] WHERE [Email] = @email AND [Password] = @password
RETURN 0
