CREATE PROCEDURE [dbo].[ECX_Create_Component]
	@title NVARCHAR(200),
	@content NVARCHAR(MAX),
	@short NVARCHAR(20),
	@description NVARCHAR(200),
	@url NVARCHAR(200),
	@public BIT,
	@user_ID INT
AS
BEGIN
	
	INSERT INTO [Component]([Title], [Content], [Short], [Description], [Url], [Public], [User_ID]) 
	OUTPUT inserted.[ID]
	VALUES
	(
		@title, 
		@content, 
		@short, 
		@description, 
		@url, 
		@public, 
		@user_ID
	);

END