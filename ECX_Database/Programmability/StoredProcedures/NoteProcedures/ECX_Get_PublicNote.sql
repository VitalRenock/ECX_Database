CREATE PROCEDURE [dbo].[ECX_Get_PublicNote]
	@id INT
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
	WHERE [ID] = @id
	AND [Public] = 1
	AND [Enable] = 1

END