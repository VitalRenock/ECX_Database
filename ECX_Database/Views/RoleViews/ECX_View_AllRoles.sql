CREATE VIEW [dbo].[ECX_View_AllRoles]
AS
	SELECT
		[ID],
		[Name],
		[Color],
		[Description]
	FROM [Role]
	WHERE [Enable] = 1