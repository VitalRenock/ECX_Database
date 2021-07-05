CREATE PROCEDURE [dbo].[ECX_Get_Note_ById]
	@note_id INT
AS
BEGIN

	IF(EXISTS(SELECT * FROM [Note] WHERE [ID] = @note_id))
	BEGIN

		SELECT
			[ID],
			[Title],
			[Public],
			[StateReview],
			[CommentaryReview],
			[ParentNote_ID],
			[User_ID],
			[Category_ID]
		FROM [Note] 
		WHERE [ID] = @note_id
		AND [Enable] = 1;

	END

END