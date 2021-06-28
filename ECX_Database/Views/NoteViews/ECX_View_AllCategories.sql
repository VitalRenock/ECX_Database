CREATE VIEW [dbo].[ECX_View_AllCategories]
AS
	SELECT DISTINCT
		[Category]
	FROM [Note]
	WHERE [Enable] = 1
