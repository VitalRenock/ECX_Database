CREATE PROCEDURE [dbo].[ECX_Update_Note]
	@id INT,
	@title NVARCHAR(200)
AS
BEGIN
	
	IF(EXISTS(SELECT * FROM [Note] WHERE [ID] = @id))
	BEGIN

		UPDATE [Note] 
		SET [Title] = @title 
		WHERE [ID] = @id;

	END

END