CREATE VIEW [dbo].[ECX_View_AllCategories]
AS
	SELECT
		[ID],
		[Name],
		[Color],
		[Short],
		[Description]
	FROM [Category] 
	WHERE [Enable] = 1;