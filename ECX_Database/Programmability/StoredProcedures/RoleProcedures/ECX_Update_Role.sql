CREATE PROCEDURE [dbo].[ECX_Update_Role]
	@id INT,
	@name NVARCHAR(20),
	@color NVARCHAR(20),
	@description NVARCHAR(200),
	@responseMessage NVARCHAR(250) OUTPUT
AS
BEGIN

	BEGIN TRY

		UPDATE [Role] SET 
			[Name] = @name,
			[Color] = @color, 
			[Description] = @description 
		WHERE [ID] = @id;

		SET @responseMessage = 'Succes';

	END TRY

	BEGIN CATCH

		SET @responseMessage = ERROR_MESSAGE();

	END CATCH

END