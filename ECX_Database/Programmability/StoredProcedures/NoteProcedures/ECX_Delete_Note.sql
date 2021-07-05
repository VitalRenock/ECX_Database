CREATE PROCEDURE [dbo].[ECX_Delete_Note]
	@note_id INT
AS
BEGIN

	IF(EXISTS(SELECT * FROM [Note] WHERE [ID] = @note_id))
	BEGIN

		DELETE FROM [Note] WHERE [ID] = @note_id;

	END

END