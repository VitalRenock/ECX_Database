CREATE PROCEDURE [dbo].[ECX_Get_AllUserNotes]
	@user_id int
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
			[User_ID]
		FROM [Note] 
		WHERE [User_ID] = @user_id
		AND [Enable] = 1;

	END

END