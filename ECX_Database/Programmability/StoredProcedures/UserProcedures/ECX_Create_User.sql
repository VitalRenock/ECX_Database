CREATE PROCEDURE [dbo].[ECX_Create_User]
	@email NVARCHAR(384),
	@password NVARCHAR(20),
	@nickName NVARCHAR(20),
	@lastName NVARCHAR(50),
	@firstName NVARCHAR(50),
	@role_ID NVARCHAR(20)
AS
BEGIN

	INSERT INTO [User]([Email], [Password], [Nickname], [Lastname], [Firstname], [Role_ID] ) VALUES 
	(
		@email, 
		HASHBYTES('SHA2_512', [dbo].[ECX_GetPreSalt]() + @password + [dbo].[ECX_GetPostSalt]()), 
		@nickName, 
		@lastName, 
		@firstName, 
		@role_ID
	);
	RETURN 0;

END