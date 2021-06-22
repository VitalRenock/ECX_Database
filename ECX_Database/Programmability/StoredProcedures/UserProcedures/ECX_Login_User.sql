CREATE PROCEDURE [dbo].[ECX_Login_User]
	@email NVARCHAR(384),
	@password NVARCHAR(20)
AS
BEGIN

	-- Si l'email et le password correspondent et que le User est actif
	IF
	(
		EXISTS(
			SELECT * 
			FROM [User] 
			WHERE [Email] = @email
			AND [Password] = HASHBYTES('SHA2_512', [dbo].[ECX_GetPreSalt]() + @password + [dbo].[ECX_GetPostSalt]())
			AND [IsActive] = 1
			)
	)
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
		AND U.[Password] = HASHBYTES('SHA2_512', [dbo].[ECX_GetPreSalt]() + @password + [dbo].[ECX_GetPostSalt]());

		RETURN 0
	
	END

END