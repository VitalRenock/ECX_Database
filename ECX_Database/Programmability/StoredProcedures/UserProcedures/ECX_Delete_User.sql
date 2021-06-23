CREATE PROCEDURE [dbo].[ECX_Delete_User]
	@id int
AS
BEGIN
	
	DELETE FROM [User] WHERE [ID] = @id;

END