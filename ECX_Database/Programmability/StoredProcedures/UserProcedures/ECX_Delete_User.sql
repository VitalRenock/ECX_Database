CREATE PROCEDURE [dbo].[ECX_Delete_User]
	@id int
AS
BEGIN
	
	DELETE FROM [User] WHERE [ID] = @id;

	-- 0 = False / 1 = True
	RETURN 1;

END