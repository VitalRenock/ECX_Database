CREATE PROCEDURE [dbo].[ECX_Login_User]
	@email NVARCHAR(384),
	@password NVARCHAR(20)
AS
BEGIN

	SELECT 
		U.[ID],
		U.[Email],
		U.[Nickname],
		U.[Lastname], 
		U.[Firstname],
		R.[Name]
	FROM [User] U
	LEFT JOIN [Role] R
	ON U.Role_ID = R.ID
	WHERE U.[Email] = @email 
	AND U.[Password] = HASHBYTES('SHA_512', [dbo].[ECX_GetPreSalt]() + @password + [dbo].[ECX_GetPostSalt]());

	RETURN 0

END