CREATE PROCEDURE [dbo].[ECX_Update_Category]
	@id INT,
	@name NVARCHAR(20),
	@color NVARCHAR(20),
	@short NVARCHAR(6),
	@description NVARCHAR(MAX)
AS
BEGIN
	
	IF(EXISTS(SELECT * FROM [Category] WHERE [ID] = @id))
	BEGIN

		UPDATE [Category] 
		SET 
			[Name] = @name,
			[Color] = @color,
			[Short] = @short,
			[Description] = @description
		WHERE [ID] = @id;

	END

END