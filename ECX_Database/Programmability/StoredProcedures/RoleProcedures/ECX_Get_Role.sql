CREATE PROCEDURE [dbo].[ECX_Get_Role]
	@role_id INT
AS
BEGIN

	IF(EXISTS(SELECT * FROM [Role] WHERE [ID] = @role_id AND [Enable] = 1))
	SELECT
		[ID],
		[Name],
		[Color],
		[Description]
	FROM [Role]
	WHERE [ID] = @role_id
	AND [Enable] = 1;

END