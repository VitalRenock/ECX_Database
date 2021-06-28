CREATE PROCEDURE [dbo].[ECX_Get_PublicUserNotes]
	@user_id int
AS
BEGIN

	IF(EXISTS(SELECT * FROM [Note] WHERE [User_ID] = @user_id))
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
		WHERE [User_ID] = @user_id
		AND [Public] = 1
		AND [Enable] = 1;

	END

END