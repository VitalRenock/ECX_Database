CREATE PROCEDURE [dbo].[ECX_Create_Role]
	@name NVARCHAR(20),
	@color NVARCHAR(20),
	@description NVARCHAR(200)
AS
BEGIN

	INSERT INTO [Role]([Name], [Color], [Description]) VALUES
	(@name, @color, @description);

END