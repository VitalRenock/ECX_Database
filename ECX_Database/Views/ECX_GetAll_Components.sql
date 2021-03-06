CREATE VIEW [dbo].[ECX_GetAll_Components]
AS 
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
	WHERE [Enable] = 1;