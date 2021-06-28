CREATE VIEW [dbo].[ECX_View_AllNotes]
AS 
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
	WHERE [Enable] = 1