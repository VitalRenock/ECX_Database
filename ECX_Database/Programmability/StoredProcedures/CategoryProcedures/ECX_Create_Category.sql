CREATE PROCEDURE [dbo].[ECX_Create_Category]
	@name NVARCHAR(20),
	@color NVARCHAR(20),
	@short NVARCHAR(6),
	@description NVARCHAR(MAX)
AS
BEGIN

	INSERT INTO [Category]([Name], [Color], [Short], [Description]) 
	OUTPUT inserted.[ID]
	VALUES
	(
		@name, 
		@color, 
		@short, 
		@description 
	);

END