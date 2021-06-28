CREATE PROCEDURE [dbo].[ECX_Get_PublicNotesByCategory]
	@category NVARCHAR(20)
AS
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
	WHERE [Category] = @category
	AND [Public] = 1
	AND [Enable] = 1

END