CREATE VIEW [dbo].[ECX_GetAll_Categories]
AS
	SELECT
		[ID],
		[Name],
		[Color],
		[Short],
		[Description]
	FROM [Category] 
	WHERE [Enable] = 1;