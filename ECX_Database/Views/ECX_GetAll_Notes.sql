CREATE VIEW [dbo].[ECX_GetAll_Notes]
AS 
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
	WHERE [Enable] = 1