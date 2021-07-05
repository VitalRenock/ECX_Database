CREATE PROCEDURE [dbo].[ECX_GetAll_PublicNotes_ByUser]
	@user_id INT
AS
BEGIN

	IF(EXISTS(SELECT * FROM [Note] WHERE [User_ID] = @user_id))
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
		WHERE [User_ID] = @user_id
		AND [Public] = 1
		AND [Enable] = 1;

	END

END