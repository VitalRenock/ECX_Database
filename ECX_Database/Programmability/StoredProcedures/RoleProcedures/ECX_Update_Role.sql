CREATE PROCEDURE [dbo].[ECX_Update_Role]
	@id INT,
	@name NVARCHAR(20),
	@color NVARCHAR(20),
	@description NVARCHAR(200)
AS
BEGIN

	IF(EXISTS(SELECT * FROM [Role] WHERE [ID] = @id))
	UPDATE [Role] SET 
		[Name] = @name,
		[Color] = @color, 
		[Description] = @description 
	WHERE [ID] = @id;

END