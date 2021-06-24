CREATE PROCEDURE [dbo].[ECX_Update_User]
	@id INT,
	@nickname NVARCHAR(20),
	@lastname NVARCHAR(50),
	@firstname NVARCHAR(50)
AS
BEGIN

		UPDATE [User] SET
			[Nickname]= @nickname,
			[Lastname] = @lastname,
			[Firstname] = @firstname
		WHERE [ID] = @id;
		
END