CREATE PROCEDURE [dbo].[ECX_GetAll_PublicNotes_ByCategory]
	@category_id INT
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
	WHERE [Category_ID] = @category_id
	AND [Public] = 1
	AND [Enable] = 1

END