CREATE PROCEDURE [dbo].[ECX_Register_User]
	@email NVARCHAR(384),
	@password NVARCHAR(20),
	@nickname NVARCHAR(20),
	@lastname NVARCHAR(50),
	@firstname NVARCHAR(50),
	@role_ID NVARCHAR(20)
AS
BEGIN

	INSERT INTO [User]([Email], [Password], [Nickname], [Lastname], [Firstname], [Role_ID]) VALUES 
	(
		@email, 
		HASHBYTES('SHA2_512', [dbo].[ECX_GetPreSalt]() + @password + [dbo].[ECX_GetPostSalt]()), 
		@nickname, 
		@lastname, 
		@firstname,
		@role_ID
	);
	RETURN 0;

END