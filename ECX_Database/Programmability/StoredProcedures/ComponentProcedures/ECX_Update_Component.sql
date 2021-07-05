CREATE PROCEDURE [dbo].[ECX_Update_Component]
	@component_id INT,
	@title NVARCHAR(200),
	@type NVARCHAR(20),
	@content NVARCHAR(MAX),
	@description NVARCHAR(MAX),
	@url NVARCHAR(200),
	@category_ID INT
AS
BEGIN
	
	UPDATE [Component] 
	SET
		[Title] = @title,
		[Type] = @type,
		[Content] = @content,
		[Description] = @description,
		[Url] = @url,
		[Category_ID] = @category_ID
	WHERE [ID] = @component_id;

END