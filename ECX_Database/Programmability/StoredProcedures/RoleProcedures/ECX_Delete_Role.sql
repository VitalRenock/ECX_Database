CREATE PROCEDURE [dbo].[ECX_Delete_Role]
	@role_id INT
AS
BEGIN
	
	IF(EXISTS(SELECT * FROM [Role] WHERE [ID] = @role_id))
	BEGIN
		DELETE FROM [Role]
		WHERE [ID] = @role_id
	END

END