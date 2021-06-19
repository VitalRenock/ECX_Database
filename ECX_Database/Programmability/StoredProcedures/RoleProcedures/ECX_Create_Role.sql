CREATE PROCEDURE [dbo].[ECX_Create_Role]
	@name NVARCHAR(20),
	@color NVARCHAR(20),
	@description NVARCHAR(200),
	@responseMessage NVARCHAR(250) OUTPUT
AS
BEGIN

	BEGIN TRY

		INSERT INTO [Role]([Name], [Color], [Description]) VALUES
		(@name, @color, @description);

		SET @responseMessage = 'Succes';
	
	END TRY

	BEGIN CATCH

		SET @responseMessage = ERROR_MESSAGE();

	END CATCH

END