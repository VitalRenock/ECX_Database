CREATE PROCEDURE [dbo].[ECX_Get_AllUserNotes]
	@user_id int
AS
BEGIN

	IF(EXISTS(SELECT * FROM [Note] WHERE [User_ID] = @user_id))
	BEGIN

		SELECT * FROM [Note] WHERE [User_ID] = @user_id;

	END
END