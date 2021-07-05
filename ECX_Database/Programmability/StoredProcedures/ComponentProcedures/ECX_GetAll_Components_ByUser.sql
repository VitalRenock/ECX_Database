CREATE PROCEDURE [dbo].[ECX_GetAll_Components_ByUser]
	@user_id INT
AS
BEGIN

	IF(EXISTS(SELECT * FROM [Component] WHERE [User_ID] = @user_id))
	BEGIN

		SELECT
			[ID],
			[Title],
			[Type],
			[Content],
			[Description],
			[Url],
			[Public],
			[User_ID],
			[Category_ID]
		FROM [Component] 
		WHERE [User_ID] = @user_id
		AND [Enable] = 1;

	END

END