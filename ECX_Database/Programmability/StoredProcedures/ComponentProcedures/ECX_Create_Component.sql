CREATE PROCEDURE [dbo].[ECX_Create_Component]
	@title NVARCHAR(200),
	@type NVARCHAR(20),
	@content NVARCHAR(MAX),
	@description NVARCHAR(MAX),
	@url NVARCHAR(200),
	@public BIT,
	@user_ID INT,
	@category_ID INT
AS
BEGIN
	
	INSERT INTO [Component]([Title], [Type], [Content], [Description], [Url], [Public], [User_ID], [Category_ID]) 
	OUTPUT inserted.[ID]
	VALUES
	(
		@title,
		@type,
		@content, 
		@description, 
		@url, 
		@public, 
		@user_ID,
		@category_ID
	);

END