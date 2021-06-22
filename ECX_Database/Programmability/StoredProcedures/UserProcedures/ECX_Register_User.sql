CREATE PROCEDURE [dbo].[ECX_Register_User]
	@email NVARCHAR(384),
	@password NVARCHAR(20),
	@nickname NVARCHAR(20),
	@lastname NVARCHAR(50),
	@firstname NVARCHAR(50)
AS
BEGIN

	INSERT INTO [User]([Email], [Password], [Nickname], [Lastname], [Firstname], [Role_ID]) VALUES 
	(
		@email, 
		HASHBYTES('SHA2_512', [dbo].[ECX_GetPreSalt]() + @password + [dbo].[ECX_GetPostSalt]()), 
		@nickname, 
		@lastname, 
		@firstname,
		-- On va rechercher l'ID du rôle de "Rédacteur" pour l'attribuer par défaut à un nouveau "User".
		(SELECT [ID] FROM [Role] WHERE [Name] = 'Rédacteur')
	);
	RETURN 0;

END