CREATE VIEW [dbo].[ECX_GetAll_Roles]
AS
	SELECT
		[ID],
		[Name],
		[Color],
		[Description]
	FROM [Role]
	WHERE [Enable] = 1