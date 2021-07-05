CREATE PROCEDURE [dbo].[ECX_Get_Component_ById]
	@compo_id INT
AS
BEGIN

	IF(EXISTS(SELECT * FROM [Component] WHERE [ID] = @compo_id))
	BEGIN

		SELECT
			[ID],
			[Title],
			[Content],
			[Description],
			[Url],
			[Public],
			[User_ID],
			[Category_ID]
		FROM [Component] 
		WHERE [ID] = @compo_id
		AND [Enable] = 1;

	END

END