CREATE PROCEDURE [dbo].[ECX_Update_Note]
	@id INT,
	@title NVARCHAR(200),
	@category_ID INT
AS
BEGIN
	
	IF(EXISTS(SELECT * FROM [Note] WHERE [ID] = @id))
	BEGIN

		UPDATE [Note] 
		SET 
			[Title] = @title,
			[Category_ID] = @category_ID
		WHERE [ID] = @id;

	END

END