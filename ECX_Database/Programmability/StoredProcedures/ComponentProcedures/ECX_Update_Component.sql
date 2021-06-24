CREATE PROCEDURE [dbo].[ECX_Update_Component]
	@component_id INT,
	@title NVARCHAR(200),
	@content NVARCHAR(MAX),
	@short NVARCHAR(20),
	@description NVARCHAR(200),
	@url NVARCHAR(200)
AS
BEGIN
	
	UPDATE [Component] 
	SET
		[Title] = @title,
		[Content] = @content,
		[Short] = @short,
		[Description] = @description,
		[Url] = @url
	WHERE [ID] = @component_id;

END