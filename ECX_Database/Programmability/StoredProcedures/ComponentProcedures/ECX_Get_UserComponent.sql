CREATE PROCEDURE [dbo].[ECX_Get_UserComponent]
	@compo_id INT
AS
BEGIN

	IF(EXISTS(SELECT * FROM [Component] WHERE [ID] = @compo_id))
	BEGIN

		SELECT
			[ID],
			[Title],
			[Content],
			[Short],
			[Description],
			[Url],
			[Public],
			[User_ID]
		FROM [Component] 
		WHERE [ID] = @compo_id
		AND [Enable] = 1;

	END

END