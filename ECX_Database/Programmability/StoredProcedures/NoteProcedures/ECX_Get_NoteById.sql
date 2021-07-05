CREATE PROCEDURE [dbo].[ECX_Get_NoteById]
	@note_id INT
AS
BEGIN

	IF(EXISTS(SELECT * FROM [Note] WHERE [ID] = @note_id))
	BEGIN

		SELECT
			[ID],
			[Title],
			[Category],
			[Public],
			[StateReview],
			[CommentaryReview],
			[ParentNote_ID],
			[User_ID]
		FROM [Note] 
		WHERE [ID] = @note_id
		AND [Enable] = 1;

	END

END