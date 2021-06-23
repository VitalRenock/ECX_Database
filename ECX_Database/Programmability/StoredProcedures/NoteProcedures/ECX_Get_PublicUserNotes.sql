CREATE PROCEDURE [dbo].[ECX_Get_PublicUserNotes]
	@user_id int
AS
BEGIN

	IF(EXISTS(SELECT * FROM [Note] WHERE [User_ID] = @user_id))
	BEGIN

		SELECT * 
		FROM [Note] 
		WHERE [User_ID] = @user_id
		AND [Public] = 1;

	END
END