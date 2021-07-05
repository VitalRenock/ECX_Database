CREATE PROCEDURE [dbo].[ECX_Get_PublicNote_ById]
	@note_id INT
AS
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
	AND [Public] = 1
	AND [Enable] = 1

END