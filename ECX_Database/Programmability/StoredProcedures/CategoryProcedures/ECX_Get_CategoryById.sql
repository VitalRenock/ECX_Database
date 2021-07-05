CREATE PROCEDURE [dbo].[ECX_Get_CategoryById]
	@category_id INT
AS
BEGIN

	IF(EXISTS(SELECT * FROM [Category] WHERE [ID] = @category_id))
	BEGIN

		SELECT
			[ID],
			[Name],
			[Color],
			[Short],
			[Description]
		FROM [Category] 
		WHERE [ID] = @category_id
		AND [Enable] = 1;

	END

END